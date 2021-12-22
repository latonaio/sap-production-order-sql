CREATE TABLE `sap-production-order-bom-data`
(
    `ManufacturingOrder`    varchar(12) DEFAULT NULL,
    `BillOfMaterialItemNumber` varchar(4) DEFAULT NULL,
    `Component`              varchar(40) DEFAULT NULL,
    `Plant`                 varchar(4) DEFAULT NULL,
    `BaseUnit`              varchar(3) DEFAULT NULL,
    `RequiredQuantity`      varchar(13) DEFAULT NULL,
    `MaterialCompOriginalQuantity` varchar(13) DEFAULT NULL,
    `Reservation`           varchar(10) DEFAULT NULL,
    `ReservationItem`       varchar(10) DEFAULT NULL,
    `QuantityIsFixed`       varchar(13) DEFAULT NULL,
    `ComponentScrapInPercent` varchar(5) DEFAULT NULL,
    `WithdrawnQuantity`     varchar(13) DEFAULT NULL,
    `ConfirmedAvailableQuantity` varchar(13) DEFAULT NULL,
    `WithdrawnQuantityAmount` varchar(11) DEFAULT NULL,
    `OrderInternalBillOfOperations` varchar(8) DEFAULT NULL,
    `MatlCompRequirementDate` date DEFAULT NULL,
    `ReservationIsFinallyIssued` tinyint(1) DEFAULT NULL,
    `MatlCompIsMarkedForBackflush` tinyint(1) DEFAULT NULL,
    `StorageLocation`       varchar(4) DEFAULT NULL,
    `GoodsMovementType`     varchar(3) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`, `BillOfMaterialItemNumber`),
    CONSTRAINT `ManufacturingOrder_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap-production-order-general-data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
