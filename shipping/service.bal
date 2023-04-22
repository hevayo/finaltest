import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "shipping",
    id: "shipping-ec22add5-02f8-4cb9-ae09-7bec07162b5c"
}
service / on new http:Listener(9090) {

    @display {
        label: "Tracking",
        id: "Tracking-9aad1a38-4b2c-4363-99ba-70ed160214ba"
    }
    http:Client trackingClient;

    function init() returns error? {
        self.trackingClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empt dsdy!");
        }
        return "Hello, " + name;
    }
}
