import ballerina/http;

listener http:Listener ep0 = new (9090, config = {host: "localhost"});

service / on ep0 {
    # Description
    #
    # + lovtype - parameter description 
    # + return - returns can be any of following types
    # InternalServerErrorErrorDetail (InternalServerError)
    # http:Response (Any Response)
    resource function get lov/lovs/[string lovtype]() returns InternalServerErrorErrorDetail|http:Response {
    }
    # Description
    #
    # + return - returns can be any of following types
    # Countries (Ok)
    # InternalServerErrorErrorDetail (InternalServerError)

    isolated resource function get lov/countries() returns Countries|InternalServerErrorErrorDetail {

    }

    isolated resource function get lov/locations() returns Locations|InternalServerErrorErrorDetail {

    }

    isolated resource function get healthz() returns http:Ok {
        return http:OK;
    }
}
