CREATE TABLE AUTHORITY
(
    ID   BIGINT GENERATED BY DEFAULT AS IDENTITY,
    NAME VARCHAR(255),
    PRIMARY KEY (ID)
);

ALTER TABLE AUTHORITY
    ADD CONSTRAINT AUTHORITY_NAME UNIQUE (NAME);

CREATE TABLE USER_
(
    ID                  BIGINT GENERATED BY DEFAULT AS IDENTITY,
    PASSWORD            VARCHAR(255),
    USER_NAME           VARCHAR(255),
    ACCOUNT_EXPIRED     BOOLEAN,
    ACCOUNT_LOCKED      BOOLEAN,
    CREDENTIALS_EXPIRED BOOLEAN,
    ENABLED             BOOLEAN,
    PRIMARY KEY (ID)
);

ALTER TABLE USER_
    ADD CONSTRAINT USER_USER_NAME UNIQUE (USER_NAME);

CREATE TABLE USERS_AUTHORITIES
(
    USER_ID      BIGINT NOT NULL,
    AUTHORITY_ID BIGINT NOT NULL,
    PRIMARY KEY (USER_ID, AUTHORITY_ID)
);

ALTER TABLE USERS_AUTHORITIES
    ADD CONSTRAINT USERS_AUTHORITIES_AUTHORITY
        FOREIGN KEY (AUTHORITY_ID) REFERENCES AUTHORITY;

ALTER TABLE USERS_AUTHORITIES
    ADD CONSTRAINT USERS_AUTHORITIES_USER_
        FOREIGN KEY (USER_ID) REFERENCES USER_;

