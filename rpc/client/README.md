# Client

Sample Application to test sending RPC requests in Railway.

Run 
```ruby
Client::Adder.request()
```
This should 
* Return `3`
* Persist the published message in the databse under RailwayIpc::PublishedMessage
* Persist the consumed message in the databse under RailwayIpc::ConsumedMessage
