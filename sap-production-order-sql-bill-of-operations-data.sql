CREATE TABLE `sap-production-order-bill-of-operations-data`
(
    `ManufacturingOrder`    varchar(12) DEFAULT NULL,
    `OrderInternalBillOfOperations` varchar(8) DEFAULT NULL,
    `OrderIntBillOfOperationsItem` varchar(4) DEFAULT NULL,
    `ManufacturingOrderSequence` varchar(6) DEFAULT NULL,
    `MfgOrderOperationText` varchar(40) DEFAULT NULL,
    `OperationIsReleased`   varchar(1) DEFAULT NULL,
    `OperationIsConfirmed`  varchar(1) DEFAULT NULL,
    `OperationIsPartiallyConfirmed` varchar(1) DEFAULT NULL,
    `OperationIsDeleted`    varchar(1) DEFAULT NULL,
    `OperationIsTechlyCompleted` varchar(1) DEFAULT NULL,
    `OperationIsClosed`     varchar(1) DEFAULT NULL,
    `ProductionPlant`       varchar(4) DEFAULT NULL,
    `WorkCenterInternalID`  varchar(8) DEFAULT NULL,
    `OpActualExecutionStartDate` date DEFAULT NULL,
    `OpActualExecutionStartTime` time DEFAULT NULL,
    `OpActualExecutionEndDate` date DEFAULT NULL,
    `OpActualExecutionEndTime` time DEFAULT NULL,
    `OpActualExecutionDays` int(3) DEFAULT NULL,
    `OperationUnit`         varchar(3) DEFAULT NULL,
    `OpPlannedTotalQuantity` float(13) DEFAULT NULL,
    `OpTotalConfirmedYieldQty` float(13) DEFAULT NULL,
    `LastChangeDateTime`    datetime DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`, `OrderInternalBillOfOperations` `OrderIntBillOfOperationsItem`)
    CONSTRAINT `ManufacturingOrder_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap-production-order-general-data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
