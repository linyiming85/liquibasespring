--liquibase formatted sql

--changeset linym:1
CREATE TABLE linym (
  TASK_DETAIL_ID bigint(20) NOT NULL,
  BATCH_NO bigint(20) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8  dbpartition by hash(`BATCH_NO`);


--changeset linym:2
INSERT INTO linym (task_detail_id,batch_no) VALUES (1,1)