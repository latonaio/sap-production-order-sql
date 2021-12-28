CREATE TABLE `sap_production_order_item_data`
(
  `ManufacturingOrder`               varchar(12) NOT NULL,
  `ManufacturingOrderItem`           varchar(4) NOT NULL,
  `ManufacturingOrderCategory`       varchar(2) DEFAULT NULL,
  `ManufacturingOrderType`           varchar(4) DEFAULT NULL,
  `IsCompletelyDelivered`            tinyint(1) DEFAULT NULL,
  `Material`                         varchar(40) DEFAULT NULL,
  `ProductionPlant`                  varchar(4) DEFAULT NULL,
  `Plant`                            varchar(4) DEFAULT NULL,
  `MRPArea`                          varchar(10) DEFAULT NULL,
  `QuantityDistributionKey`          varchar(4) DEFAULT NULL,
  `MaterialGoodsReceiptDuration`     varchar(4) DEFAULT NULL,
  `StorageLocation`                  varchar(4) DEFAULT NULL,
  `Batch`                            varchar(10) DEFAULT NULL,
  `InventoryUsabilityCode`           varchar(1) DEFAULT NULL,
  `GoodsRecipientName`               varchar(12) DEFAULT NULL,
  `UnloadingPointName`               varchar(25) DEFAULT NULL,
  `MfgOrderItemPlndDeliveryDate`     varchar(80) DEFAULT NULL,
  `MfgOrderItemActualDeliveryDate`   varchar(80) DEFAULT NULL,
  `ProductionUnit`                   varchar(3) DEFAULT NULL,
  `MfgOrderItemPlannedTotalQty`      varchar(15) DEFAULT NULL,
  `MfgOrderItemPlannedScrapQty`      varchar(15) DEFAULT NULL,
  `MfgOrderItemGoodsReceiptQty`      varchar(15) DEFAULT NULL,
  `MfgOrderItemActualDeviationQty`   varchar(15) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`, `ManufacturingOrderItem`),
    CONSTRAINT `SAPProductionOrderItemData_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap_production_order_general_data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
