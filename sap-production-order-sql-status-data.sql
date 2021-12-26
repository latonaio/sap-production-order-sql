CREATE TABLE `sap_production_order_status_data`
(
    `ManufacturingOrder`    varchar(12) NOT NULL,
    `StatusCode`            varchar(40) DEFAULT NULL,
    `IsUserStatus`          tinyint(1) DEFAULT NULL,
    `StatusShortName`       varchar(40) DEFAULT NULL,
    `StatusName`            varchar(40) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`),
    CONSTRAINT `SAPProductionOrderStatusData_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap_production_order_general_data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
