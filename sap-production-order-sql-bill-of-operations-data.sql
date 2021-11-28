CREATE TABLE `sap-production-order-bill-of-operations-data`
(
    `ManufacturingOrder`    varchar(12) DEFAULT NULL,
    `OrderInternalBillOfOperations` varchar(8) DEFAULT NULL,
    `OrderIntBillOfOperationsItem` varchar(4) DEFAULT NULL,
    `ManufacturingOrderSequence` varchar(6) DEFAULT NULL,
    `MfgOrderOperationText` varchar(40) DEFAULT NULL,
    `OperationIsReleased`   tinyint(1) DEFAULT NULL,
    `OperationIsConfirmed`  tinyint(1) DEFAULT NULL,
    `OperationIsPartiallyConfirmed` tinyint(1) DEFAULT NULL,
    `OperationIsDeleted`    tinyint(1) DEFAULT NULL,
    `OperationIsTechlyCompleted` tinyint(1) DEFAULT NULL,
    `OperationIsClosed`     tinyint(1) DEFAULT NULL,
    `ProductionPlant`       varchar(4) DEFAULT NULL,
    `WorkCenterInternalID`  varchar(8) DEFAULT NULL,
    `OpErlstSchedldExecStrtDte`, date DEFAULT NULL,
    `OpErlstSchedldExecStrtTme`, time DEFAULT NULL,
    `OpErlstSchedldExecEndDte`, date DEFAULT NULL,
    `OpErlstSchedldExecEndTme`, time DEFAULT NULL,
    `OpActualExecutionStartDate` date DEFAULT NULL,
    `OpActualExecutionStartTime` time DEFAULT NULL,
    `OpActualExecutionEndDate` date DEFAULT NULL,
    `OpActualExecutionEndTime` time DEFAULT NULL,
    `OpActualExecutionDays` varchar(3) DEFAULT NULL,
    `OperationUnit`         varchar(3) DEFAULT NULL,
    `OpPlannedTotalQuantity` varchar(13) DEFAULT NULL,
    `OpTotalConfirmedYieldQty` varchar(13) DEFAULT NULL,
    `LastChangeDateTime`    datetime DEFAULT NULL,
    PRIMARY KEY (`ManufacturingOrder`, `OrderInternalBillOfOperations` `OrderIntBillOfOperationsItem`)
    CONSTRAINT `ManufacturingOrder_fk` FOREIGN KEY (`ManufacturingOrder`) REFERENCES `sap-production-order-general-data` (`ManufacturingOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
