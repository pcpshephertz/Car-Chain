/**
    @author : Prakash Pandey
    @github : github.com/prakashpandey
    @date : 27-01-2017
    @info : this file is responsible to store information related to vehicle
**/
pragma solidity ^0.4.18;

contract vehicle {

    //Date structs
    struct Date {
        uint16 year;
        uint8 month;
        uint8 day;
    }

    //this struct contains vechiles meta data, when vechile was bought, owner, etc
    //all future vechile properties will be here
    struct vehicleMetaInfo {
        Date dateTime;
        uint vin;
        string owner;
    }

    Date purchaseDate;
    vehicleMetaInfo vInfo;

    function vehicle(uint vinNumber, string ownerName, uint16 y, uint8 m, uint8 d) public {
        purchaseDate = Date(y, m, d);
        vInfo = vehicleMetaInfo(purchaseDate, vinNumber, ownerName);
    }
}