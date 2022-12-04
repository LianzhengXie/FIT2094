/*
  Databases 2022 S1 Assignment 2
  --RunMonash Schema File and Initial Data--
  
  Description: 
  This file creates the Run Monash tables 
  and populates several of the tables (those shown in purple on the supplied model). 
  You should read this schema file carefully 
  and be sure you understand the various data requirements.

Author: FIT Database Teaching Team
License: Copyright Monash University, unless otherwise stated. All Rights Reserved.
COPYRIGHT WARNING
Warning
This material is protected by copyright. For use within Monash University only. NOT FOR RESALE.
Do not remove this notice. 
  
*/



DROP TABLE carnival CASCADE CONSTRAINTS;

DROP TABLE charity CASCADE CONSTRAINTS;

DROP TABLE competitor CASCADE CONSTRAINTS;

DROP TABLE emercontact CASCADE CONSTRAINTS;

DROP TABLE entry CASCADE CONSTRAINTS;

DROP TABLE event CASCADE CONSTRAINTS;

DROP TABLE eventtype CASCADE CONSTRAINTS;

DROP TABLE team CASCADE CONSTRAINTS;

-- CREATING table CARNIVAL
CREATE TABLE carnival (
    carn_date     DATE NOT NULL,
    carn_name     VARCHAR2(50) NOT NULL,
    carn_director VARCHAR2(50) NOT NULL,
    carn_location VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN carnival.carn_date IS
    'Date of carnival (unique identifier)';

COMMENT ON COLUMN carnival.carn_name IS
    'Carnival name';

COMMENT ON COLUMN carnival.carn_director IS
    'Carnival director''s name';

COMMENT ON COLUMN carnival.carn_location IS
    'Carnival''s location';

ALTER TABLE carnival ADD CONSTRAINT carnival_pk PRIMARY KEY ( carn_date );

ALTER TABLE carnival ADD CONSTRAINT carnival_uq UNIQUE ( carn_name );

-- CREATING table CHARITY
CREATE TABLE charity (
    char_id      NUMBER(3) NOT NULL,
    char_name    VARCHAR2(30) NOT NULL,
    char_contact VARCHAR2(50) NOT NULL,
    char_phone   CHAR(10) NOT NULL
);

COMMENT ON COLUMN charity.char_id IS
    'Charity unique identifier';

COMMENT ON COLUMN charity.char_name IS
    'Approved charity name';

COMMENT ON COLUMN charity.char_contact IS
    'Charity contact person name';

COMMENT ON COLUMN charity.char_phone IS
    'Charity phone number';

ALTER TABLE charity ADD CONSTRAINT charity_pk PRIMARY KEY ( char_id );

-- CREATING table EVENT
CREATE TABLE event (
    event_id        NUMBER(6) NOT NULL,
    carn_date       DATE NOT NULL,
    eventtype_code  CHAR(3) NOT NULL,
    event_starttime DATE NOT NULL
);

COMMENT ON COLUMN event.event_id IS
    'Event id (surrogate primary key)';

COMMENT ON COLUMN event.carn_date IS
    'Date of carnival (unique identifier)';

COMMENT ON COLUMN event.eventtype_code IS
    'Even type code, reflects the distance of the event, e.g 10K is for 10 kilometer ';

COMMENT ON COLUMN event.event_starttime IS
    'Event scheduled start time';

ALTER TABLE event ADD CONSTRAINT event_pk PRIMARY KEY ( event_id );

ALTER TABLE event ADD CONSTRAINT event_nk UNIQUE ( carn_date,
                                                   eventtype_code );

-- CREATING table EVENTTYPE
CREATE TABLE eventtype (
    eventtype_code CHAR(3) NOT NULL,
    eventtype_desc VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN eventtype.eventtype_code IS
    'Even type code, reflects the distance of the event, e.g 10K is for 10 kilometer ';

COMMENT ON COLUMN eventtype.eventtype_desc IS
    'Even type description';

ALTER TABLE eventtype ADD CONSTRAINT eventtype_pk PRIMARY KEY ( eventtype_code );

ALTER TABLE eventtype ADD CONSTRAINT eventtype_uq UNIQUE ( eventtype_desc );
                                                   
-- ADDING FK Constraints for table EVENT
ALTER TABLE event
    ADD CONSTRAINT carvinal_event FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );

ALTER TABLE event
    ADD CONSTRAINT eventype_event_fk FOREIGN KEY ( eventtype_code )
        REFERENCES eventtype ( eventtype_code );


-- *****************************************************************
-- NO FURTHER DATA MAY BE ADDED TO THESE TABLES NOR THE SUPPPLIED
-- DATA MODIFIED IN ANY WAY
-- *****************************************************************

-- INSERTING into CARNIVAL

INSERT INTO carnival (
    carn_date,
    carn_name,
    carn_director,
    carn_location
) VALUES (
    TO_DATE('24/SEP/2021', 'DD/MON/YYYY'),
    'RM Spring Series Clayton 2021',
    'Mary Imparo',
    'Scenic Blvd, Clayton, VIC, 3800'
);

INSERT INTO carnival (
    carn_date,
    carn_name,
    carn_director,
    carn_location
) VALUES (
    TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),
    'RM Spring Series Caulfield 2021',
    'Catherine Freeman',
    '900 Dandenong Rd, Caulfield, VIC, 3145'
);

INSERT INTO carnival (
    carn_date,
    carn_name,
    carn_director,
    carn_location
) VALUES (
    TO_DATE('05/FEB/2022', 'DD/MON/YYYY'),
    'RM Summer Series Caulfield 2022',
    'Steve Mona',
    '900 Dandenong Rd, Caulfield, VIC, 3145'
);

INSERT INTO carnival (
    carn_date,
    carn_name,
    carn_director,
    carn_location
) VALUES (
    TO_DATE('14/MAR/2022', 'DD/MON/YYYY'),
    'RM Autumn Series Clayton 2022',
    'Mary Imparo',
    'Scenic Blvd, Clayton, VIC, 3800'
);

INSERT INTO carnival (
    carn_date,
    carn_name,
    carn_director,
    carn_location
) VALUES (
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    'RM Autumn Series Caulfield 2022',
    'Steve Mona',
    '900 Dandenong Rd, Caulfield, VIC, 3145'
);


-- INSERTING into CHARITY
INSERT INTO charity (
    char_id,
    char_name,
    char_contact,
    char_phone
) VALUES (
    1,
    'RSPCA',
    'Ms. Susan Madden',
    '6140020002'
);

INSERT INTO charity (
    char_id,
    char_name,
    char_contact,
    char_phone
) VALUES (
    2,
    'Beyond Blue',
    'Ms. Julia Gillard',
    '6140040004'
);

INSERT INTO charity (
    char_id,
    char_name,
    char_contact,
    char_phone
) VALUES (
    3,
    'Salvation Army',
    'Mr. Michael Jackson',
    '6140080008'
);

INSERT INTO charity (
    char_id,
    char_name,
    char_contact,
    char_phone
) VALUES (
    4,
    'Amnesty International',
    'Ms. Navinda Pal',
    '6140081234'
);

-- INSERTING into EVENTTYPE
INSERT INTO eventtype (
    eventtype_code,
    eventtype_desc
) VALUES (
    '42K',
    '42.2 Km Marathon'
);

INSERT INTO eventtype (
    eventtype_code,
    eventtype_desc
) VALUES (
    '21K',
    '21.1 Km Half Marathon'
);

INSERT INTO eventtype (
    eventtype_code,
    eventtype_desc
) VALUES (
    '10K',
    '10 Km Run'
);

INSERT INTO eventtype (
    eventtype_code,
    eventtype_desc
) VALUES (
    '5K ',
    '5 Km Run'
);

INSERT INTO eventtype (
    eventtype_code,
    eventtype_desc
) VALUES (
    '3K ',
    '3 Km Community Run/Walk'
);

-- INSERTING into EVENT
INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    1,
    TO_DATE('24/SEP/2021', 'DD/MON/YYYY'),
    '5K ',
    TO_DATE('09:30','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    2,
    TO_DATE('24/SEP/2021', 'DD/MON/YYYY'),
    '10K',
    TO_DATE('08:30','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    3,
    TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),
    '5K ',
    TO_DATE('09:00','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    4,
    TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),
    '10K',
    TO_DATE('08:30','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    5,
    TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),
    '21K',
    TO_DATE('08:00','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    6,
    TO_DATE('05/FEB/2022', 'DD/MON/YYYY'),
    '3K ',
    TO_DATE('08:30','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    7,
    TO_DATE('05/FEB/2022', 'DD/MON/YYYY'),
    '5K ',
    TO_DATE('08:30','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    8,
    TO_DATE('05/FEB/2022', 'DD/MON/YYYY'),
    '10K',
    TO_DATE('08:00','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    9,
    TO_DATE('05/FEB/2022', 'DD/MON/YYYY'),
    '21K',
    TO_DATE('08:00','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    10,
    TO_DATE('14/MAR/2022', 'DD/MON/YYYY'),
    '3K ',
    TO_DATE('08:00','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    11,
    TO_DATE('14/MAR/2022', 'DD/MON/YYYY'),
    '42K',
    TO_DATE('07:45','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    12,
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    '5K ',
    TO_DATE('08:45','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    13,
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    '10K',
    TO_DATE('08:30','HH:MI')
);

INSERT INTO event (
    event_id,
    carn_date,
    eventtype_code,
    event_starttime
) VALUES (
    14,
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    '21K',
    TO_DATE('08:00','HH:MI')
);

COMMIT;
