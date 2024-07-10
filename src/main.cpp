#include <cpprest/http_listener.h>
#include <cpprest/json.h>
#include <mongocxx/client.hpp>
#include <mongocxx/instance.hpp>
#include <mongocxx/uri.hpp>
#include <bsoncxx/builder/stream/document.hpp>
#include <bsoncxx/json.hpp>
#include <iostream>

using namespace web;
using namespace web::http;
using namespace web::http::experimental::listener;

// MongoDB instance and client
mongocxx::instance instance{};
std::unique_ptr<mongocxx::client> mongo_client;

mongocxx::client& get_mongo_client() {
    if (!mongo_client) {
        mongocxx::uri uri("mongodb://localhost:27017");
        mongo_client = std::make_unique<mongocxx::client>(uri);
    }
    return *mongo_client;
}


void handle_get(http_request request) {
    std::cout << "GET request received at path: " << request.relative_uri().path() << std::endl;

    // Get MongoDB client and collection
    auto& client = get_mongo_client();
    auto db = client["BINANCE"];
    auto collection = db["binance_btcusdt_1m"];

    // Fetch data from MongoDB collection
    auto cursor = collection.find({});
    json::value response_data;
    json::value data_array = json::value::array();

    int i = 0;
    for (auto&& doc : cursor) {
        std::string json_data = bsoncxx::to_json(doc);
        data_array[i++] = json::value::parse(json_data);
    }

    response_data[U("data")] = data_array;

    request.reply(status_codes::OK, response_data);
}


int main() {
    uri_builder uri(U("http://localhost:8080"));
    auto addr = uri.to_uri().to_string();
    http_listener listener(addr);
    listener.support(methods::GET, handle_get);

    try {
        listener
            .open()
            .then([&listener]() { std::cout << "Starting to listen at: " << listener.uri().to_string() << std::endl; })
            .wait();

        std::string line;
        std::getline(std::cin, line); // Wait for user input to close the server
    } catch (const std::exception &e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}
