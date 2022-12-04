--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 32068611
--Student Name: Lianzheng Xie
--Unit Code: FIT2001
--Applied Class No: 08


/* Comments for your marker:

*/

--3(a)
DROP SEQUENCE comp_seq;

DROP SEQUENCE team_seq;

CREATE SEQUENCE comp_seq INCREMENT BY 1 START WITH 100;

CREATE SEQUENCE team_seq INCREMENT BY 1 START WITH 100;

--3(b)
INSERT INTO emercontact VALUES (
    '0476541234',
    'Jack',
    'Kai'
);

INSERT INTO competitor VALUES (
    comp_seq.NEXTVAL,
    'Daniel',
    'Kai',
    'M',
    TO_DATE('1/SEP/2002', 'DD/MON/YYYY'),
    'Kdaniel@gmail.com',
    'Y',
    '0476541235',
    'P',
    '0476541234'
);

INSERT INTO entry VALUES (
    (
        SELECT
            event_id
        FROM
            event
        WHERE
            carn_date = (
                SELECT
                    carn_date
                FROM
                    carnival
                WHERE
                        carn_name = 'RM Autumn Series Caulfield 2022'
                    AND eventtype_code = (
                        SELECT
                            eventtype_code
                        FROM
                            eventtype
                        WHERE
                            eventtype_desc = '21.1 Km Half Marathon'
                    )
            )
    ),
    (
        SELECT
            MAX(entry_no)
        FROM
            entry
    ) + 1,
    NULL,
    NULL,
    comp_seq.CURRVAL,
    NULL,
    (
        SELECT
            char_id
        FROM
            charity
        WHERE
            char_name = 'Beyond Blue'
    )
);

INSERT INTO competitor VALUES (
    comp_seq.NEXTVAL,
    'Annabelle',
    'Kai',
    'F',
    TO_DATE('1/SEP/2002', 'DD/MON/YYYY'),
    'Kannabelle@gmail.com',
    'Y',
    '0476541236',
    'P',
    '0476541234'
);

INSERT INTO entry VALUES (
    (
        SELECT
            event_id
        FROM
            event
        WHERE
            carn_date = (
                SELECT
                    carn_date
                FROM
                    carnival
                WHERE
                        carn_name = 'RM Autumn Series Caulfield 2022'
                    AND eventtype_code = (
                        SELECT
                            eventtype_code
                        FROM
                            eventtype
                        WHERE
                            eventtype_desc = '21.1 Km Half Marathon'
                    )
            )
    ),
    (
        SELECT
            MAX(entry_no)
        FROM
            entry
    ) + 1,
    NULL,
    NULL,
    comp_seq.CURRVAL,
    NULL,
    (
        SELECT
            char_id
        FROM
            charity
        WHERE
            char_name = 'Amnesty International'
    )
);

COMMIT;
--3(c)
INSERT INTO team VALUES (
    team_seq.NEXTVAL,
    'Kai Speedstars',
    (
        SELECT
            carn_date
        FROM
            carnival
        WHERE
            carn_name = 'RM Autumn Series Caulfield 2022'
    ),
    1,
    (
        SELECT
            event_id
        FROM
            event
        WHERE
                carn_date = (
                    SELECT
                        carn_date
                    FROM
                        carnival
                    WHERE
                        carn_name = 'RM Autumn Series Caulfield 2022'
                )
            AND eventtype_code = (
                SELECT
                    eventtype_code
                FROM
                    eventtype
                WHERE
                    eventtype_desc = '21.1 Km Half Marathon'
            )
    ),
    (
        SELECT
            entry_no
        FROM
            entry
        WHERE
            event_id = (
                SELECT
                    event_id
                FROM
                    event
                WHERE
                        carn_date = (
                            SELECT
                                carn_date
                            FROM
                                carnival
                            WHERE
                                carn_name = 'RM Autumn Series Caulfield 2022'
                        )
                    AND eventtype_code = (
                        SELECT
                            eventtype_code
                        FROM
                            eventtype
                        WHERE
                            eventtype_desc = '21.1 Km Half Marathon'
                    )
                    AND comp_no = (
                        SELECT
                            comp_no
                        FROM
                            competitor
                        WHERE
                                comp_fname = 'Annabelle'
                            AND comp_lname = 'Kai'
                    )
            )
    ),
    (
        SELECT
            char_id
        FROM
            charity
        WHERE
            char_name = 'Beyond Blue'
    )
);

UPDATE entry
SET
    team_id = (
        SELECT
            team_id
        FROM
            team
        WHERE
            team_name = 'Kai Speedstars'
    )
WHERE
    comp_no = (
        SELECT
            comp_no
        FROM
            competitor
        WHERE
                comp_fname = 'Annabelle'
            AND comp_lname = 'Kai'
    );

COMMIT;


--3(d)
UPDATE entry
SET
    event_id = (
        SELECT
            event_id
        FROM
            event
        WHERE
            carn_date = (
                SELECT
                    carn_date
                FROM
                    carnival
                WHERE
                    ( carn_name = 'RM Autumn Series Caulfield 2022' )
                    AND eventtype_code = (
                        SELECT
                            eventtype_code
                        FROM
                            eventtype
                        WHERE
                            eventtype_desc = '10 Km Run'
                    )
            )
    ),
    entry_no = (
        SELECT
            MAX(entry_no) + 1
        FROM
            entry
        WHERE
            event_id = (
                SELECT
                    event_id
                FROM
                    event
                WHERE
                    carn_date = (
                        SELECT
                            carn_date
                        FROM
                            carnival
                        WHERE
                            ( carn_name = 'RM Autumn Series Caulfield 2022' )
                            AND eventtype_code = (
                                SELECT
                                    eventtype_code
                                FROM
                                    eventtype
                                WHERE
                                    eventtype_desc = '10 Km Run'
                            )
                    )
            )
    ),
    team_id = (
        SELECT
            team_id
        FROM
            team
        WHERE
            team_name = 'Kai Speedstars'
    )
WHERE
        comp_no = (
            SELECT
                comp_no
            FROM
                competitor
            WHERE
                    comp_fname = 'Daniel'
                AND comp_lname = 'Kai'
        )
    AND event_id = (
        SELECT
            event_id
        FROM
            event
        WHERE
            carn_date = (
                SELECT
                    carn_date
                FROM
                    carnival
                WHERE
                    ( carn_name = 'RM Autumn Series Caulfield 2022' )
                    AND eventtype_code = (
                        SELECT
                            eventtype_code
                        FROM
                            eventtype
                        WHERE
                            eventtype_desc = '21.1 Km Half Marathon'
                    )
            )
    );
    
UPDATE team
SET
    team_no_members = team_no_members + 1
WHERE
    team_name = 'Kai Speedstars';

COMMIT;

--3(e)
DELETE FROM entry
WHERE
        comp_no = (
            SELECT
                comp_no
            FROM
                competitor
            WHERE
                    comp_fname = 'Daniel'
                AND comp_lname = 'Kai'
        )
    AND event_id = (
        SELECT
            event_id
        FROM
            event
        WHERE
                carn_date = (
                    SELECT
                        carn_date
                    FROM
                        carnival
                    WHERE
                        carn_name = 'RM Autumn Series Caulfield 2022'
                )
            AND eventtype_code = (
                SELECT
                    eventtype_code
                FROM
                    eventtype
                WHERE
                    eventtype_desc = '10 Km Run'
            )
    );

DELETE FROM team
WHERE
    team_name = 'Kai Speedstars';

UPDATE entry
SET
    team_id = NULL
WHERE
        comp_no = (
            SELECT
                comp_no
            FROM
                competitor
            WHERE
                    comp_fname = 'Annabelle'
                AND comp_lname = 'Kai'
        )
    AND event_id = (
        SELECT
            event_id
        FROM
            event
        WHERE
            carn_date = (
                SELECT
                    carn_date
                FROM
                    carnival
                WHERE
                    ( carn_name = 'RM Autumn Series Caulfield 2022' )
                    AND eventtype_code = (
                        SELECT
                            eventtype_code
                        FROM
                            eventtype
                        WHERE
                            eventtype_desc = '21.1 Km Half Marathon'
                    )
            )
    );

COMMIT;