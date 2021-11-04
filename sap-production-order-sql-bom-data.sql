CREATE TABLE `sap-production-order-bom-data`
(
    `ManufacturingOrder`    varchar(12) DEFAULT NULL,
    `BillOfMaterialItemNumber` varchar(4) DEFAULT NULL,
    `Material`              varchar(40) DEFAULT NULL,
    `Plant`                 varchar(4) DEFAULT NULL,
    `BaseUnit`              varchar(3) DEFAULT NULL,
    `RequiredQuantity`      float(13) DEFAULT NULL,
    `MaterialCompOriginalQuantity` float(13) DEFAULT NULL,
    `Reservation`           int(10) DEFAULT NULL,
    `ReservationItem`       int(10) DEFAULT NULL,
    `QuantityIsFixed`       float(13) DEFAULT NULL,
    `ComponentScrapInPercent` float(5) DEFAULT NULL,
    `WithdrawnQuantity`     float(13) DEFAULT NULL,
    `ConfirmedAvailableQuantity` float(13) DEFAULT NULL,
    `WithdrawnQuantityAmount` float(11) DEFAULT NULL,
    `OrderInternalBillOfOperations` varchar(8) DEFAULT NULL,
    `MatlCompRequirementDate` date DEFAULT NULL,
    `ReservationIsFinallyIssued` varchar(1) DEFAULT NULL,
    `MatlCompIsMarkedForBackflush` varchar(1) DEFAULT NULL,
    `StorageLocation`       varchar(4) DEFAULT NULL,
    `GoodsMovementType`     varchar(3) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`, `BillOfMaterialItemNumber`)
    CONSTRAINT `ManufacturingOrder_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap-production-order-general-data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
