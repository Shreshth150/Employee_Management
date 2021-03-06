CREATE TABLE DEPARTMENT
(
    ID         BIGINT GENERATED BY DEFAULT AS IDENTITY,
    NAME       VARCHAR(255),
    COMPANY_ID BIGINT,
    PRIMARY KEY (ID)
);

ALTER TABLE DEPARTMENT
    ADD CONSTRAINT DEPARTMENT_COMPANY FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY;