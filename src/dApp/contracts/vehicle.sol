/**
    @author : Prakash Pandey
    @github : github.com/prakashpandey
    @date : 27-01-2017
    @info : this file is responsible to store information related to vehicle
**/
pragma solidity ^0.4.18;

contract vehicle {

    //Date struct
    struct Date {
        uint16 year;
        uint8 month;
        uint8 day;
    }

    //this struct contains vechiles meta data, when vechile was bought, owner, etc
    //all future vechile properties will be here
    struct vehicleMetaInfo {
        Date date;
        string owner;
    }

    Date date;
    vehicleMetaInfo vInfo;

    //vin is considered unique to every vehicle
    mapping(uint => vehicleMetaInfo) vehicleList;

    /**
     * Add new vehicles to blockchain
    **/
    function registerVehicle(uint vinNumber, string ownerName, uint16 y, uint8 m, uint8 d) public {
        date = Date(y, m, d);
        vehicleList[vinNumber].owner = ownerName;
        vehicleList[vinNumber].date = date;
    }

    /**
    * get vehicle information based on vin number
    **/
    function getVehileInfo(uint vin) public constant returns(uint, string, uint16, uint8, uint8) {
        return (vin, vehicleList[vin].owner, vehicleList[vin].date.year,
        vehicleList[vin].date.month, vehicleList[vin].date.day);
    }
}