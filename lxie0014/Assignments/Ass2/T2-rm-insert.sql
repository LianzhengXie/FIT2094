--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID: 32068611
--Student Name: Lianzheng Xie
--Unit Code: FIT2001
--Applied Class No: 08


/* Comments for your marker:




*/

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '1850000001',
    'Xie',
    'Lianzheng'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '1850000002',
    'Jiang',
    'Jun'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,   
    ec_lname
) VALUES (
    '1850000003',
    'Liu',
    'Qiyuan'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '1850000004',
    'Zhang',
    'Zilu'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '1850000005',
    'Li',
    'Nan'
);

COMMIT;
-- =======================================
-- COMPETITOR
-- =======================================
INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    1,
    'Johnny',
    'Depp',
    'F',
    TO_DATE('1/SEP/2008', 'DD/MON/YYYY'),
    'djohnny@gmail.com',
    'N',
    '1860000001',
    'P',
    '1850000001'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    2,
    'Jack',
    'Sparrow',
    'F',
    TO_DATE('9/SEP/2008', 'DD/MON/YYYY'),
    'sjack@gmail.com',
    'N',
    '1860000002',
    'P',
    '1850000001'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    3,
    'Keira',
    'Knightley',
    'M',
    TO_DATE('26/SEP/1995', 'DD/MON/YYYY'),
    'kkeira@gmail.com',
    'Y',
    '1860000003',
    'F',
    '1850000001'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    4,
    'Elizabeth',
    'Swann',
    'M',
    TO_DATE('6/SEP/1995', 'DD/MON/YYYY'),
    'selizabeth@gmail.com',
    'Y',
    '1860000004',
    'F',
    '1850000001'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    5,
    'Orlando',
    'Bloom',
    'F',
    TO_DATE('13/SEP/1997', 'DD/MON/YYYY'),
    'borlando@gmail.com',
    'Y',
    '1860000005',
    'F',
    '1850000001'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    6,
    'William',
    'Turner',
    'F',
    TO_DATE('13/SEP/1997', 'DD/MON/YYYY'),
    'twilliam@gmail.com',
    'Y',
    '1860000006',
    'F',
    '1850000002'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    7,
    'Geoffrey',
    'Rush',
    'F',
    TO_DATE('6/SEP/1991', 'DD/MON/YYYY'),
    'rgeoffrey@gmail.com',
    'Y',
    '1860000007',
    'F',
    '1850000002'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    8,
    'Chow',
    'YunFat',
    'F',
    TO_DATE('18/SEP/1995', 'DD/MON/YYYY'),
    'ychow@gmail.com',
    'Y',
    '1860000008',
    'F',
    '1850000002'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    9,
    'Javier',
    'Bardem',
    'M',
    TO_DATE('1/SEP/1999', 'DD/MON/YYYY'),
    'bjavier@gmail.com',
    'Y',
    '1860000009',
    'F',
    '1850000002'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    10,
    'Bill',
    'Nighy',
    'F',
    TO_DATE('1/SEP/1999', 'DD/MON/YYYY'),
    'nbill@gmail.com',
    'Y',
    '1860000010',
    'F',
    '1850000002'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    11,
    'Ian',
    'McShane',
    'F',
    TO_DATE('29/SEP/1992', 'DD/MON/YYYY'),
    'mian@gmail.com',
    'Y',
    '1860000011',
    'G',
    '1850000003'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    12,
    'Brenton',
    'Thwaites',
    'F',
    TO_DATE('10/SEP/1989', 'DD/MON/YYYY'),
    'tbrenton@gmail.com',
    'Y',
    '1860000012',
    'G',
    '1850000003'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    13,
    'Kevin',
    'McNally',
    'F',
    TO_DATE('27/SEP/1996', 'DD/MON/YYYY'),
    'mkevin@gmail.com',
    'Y',
    '1860000013',
    'G',
    '1850000004'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    14,
    'Kaya',
    'Scodelario',
    'M',
    TO_DATE('13/SEP/1992', 'DD/MON/YYYY'),
    'skaya@gmail.com',
    'Y',
    '1860000014',
    'G',
    '1850000005'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    15,
    'Jonathan',
    'Pryce',
    'M',
    TO_DATE('1/SEP/1997', 'DD/MON/YYYY'),
    'pjonathan@gmail.com',
    'Y',
    '1860000015',
    'G',
    '1850000003'
);

COMMIT;
-- =======================================
-- ENTRY
-- =======================================
ALTER TABLE entry DISABLE CONSTRAINT team_entry;

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    1,
    1,
    TO_DATE('24/SEP/2021 09:30:30', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 11:00:30', 'DD/MON/YYYY HH24:MI:SS'),
    1,
    1,
    1
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    14,
    1,
    NULL,
    NULL,
    1,
    1,
    1
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    2,
    1,
    TO_DATE('24/SEP/2021 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 12:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    2,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    13,
    1,
    NULL,
    NULL,
    2,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    3,
    1,
    TO_DATE('01/OCT/2021 09:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 11:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    3,
    3,
    3
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    12,
    1,
    TO_DATE('29/MAY/2022 08:45:00', 'DD/MON/YYYY HH24:MI:SS'),
    NULL,
    3,
    3,
    3
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    4,
    1,
    TO_DATE('01/OCT/2021 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 15:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    4,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    11,
    1,
    TO_DATE('14/MAR/2022 07:45:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('14/MAR/2022 18:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    4,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    5,
    1,
    TO_DATE('01/OCT/2021 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 14:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    5,
    5,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    10,
    1,
    TO_DATE('14/MAR/2022 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('14/MAR/2022 10:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    5,
    5,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    6,
    1,
    TO_DATE('14/MAR/2022 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('14/MAR/2022 10:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    6,
    1,
    1
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    1,
    2,
    TO_DATE('24/SEP/2021 09:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 11:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    6,
    1,
    1
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    7,
    1,
    TO_DATE('05/FEB/2022 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('05/FEB/2022 18:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    7,
    1,
    1
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    2,
    2,
    TO_DATE('24/SEP/2021 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 12:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    7,
    1,
    1
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    8,
    1,
    TO_DATE('05/FEB/2022 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('05/FEB/2022 15:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    8,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    3,
    2,
    TO_DATE('01/OCT/2021 09:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 13:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    9,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    9,
    1,
    TO_DATE('05/FEB/2022 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('05/FEB/2022 15:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    9,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    4,
    2,
    TO_DATE('01/OCT/2021 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 16:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    9,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    10,
    2,
    TO_DATE('14/MAR/2022 08:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('14/MAR/2022 11:00', 'DD/MON/YYYY HH24:MI:SS'),
    10,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    5,
    2,
    TO_DATE('01/OCT/2021 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 15:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    10,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    11,
    2,
    TO_DATE('14/MAR/2022 07:45:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('14/MAR/2022 17:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    10,
    2,
    2
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    1,
    3,
    TO_DATE('24/SEP/2021 09:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 14:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    12,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    12,
    2,
    TO_DATE('29/May/2022 08:45:00', 'DD/MON/YYYY HH24:MI:SS'),
    NULL,
    12,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    2,
    3,
    TO_DATE('24/SEP/2021 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 16:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    12,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    13,
    2,
    NULL,
    NULL,
    13,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    3,
    3,
    TO_DATE('01/OCT/2021 09:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 14:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    13,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    14,
    2,
    NULL,
    NULL,
    13,
    4,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    4,
    3,
    TO_DATE('01/OCT/2021 08:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 14:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    14,
    5,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    1,
    4,
    TO_DATE('24/SEP/2021 09:30:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('24/SEP/2021 13:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    14,
    5,
    4
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    5,
    3,
    TO_DATE('01/OCT/2021 08:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    TO_DATE('01/OCT/2021 16:00:00', 'DD/MON/YYYY HH24:MI:SS'),
    14,
    5,
    4
);

COMMIT;
-- =======================================
-- TEAM
-- =======================================
INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    1,
    'Ace',
    TO_DATE('24/SEP/2021','DD/MON/YYYY'),
    3,
    1,
    1,
    1
); 

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    2,
    'Ban',
    TO_DATE('24/SEP/2021','DD/MON/YYYY'),
    4,
    2,
    1,
    2
); 

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    3,
    'Ban',
    TO_DATE('01/OCT/2021','DD/MON/YYYY'),
    1,
    3,
    1,
    3
); 

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    4,
    'Can',
    TO_DATE('01/OCT/2021','DD/MON/YYYY'),
    3,
    4,
    1,
    4   
); 

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    5,
    'Dna',
    TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),
    2,
    5,
    1,
    4
);

ALTER TABLE team ENABLE CONSTRAINT entry_team_fk;

COMMIT;