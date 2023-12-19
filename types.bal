import ballerina/http;

public type InternalServerErrorErrorDetail record {|
    *http:InternalServerError;
    ErrorDetail body;
|};

public type ErrorDetail record {
    string message;
};

public type CountryArray record {
    Country[] country;
};

public type Countries record {
    CountryArray countries;
};

public type LocationArray record {
    Location[] location;
};

public type Locations record {
    LocationArray locations;
};

public type Country record {
    string? bessemerCd;
    string? regionCommissionRate;
    string? isoCurrencyCd;
    string? riskLevel;
    string? riskRank;
    string? regionName;
    string? fipsCd;
    string? commisionRate;
    string? regionCd;
    string? currencyName;
    string? name;
    string? isoCd;
    string? taxCd;
    string? euMember;
};

type CountryDO record {
    string? country_name;
    string? iso_country_code;
    string? fips_country_code;
    string? bessemer_country_code;
    string? tax_country_codel
    string? currecy_name;
    string? iso_currency_code;
    string? risk_rank;
    string? risk_level;
    string? country_commission_rate;
    string? region_code;
    string? region_name;
    string? region_commission_rate;
    string? eu_member;    
};

public type Location record {
    string? locationName;
    string? depoId;
    string? locationId;
    string? locationIdGp;
    string? locationCode;
    string? depoStorageAcctNo;
};

public type LocationDO record {
    string? location_id;
    string? location_code;
    string? location_name;
    string? location_id_gp;
    string? depo_id;
    string? depo_storage_acct_no;
};
