--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;


--
-- Name: user_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (1, 'user_1669180224362', 1, 516);
INSERT INTO public.user_info VALUES (2, 'user_1669180224361', 1, 511);
INSERT INTO public.user_info VALUES (3, 'AAA', 1, 12);
INSERT INTO public.user_info VALUES (4, 'BBB', 1, 11);
INSERT INTO public.user_info VALUES (5, 'user_1669180491943', 1, 945);
INSERT INTO public.user_info VALUES (6, 'user_1669180491942', 1, 883);
INSERT INTO public.user_info VALUES (7, 'user_1669180566460', 1, 595);
INSERT INTO public.user_info VALUES (8, 'user_1669180566459', 1, 67);
INSERT INTO public.user_info VALUES (9, 'user_1669180581194', 1, 692);
INSERT INTO public.user_info VALUES (10, 'user_1669180581193', 1, 639);
INSERT INTO public.user_info VALUES (11, 'user_1669180628493', 1, 844);
INSERT INTO public.user_info VALUES (12, 'user_1669180628492', 1, 84);
INSERT INTO public.user_info VALUES (13, 'user_1669180702188', 1, 24);
INSERT INTO public.user_info VALUES (14, 'user_1669180702187', 1, 206);
INSERT INTO public.user_info VALUES (15, 'user_1669180739614', 1, 437);
INSERT INTO public.user_info VALUES (16, 'user_1669180739613', 1, 735);
INSERT INTO public.user_info VALUES (17, 'user_1669180981890', 1, 462);
INSERT INTO public.user_info VALUES (18, 'user_1669180981889', 1, 555);
INSERT INTO public.user_info VALUES (19, 'user_1669181023703', 1, 261);
INSERT INTO public.user_info VALUES (20, 'user_1669181023702', 1, 255);
INSERT INTO public.user_info VALUES (21, 'user_1669181040276', 1, 105);
INSERT INTO public.user_info VALUES (22, 'user_1669181040275', 1, 416);
INSERT INTO public.user_info VALUES (23, 'user_1669181084397', 1, 716);
INSERT INTO public.user_info VALUES (24, 'user_1669181084396', 1, 652);
INSERT INTO public.user_info VALUES (25, 'user_1669181359536', 1, 119);
INSERT INTO public.user_info VALUES (26, 'user_1669181359535', 1, 1000);
INSERT INTO public.user_info VALUES (27, 'user_1669181384936', 1, 919);
INSERT INTO public.user_info VALUES (28, 'user_1669181384935', 1, 619);
INSERT INTO public.user_info VALUES (29, 'user_1669181660236', 1, 84);
INSERT INTO public.user_info VALUES (30, 'user_1669181660235', 1, 282);
INSERT INTO public.user_info VALUES (31, 'user_1669181681091', 1, 2);
INSERT INTO public.user_info VALUES (32, 'user_1669181681090', 1, 2);
INSERT INTO public.user_info VALUES (33, 'user_1669181686961', 1, 6);
INSERT INTO public.user_info VALUES (34, 'user_1669181686960', 1, 9);
INSERT INTO public.user_info VALUES (36, 'user_1669181854059', 1, 9);
INSERT INTO public.user_info VALUES (37, 'user_1669181854058', 1, 8);
INSERT INTO public.user_info VALUES (38, 'user_1669181897287', 1, 9);
INSERT INTO public.user_info VALUES (39, 'user_1669181897286', 1, 9);
INSERT INTO public.user_info VALUES (40, 'user_1669181942115', 1, 4);
INSERT INTO public.user_info VALUES (41, 'user_1669181942114', 1, 11);
INSERT INTO public.user_info VALUES (43, 'user_1669181971796', 1, 5);
INSERT INTO public.user_info VALUES (42, 'user_1669181971797', 1, 3);
INSERT INTO public.user_info VALUES (45, 'user_1669182026304', 2, 10);
INSERT INTO public.user_info VALUES (44, 'user_1669182026305', 5, 10);
INSERT INTO public.user_info VALUES (35, 'CCC', 2, 4);
INSERT INTO public.user_info VALUES (47, 'user_1669182071653', 2, 3);
INSERT INTO public.user_info VALUES (46, 'user_1669182071654', 5, 10);
INSERT INTO public.user_info VALUES (49, 'user_1669182080875', 2, 28);
INSERT INTO public.user_info VALUES (48, 'user_1669182080876', 5, 304);
INSERT INTO public.user_info VALUES (51, 'user_1669182118760', 2, 839);
INSERT INTO public.user_info VALUES (50, 'user_1669182118761', 5, 271);


--
-- Name: user_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_info_user_id_seq', 51, true);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--
