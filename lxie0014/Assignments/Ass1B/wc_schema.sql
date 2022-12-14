--student id: 32068611
--student name: Lianzheng Xie
-- Capture run of script in file called custorders_schema_output.txt
set echo on
SPOOL custorders_schema_output.txt
??.. the SQL Developer Generated Script goes here ??...
-----------------------------------------------------
SPOOL off
set echo off

-- Generated by Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   at:        2022-04-28 11:10:59 CST
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c



DROP TABLE address CASCADE CONSTRAINTS;

DROP TABLE cabin CASCADE CONSTRAINTS;

DROP TABLE country CASCADE CONSTRAINTS;

DROP TABLE cruise CASCADE CONSTRAINTS;

DROP TABLE cruise_port CASCADE CONSTRAINTS;

DROP TABLE lanuge CASCADE CONSTRAINTS;

DROP TABLE manifest CASCADE CONSTRAINTS;

DROP TABLE operator CASCADE CONSTRAINTS;

DROP TABLE passenger CASCADE CONSTRAINTS;

DROP TABLE port CASCADE CONSTRAINTS;

DROP TABLE port_temp CASCADE CONSTRAINTS;

DROP TABLE port_tour CASCADE CONSTRAINTS;

DROP TABLE ship CASCADE CONSTRAINTS;

DROP TABLE tour CASCADE CONSTRAINTS;

DROP TABLE tour_lanu CASCADE CONSTRAINTS;

DROP TABLE tour_participant CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE address (
    address_id  NUMBER(9) NOT NULL,
    street_name VARCHAR2(50) NOT NULL,
    town        VARCHAR2(50) NOT NULL,
    postcode    VARCHAR2(50) NOT NULL,
    country     VARCHAR2(50) NOT NULL,
    coun_code   NUMBER(9) NOT NULL
);

COMMENT ON COLUMN address.address_id IS
    'surrogate key, the id of address';

COMMENT ON COLUMN address.street_name IS
    'passedger street name';

COMMENT ON COLUMN address.town IS
    'passedger town';

COMMENT ON COLUMN address.postcode IS
    'passedger postcode';

COMMENT ON COLUMN address.country IS
    'passedger country';

CREATE UNIQUE INDEX address__idx ON
    address (
        coun_code
    ASC );

ALTER TABLE address ADD CONSTRAINT address_pk PRIMARY KEY ( address_id );

CREATE TABLE cabin (
    cabin_number   NUMBER(9) NOT NULL,
    cabin_capacity VARCHAR2(50) NOT NULL,
    cabin_class    VARCHAR2(50) NOT NULL,
    ship_code      NUMBER(9) NOT NULL,
    cabin_cheek    VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN cabin.cabin_number IS
    'cabin number';

COMMENT ON COLUMN cabin.cabin_capacity IS
    'cabin capacity';

COMMENT ON COLUMN cabin.cabin_class IS
    'cabin class';

COMMENT ON COLUMN cabin.ship_code IS
    'the code of ship';

COMMENT ON COLUMN cabin.cabin_cheek IS
    'cheek interior, coeanview, balcony, suit';

ALTER TABLE cabin ADD CONSTRAINT cabin_pk PRIMARY KEY ( cabin_number,
                                                        ship_code );

CREATE TABLE country (
    coun_code NUMBER(9) NOT NULL,
    coun_name VARCHAR2(50) NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY ( coun_code );

CREATE TABLE cruise (
    cruise_id   NUMBER(9) NOT NULL,
    cruise_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(50) NOT NULL,
    depart_date DATE NOT NULL,
    ship_code   NUMBER(9) NOT NULL
);

COMMENT ON COLUMN cruise.cruise_id IS
    'cruise id';

COMMENT ON COLUMN cruise.cruise_name IS
    'cruise name';

COMMENT ON COLUMN cruise.description IS
    'description';

COMMENT ON COLUMN cruise.depart_date IS
    'depart date';

COMMENT ON COLUMN cruise.ship_code IS
    'the code of ship';

ALTER TABLE cruise ADD CONSTRAINT cruise_pk PRIMARY KEY ( cruise_id,
                                                          cruise_name );

CREATE TABLE cruise_port (
    departure_time VARCHAR2(50) NOT NULL,
    arrival_time   VARCHAR2(50),
    port_code      VARCHAR2(50) NOT NULL,
    cruise_id      NUMBER(9) NOT NULL,
    cruise_name    VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN cruise_port.departure_time IS
    'departure time';

COMMENT ON COLUMN cruise_port.arrival_time IS
    'arrival time';

COMMENT ON COLUMN cruise_port.port_code IS
    'port code';

COMMENT ON COLUMN cruise_port.cruise_id IS
    'cruise id';

COMMENT ON COLUMN cruise_port.cruise_name IS
    'cruise name';

ALTER TABLE cruise_port
    ADD CONSTRAINT cruise_port_pk PRIMARY KEY ( departure_time,
                                                port_code,
                                                cruise_id,
                                                cruise_name );

CREATE TABLE lanuge (
    commentary_languages VARCHAR2(50) NOT NULL,
    passedger_id         NUMBER(9) NOT NULL
);

COMMENT ON COLUMN lanuge.commentary_languages IS
    'the commentary languages of tour';

COMMENT ON COLUMN lanuge.passedger_id IS
    'passedger id';

ALTER TABLE lanuge ADD CONSTRAINT lunge_pk PRIMARY KEY ( passedger_id,
                                                         commentary_languages );

CREATE TABLE manifest (
    cabin_number  NUMBER(9) NOT NULL,
    board_data    DATE NOT NULL,
    cruise_id     NUMBER(9) NOT NULL,
    cruise_name   VARCHAR2(50) NOT NULL,
    passedger_id  NUMBER(9) NOT NULL,
    cabin_number1 NUMBER(9) NOT NULL,
    ship_code     NUMBER(9) NOT NULL
);

COMMENT ON COLUMN manifest.cabin_number IS
    'cabin number';

COMMENT ON COLUMN manifest.board_data IS
    'board data';

COMMENT ON COLUMN manifest.cruise_id IS
    'cruise id';

COMMENT ON COLUMN manifest.cruise_name IS
    'cruise name';

COMMENT ON COLUMN manifest.passedger_id IS
    'passedger id';

COMMENT ON COLUMN manifest.cabin_number1 IS
    'cabin number';

COMMENT ON COLUMN manifest.ship_code IS
    'the code of ship';

ALTER TABLE manifest
    ADD CONSTRAINT manifest_pk PRIMARY KEY ( cabin_number,
                                             cruise_id,
                                             cruise_name,
                                             passedger_id );

CREATE TABLE operator (
    operator_id        NUMBER(9) NOT NULL,
    operator_name      VARCHAR2(50) NOT NULL,
    chief_officer_name VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN operator.operator_id IS
    'the id of operator';

COMMENT ON COLUMN operator.operator_name IS
    'the name of operator';

COMMENT ON COLUMN operator.chief_officer_name IS
    'the chief officer name of operator';

ALTER TABLE operator ADD CONSTRAINT operator_pk PRIMARY KEY ( operator_id );

CREATE TABLE passenger (
    passedger_id         NUMBER(9) NOT NULL,
    passedger_first_name VARCHAR2(50) NOT NULL,
    passedger_last_name  VARCHAR2(50) NOT NULL,
    passedger_gender     VARCHAR2(50) NOT NULL,
    passedger_birth      VARCHAR2(50) NOT NULL,
    passedger_guardian   VARCHAR2(50) NOT NULL,
    phone_number         NUMBER(9),
    address_id           NUMBER(9) NOT NULL,
    prin_langu           VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN passenger.passedger_id IS
    'passedger id';

COMMENT ON COLUMN passenger.passedger_first_name IS
    'passedger first name';

COMMENT ON COLUMN passenger.passedger_last_name IS
    'passedger last name';

COMMENT ON COLUMN passenger.passedger_gender IS
    'passedger gender';

COMMENT ON COLUMN passenger.passedger_birth IS
    'passedger birth';

COMMENT ON COLUMN passenger.passedger_guardian IS
    'passedger guardian';

COMMENT ON COLUMN passenger.phone_number IS
    'the phone number of passenger';

COMMENT ON COLUMN passenger.address_id IS
    'surrogate key, the id of address';

COMMENT ON COLUMN passenger.prin_langu IS
    'passenger print language';

ALTER TABLE passenger ADD CONSTRAINT passenger_pk PRIMARY KEY ( passedger_id );

CREATE TABLE port (
    port_code       VARCHAR2(50) NOT NULL,
    port_name       VARCHAR2(50) NOT NULL,
    port_country    VARCHAR2(50) NOT NULL,
    port_population VARCHAR2(50) NOT NULL,
    port_logitude   NUMBER(90) NOT NULL,
    port_latitude   NUMBER(180) NOT NULL,
    coun_code       NUMBER(9) NOT NULL
);

COMMENT ON COLUMN port.port_code IS
    'port code';

COMMENT ON COLUMN port.port_name IS
    'port name';

COMMENT ON COLUMN port.port_country IS
    'port country';

COMMENT ON COLUMN port.port_population IS
    'port population';

COMMENT ON COLUMN port.port_logitude IS
    'port logitude range(-90~90)';

COMMENT ON COLUMN port.port_latitude IS
    'port latitude range(-180~180)';

CREATE UNIQUE INDEX port__idx ON
    port (
        coun_code
    ASC );

ALTER TABLE port ADD CONSTRAINT port_pk PRIMARY KEY ( port_code );

CREATE TABLE port_temp (
    port_month      NUMBER(12) NOT NULL,
    port_aver_hight VARCHAR2(50) NOT NULL,
    port_aver_low   VARCHAR2(50) NOT NULL,
    port_code       VARCHAR2(50)
);

COMMENT ON COLUMN port_temp.port_month IS
    'the port month';

COMMENT ON COLUMN port_temp.port_aver_hight IS
    'the port average hight';

COMMENT ON COLUMN port_temp.port_aver_low IS
    'the port average low';

COMMENT ON COLUMN port_temp.port_code IS
    'port code';

ALTER TABLE port_temp ADD CONSTRAINT port_temp_pk PRIMARY KEY ( port_month );

CREATE TABLE port_tour (
    tour_no   NUMBER(9) NOT NULL,
    tour_date DATE NOT NULL,
    port_code VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN port_tour.tour_no IS
    'the tour number';

COMMENT ON COLUMN port_tour.tour_date IS
    'tour date';

COMMENT ON COLUMN port_tour.port_code IS
    'port code';

ALTER TABLE port_tour ADD CONSTRAINT port_tour_pk PRIMARY KEY ( tour_date,
                                                                tour_no );

CREATE TABLE ship (
    ship_code               NUMBER(9) NOT NULL,
    ship_name               VARCHAR2(50) NOT NULL,
    ship_commission_date    VARCHAR2(50) NOT NULL,
    ship_tonnage            VARCHAR2(50) NOT NULL,
    ship_capacity           VARCHAR2(50) NOT NULL,
    ship_registered_country VARCHAR2(50) NOT NULL,
    operator_id             NUMBER(9) NOT NULL
);

COMMENT ON COLUMN ship.ship_code IS
    'the code of ship';

COMMENT ON COLUMN ship.ship_name IS
    'the name of ship';

COMMENT ON COLUMN ship.ship_commission_date IS
    'the commission date of ship
';

COMMENT ON COLUMN ship.ship_tonnage IS
    'the tonnage of ship';

COMMENT ON COLUMN ship.ship_capacity IS
    'the max capacity of ship';

COMMENT ON COLUMN ship.ship_registered_country IS
    'the registered country of ship';

COMMENT ON COLUMN ship.operator_id IS
    'the id of operator';

ALTER TABLE ship ADD CONSTRAINT ship_pk PRIMARY KEY ( ship_code );

CREATE TABLE tour (
    tour_no          NUMBER(9) NOT NULL,
    tour_name        VARCHAR2(50) NOT NULL,
    tour_desc        VARCHAR2(50) NOT NULL,
    tour_hours_requ  VARCHAR2(50) NOT NULL,
    tour_cost        VARCHAR2(50) NOT NULL,
    tour_wheel_chair VARCHAR2(50) NOT NULL,
    tour_avai        VARCHAR2(50) NOT NULL,
    tour_start_time  VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN tour.tour_no IS
    'the tour number';

COMMENT ON COLUMN tour.tour_name IS
    'the tour name';

COMMENT ON COLUMN tour.tour_desc IS
    'tour description';

COMMENT ON COLUMN tour.tour_hours_requ IS
    'tour hour requirement';

COMMENT ON COLUMN tour.tour_cost IS
    'tour cost per person';

COMMENT ON COLUMN tour.tour_wheel_chair IS
    'tour wheelchair access';

COMMENT ON COLUMN tour.tour_avai IS
    'tour availibility';

COMMENT ON COLUMN tour.tour_start_time IS
    'tour start time';

ALTER TABLE tour ADD CONSTRAINT tour_pk PRIMARY KEY ( tour_no );

CREATE TABLE tour_lanu (
    tour_no              NUMBER(9) NOT NULL,
    passedger_id         NUMBER(9) NOT NULL,
    commentary_languages VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN tour_lanu.tour_no IS
    'the tour number';

COMMENT ON COLUMN tour_lanu.passedger_id IS
    'passedger id';

COMMENT ON COLUMN tour_lanu.commentary_languages IS
    'the commentary languages of tour';

ALTER TABLE tour_lanu
    ADD CONSTRAINT tour_lunge_pk PRIMARY KEY ( tour_no,
                                               passedger_id,
                                               commentary_languages );

CREATE TABLE tour_participant (
    tour_participant_id VARCHAR2(50) NOT NULL,
    pay_rece            VARCHAR2(50) NOT NULL,
    tour_date           DATE NOT NULL,
    tour_no             NUMBER(9) NOT NULL,
    cruise_id           NUMBER(9) NOT NULL,
    cruise_name         VARCHAR2(50) NOT NULL,
    passedger_id        NUMBER(9) NOT NULL
);

COMMENT ON COLUMN tour_participant.tour_participant_id IS
    'tour participant id';

COMMENT ON COLUMN tour_participant.pay_rece IS
    'the payment received';

COMMENT ON COLUMN tour_participant.tour_date IS
    'tour date';

COMMENT ON COLUMN tour_participant.tour_no IS
    'the tour number';

COMMENT ON COLUMN tour_participant.cruise_id IS
    'cruise id';

COMMENT ON COLUMN tour_participant.cruise_name IS
    'cruise name';

COMMENT ON COLUMN tour_participant.passedger_id IS
    'passedger id';

ALTER TABLE tour_participant ADD CONSTRAINT tour_participant_pk PRIMARY KEY ( tour_participant_id );

ALTER TABLE passenger
    ADD CONSTRAINT address_passenger FOREIGN KEY ( address_id )
        REFERENCES address ( address_id );

ALTER TABLE manifest
    ADD CONSTRAINT cabin_manifest FOREIGN KEY ( cabin_number1,
                                                ship_code )
        REFERENCES cabin ( cabin_number,
                           ship_code );

ALTER TABLE address
    ADD CONSTRAINT court_address FOREIGN KEY ( coun_code )
        REFERENCES country ( coun_code );

ALTER TABLE cruise_port
    ADD CONSTRAINT cruise_cruise_port FOREIGN KEY ( cruise_id,
                                                    cruise_name )
        REFERENCES cruise ( cruise_id,
                            cruise_name );

ALTER TABLE manifest
    ADD CONSTRAINT cruise_manifest FOREIGN KEY ( cruise_id,
                                                 cruise_name )
        REFERENCES cruise ( cruise_id,
                            cruise_name );

ALTER TABLE tour_participant
    ADD CONSTRAINT cruise_tour_participant FOREIGN KEY ( cruise_id,
                                                         cruise_name )
        REFERENCES cruise ( cruise_id,
                            cruise_name );

ALTER TABLE tour_lanu
    ADD CONSTRAINT lanuge_tour FOREIGN KEY ( passedger_id,
                                             commentary_languages )
        REFERENCES lanuge ( passedger_id,
                            commentary_languages );

ALTER TABLE ship
    ADD CONSTRAINT operator_ship FOREIGN KEY ( operator_id )
        REFERENCES operator ( operator_id );

ALTER TABLE tour_participant
    ADD CONSTRAINT passenger FOREIGN KEY ( passedger_id )
        REFERENCES passenger ( passedger_id );

ALTER TABLE manifest
    ADD CONSTRAINT passenger_manifest FOREIGN KEY ( passedger_id )
        REFERENCES passenger ( passedger_id );

ALTER TABLE lanuge
    ADD CONSTRAINT passengerv2 FOREIGN KEY ( passedger_id )
        REFERENCES passenger ( passedger_id );

ALTER TABLE port
    ADD CONSTRAINT port_country FOREIGN KEY ( coun_code )
        REFERENCES country ( coun_code );

ALTER TABLE cruise_port
    ADD CONSTRAINT port_cruise_port FOREIGN KEY ( port_code )
        REFERENCES port ( port_code );

ALTER TABLE port_temp
    ADD CONSTRAINT port_temp FOREIGN KEY ( port_code )
        REFERENCES port ( port_code );

ALTER TABLE port_tour
    ADD CONSTRAINT port_tour FOREIGN KEY ( port_code )
        REFERENCES port ( port_code );

ALTER TABLE tour_participant
    ADD CONSTRAINT port_tour_participant FOREIGN KEY ( tour_date,
                                                       tour_no )
        REFERENCES port_tour ( tour_date,
                               tour_no );

ALTER TABLE cabin
    ADD CONSTRAINT ship_cabin FOREIGN KEY ( ship_code )
        REFERENCES ship ( ship_code );

ALTER TABLE cruise
    ADD CONSTRAINT ship_cruise FOREIGN KEY ( ship_code )
        REFERENCES ship ( ship_code );

ALTER TABLE tour_lanu
    ADD CONSTRAINT tour_lanuge FOREIGN KEY ( tour_no )
        REFERENCES tour ( tour_no );

ALTER TABLE port_tour
    ADD CONSTRAINT tour_port FOREIGN KEY ( tour_no )
        REFERENCES tour ( tour_no );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            16
-- CREATE INDEX                             2
-- ALTER TABLE                             36
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
