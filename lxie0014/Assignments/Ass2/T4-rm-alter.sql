--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-alter.sql

--Student ID: 32068611
--Student Name: Lianzheng Xie
--Unit Code: FIT2001
--Applied Class No: 08


/* Comments for your marker:




*/

--4(a)
ALTER TABLE entry ADD entry_elapsed_time NUMBER(6, 2);

UPDATE entry
SET
    entry_elapsed_time = entry_finishtime - entry_starttime
WHERE
    entry_starttime IS NOT NULL
    AND entry_finishtime IS NOT NULL;

COMMIT;

--4(b)
DROP TABLE charity_team CASCADE CONSTRAINTS;

CREATE TABLE charity_team (
    team_id       NUMBER(3) NOT NULL,
    char_id       NUMBER(3) NOT NULL,
    percentage_no NUMBER(3) NOT NULL
);

COMMENT ON COLUMN charity_team.team_id IS
    'Team identifier (unique)';

COMMENT ON COLUMN charity_team.char_id IS
    'Charity identifier';

COMMENT ON COLUMN charity_team.percentage_no IS
    'the percentage (0 to 100) of total raised funds that goes to each charity';

ALTER TABLE charity_team ADD CONSTRAINT charity_team_pk PRIMARY KEY ( team_id,
                                                                      char_id );

ALTER TABLE charity_team
    ADD CONSTRAINT chk_percentage_no CHECK ( percentage_no BETWEEN 0 AND 100 );

ALTER TABLE charity_team
    ADD CONSTRAINT team_charity_team_fk FOREIGN KEY ( team_id )
        REFERENCES team ( team_id );
        
ALTER TABLE charity_team
    ADD CONSTRAINT charity_charity_team_fk FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );

COMMIT;
--4(c)
DROP TABLE offi_carn CASCADE CONSTRAINTS;

DROP TABLE role CASCADE CONSTRAINTS;

DROP TABLE official CASCADE CONSTRAINTS;

CREATE TABLE official (
    offi_id NUMBER(3) NOT NULL,
    comp_no NUMBER(5) NOT NULL
);

COMMENT ON COLUMN official.offi_id IS
    'Official identifier';

COMMENT ON COLUMN official.comp_no IS
    'Unique identifier for a competitor';

ALTER TABLE official ADD CONSTRAINT official_pk PRIMARY KEY ( offi_id );

ALTER TABLE official
    ADD CONSTRAINT competitor_official_fk FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );

COMMIT;

CREATE TABLE role (
    role_id   NUMBER(3) NOT NULL,
    role_desc VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN role.role_id IS
    'Role identifier';

COMMENT ON COLUMN role.role_desc IS
    'Role description';

ALTER TABLE role ADD CONSTRAINT role_pk PRIMARY KEY ( role_id );

ALTER TABLE role ADD CONSTRAINT role_uq UNIQUE ( role_desc );

COMMIT;

CREATE TABLE offi_carn (
    offi_id   NUMBER(3) NOT NULL,
    carn_date DATE NOT NULL,
    role_id   NUMBER(3) NOT NULL
);

COMMENT ON COLUMN offi_carn.offi_id IS
    'Official identifier';

COMMENT ON COLUMN offi_carn.carn_date IS
    'Date of carnival (unique identifier)';

COMMENT ON COLUMN offi_carn.role_id IS
    'Role identifier';

ALTER TABLE offi_carn ADD CONSTRAINT offi_carn_pk PRIMARY KEY ( offi_id );

ALTER TABLE offi_carn
    ADD CONSTRAINT official_offi_carn_fk FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );

ALTER TABLE offi_carn
    ADD CONSTRAINT carnival_offi_carn_fk FOREIGN KEY ( offi_id )
        REFERENCES official ( offi_id );

ALTER TABLE offi_carn
    ADD CONSTRAINT role_offi_carn_fk FOREIGN KEY ( role_id )
        REFERENCES role ( role_id );

COMMIT;









