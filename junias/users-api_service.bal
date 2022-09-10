import ballerina/http;
import ballerina/io;


User[] allusers=[];

listener http:Listener ep0 = new (8080, config = {host: "localhost"});

service /vle/api/v1 on ep0{
    resource function get users() returns User[]|http:Response {
        io:println("handing GET request to /vle/api/v1/users");
        return allusers;
    }
    resource function post users(@http:Payload User payload) returns typedesc<CreatedInlineResponse201> {
    io:print((payload.toString()));
    
    io:print("handing POST request to the /vle/api/v1/users");
    allusers.push()
    InlineResponse201 inlineResponse={userid: "1"};
    return CreatedInlineResponse201;
    }
;