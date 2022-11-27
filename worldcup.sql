--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    round character varying(60) NOT NULL,
    year integer NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('Final', 2018, 450, 395, 396, 4, 2);
INSERT INTO public.games VALUES ('Third Place', 2018, 451, 397, 398, 2, 0);
INSERT INTO public.games VALUES ('Semi-Final', 2018, 452, 396, 398, 2, 1);
INSERT INTO public.games VALUES ('Semi-Final', 2018, 453, 395, 397, 1, 0);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 454, 396, 399, 3, 2);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 455, 398, 400, 2, 0);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 456, 397, 401, 2, 1);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 457, 395, 402, 2, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 458, 398, 403, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 459, 400, 404, 1, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 460, 397, 405, 3, 2);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 461, 401, 406, 2, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 462, 396, 407, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 463, 399, 408, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 464, 402, 409, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 465, 395, 410, 4, 3);
INSERT INTO public.games VALUES ('Final', 2014, 466, 411, 410, 1, 0);
INSERT INTO public.games VALUES ('Third Place', 2014, 467, 412, 401, 3, 0);
INSERT INTO public.games VALUES ('Semi-Final', 2014, 468, 410, 412, 1, 0);
INSERT INTO public.games VALUES ('Semi-Final', 2014, 469, 411, 401, 7, 1);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 470, 412, 413, 1, 0);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 471, 410, 397, 1, 0);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 472, 401, 403, 2, 1);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 473, 411, 395, 1, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 474, 401, 414, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 475, 403, 402, 2, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 476, 395, 415, 2, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 477, 411, 416, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 478, 412, 406, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 479, 413, 417, 2, 1);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 480, 410, 404, 1, 0);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 481, 397, 418, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (395, 'France');
INSERT INTO public.teams VALUES (396, 'Croatia');
INSERT INTO public.teams VALUES (397, 'Belgium');
INSERT INTO public.teams VALUES (398, 'England');
INSERT INTO public.teams VALUES (399, 'Russia');
INSERT INTO public.teams VALUES (400, 'Sweden');
INSERT INTO public.teams VALUES (401, 'Brazil');
INSERT INTO public.teams VALUES (402, 'Uruguay');
INSERT INTO public.teams VALUES (403, 'Colombia');
INSERT INTO public.teams VALUES (404, 'Switzerland');
INSERT INTO public.teams VALUES (405, 'Japan');
INSERT INTO public.teams VALUES (406, 'Mexico');
INSERT INTO public.teams VALUES (407, 'Denmark');
INSERT INTO public.teams VALUES (408, 'Spain');
INSERT INTO public.teams VALUES (409, 'Portugal');
INSERT INTO public.teams VALUES (410, 'Argentina');
INSERT INTO public.teams VALUES (411, 'Germany');
INSERT INTO public.teams VALUES (412, 'Netherlands');
INSERT INTO public.teams VALUES (413, 'Costa Rica');
INSERT INTO public.teams VALUES (414, 'Chile');
INSERT INTO public.teams VALUES (415, 'Nigeria');
INSERT INTO public.teams VALUES (416, 'Algeria');
INSERT INTO public.teams VALUES (417, 'Greece');
INSERT INTO public.teams VALUES (418, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 481, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 418, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

