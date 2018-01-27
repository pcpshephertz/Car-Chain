/**
    @author : Prakash Pandey
    @github : github.com/prakashpandey
    @date : 27-01-2017
    @info : this file is responsible to store information related to vehicle services
**/
pragma solidity ^0.4.18;

contract vehicleService {

    //Date structs
    struct Date {
        uint16 year;
        uint8 month;
        uint8 day;
    }

    //Add different types of service here
    enum serviceTypes {
        FULL_SERVICE,
        HALF_SERVICE
    }

    //this struct contains vechiles service meta data, when vechile service was done, serviceType, etc
    //all future vechile properties will be here.
    struct serviceMetaInfo {
        Date dateTime;
        uint vin;
        string owner;
        serviceTypes typeOfService;
        uint16 distanceCovered;
        //Remark by service provider. If any parts were changed or not or other info.
        string remark;
    }

    Date serviceDate;
    serviceMetaInfo vInfo;

    function vehicleService(uint vinNumber, string ownerName, unit16 distance, string remark, uint16 y, uint8 m, uint8 d) public {
        serviceDate = Date(y, m, d);
        vInfo = serviceMetaInfo(serviceDate, vinNumber, ownerName, typeOfService.FULL_SERVICE, distance, remark);
    }

    function getRemarks() public returns(strings) {

    }

}