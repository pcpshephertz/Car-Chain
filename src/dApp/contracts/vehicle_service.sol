/**
    @author : Prakash Pandey
    @github : github.com/prakashpandey
    @date : 27-01-2017
    @info : this file is responsible to store information related to vehicle services
**/
pragma solidity ^0.4.18;

contract vehicleService {

    //Date struct
    struct Date {
        uint16 year;
        uint8 month;
        uint8 day;
    }

    //this struct contains vechiles service meta data, when vechile service was done, serviceType, etc
    //all future vechile properties will be here.
    struct serviceMetaInfo {
        Date dateTime;
        uint vin;
        string owner;
        string typeOfService;
        uint16 distanceCovered;
        //Remark by service provider. If any parts were changed or not or other info.
        string remark;
    }

    Date serviceDate;
    serviceMetaInfo vInfo;

    mapping(uint => serviceMetaInfo) serviceList;

    function addVehicleServiceDetails(uint serviceId, uint vinNumber, string ownerName, uint16 distance, string remark, string typeOfService, uint16 y, uint8 m, uint8 d) public {
        serviceDate = Date(y, m, d);
        vInfo = serviceMetaInfo(serviceDate, vinNumber, ownerName, typeOfService, distance, remark);
        serviceList[serviceId] = vInfo;
    }

    function getServiceMetaInfo(uint serviceId) public constant returns(uint, uint, string, uint16, string) {
        return(serviceId, serviceList[serviceId].vin,
        serviceList[serviceId].owner, serviceList[serviceId].distanceCovered,
        serviceList[serviceId].remark);
    }

    function getServicedate(uint serviceId) public constant returns (uint16, uint8, uint8) {
        return (serviceList[serviceId].dateTime.year,
        serviceList[serviceId].dateTime.month, serviceList[serviceId].dateTime.day);
    }

}