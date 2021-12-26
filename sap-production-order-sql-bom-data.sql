CREATE TABLE `sap_production_order_bom_data`
(
    `ManufacturingOrder`           varchar(12) NOT NULL,
    `BillOfMaterialItemNumber`     varchar(4) NOT NULL,
    `Component`                    varchar(40) DEFAULT NULL,
    `Plant`                        varchar(4) DEFAULT NULL,
    `BaseUnit`                     varchar(3) DEFAULT NULL,
    `RequiredQuantity`             varchar(13) DEFAULT NULL,
    `MaterialCompOriginalQuantity` varchar(13) DEFAULT NULL,
    `Reservation`                  varchar(10) DEFAULT NULL,
    `ReservationItem`              varchar(10) DEFAULT NULL,
    `QuantityIsFixed`              varchar(13) DEFAULT NULL,
    `ComponentScrapInPercent`      varchar(5) DEFAULT NULL,
    `WithdrawnQuantity`            varchar(13) DEFAULT NULL,
    `ConfirmedAvailableQuantity`   varchar(13) DEFAULT NULL,
    `WithdrawnQuantityAmount`      varchar(11) DEFAULT NULL,
    `OrderInternalBillOfOperations` varchar(8) DEFAULT NULL,
    `MatlCompRequirementDate`      varchar(80) DEFAULT NULL,
    `ReservationIsFinallyIssued`   tinyint(1) DEFAULT NULL,
    `MatlCompIsMarkedForBackflush` tinyint(1) DEFAULT NULL,
    `StorageLocation`              varchar(4) DEFAULT NULL,
    `GoodsMovementType`            varchar(3) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`, `BillOfMaterialItemNumber`),
    CONSTRAINT `SAPProductionOrderBomData_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap_production_order_general_data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
