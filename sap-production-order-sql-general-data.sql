CREATE TABLE `sap_production_order_general_data`
(
    `ManufacturingOrder`              varchar(12) NOT NULL,
    `ManufacturingOrderType`          varchar(4) DEFAULT NULL,
    `Material`                        varchar(40) DEFAULT NULL,
    `ProductionPlant`                 varchar(4) DEFAULT NULL,
    `MfgOrderItemPlannedTotalQty`     varchar(13) DEFAULT NULL,
    `MfgOrderItemPlannedScrapQty`     varchar(13) DEFAULT NULL,
    `MfgOrderItemGoodsReceiptQty`     varchar(13) DEFAULT NULL,
    `MfgOrderItemActualDeviationQty`  varchar(13) DEFAULT NULL,
    `MfgOrderItemPlndDeliveryDate`    varchar(80) DEFAULT NULL,
    `MfgOrderItemActualDeliveryDate`  varchar(80) DEFAULT NULL,
    `IsCompletelyDelivered`           tinyint(1) DEFAULT NULL,
    `MRPArea`                         varchar(10) DEFAULT NULL,
    `StorageLocation`                 varchar(4) DEFAULT NULL,
    `Batch`                           varchar(10) DEFAULT NULL,
    `ProductionUnit`                  varchar(3) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
