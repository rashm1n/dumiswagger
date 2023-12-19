import ballerina/http;

listener http:Listener ep0 = new (9090, config = {host: "localhost"});

service / on ep0 {

    isolated resource function get lov/countries() returns Countries|InternalServerErrorErrorDetail {
        Country c1 = {name:"India", "code":"IN"};
        Country c2 = {name:"Sri Lanka", "code":"SL"};
        Country[] cs = [c1, c2];
        CountryArray cA = {country: cs};
        Countries country = {countries:cA};
        return country;
    }  

    isolated resource function get lov/locations() returns Locations {
        Location l1 = {"name":"Colombo", "code":"CMB"};
        Location l2 = {"name":"Kandy", "code":"KDY"};
        Location[] ls = [l1, l2];
        LocationArray lA = {location: ls};
        Locations location = {locations:lA};
        return location;
    }

    isolated resource function get healthz() returns http:Ok {
        return http:OK;
    };
    
}
