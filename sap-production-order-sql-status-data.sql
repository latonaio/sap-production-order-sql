CREATE TABLE `sap-production-order-status-data`
(
    `ManufacturingOrder`    varchar(12) DEFAULT NULL,
    `StatusCode`            varchar(40) DEFAULT NULL,
    `IsUserStatus`          varchar(1) DEFAULT NULL,
    `StatusShortName`       varchar(40) DEFAULT NULL,
    `StatusName`            varchar(40) DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`),
    CONSTRAINT `ManufacturingOrder_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap-production-order-general-data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
