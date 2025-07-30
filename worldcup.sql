--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (337, 2018, 'Final', 621, 622, 4, 2);
INSERT INTO public.games VALUES (338, 2018, 'Third Place', 623, 624, 2, 0);
INSERT INTO public.games VALUES (339, 2018, 'Semi-Final', 622, 624, 2, 1);
INSERT INTO public.games VALUES (340, 2018, 'Semi-Final', 621, 623, 1, 0);
INSERT INTO public.games VALUES (341, 2018, 'Quarter-Final', 622, 625, 3, 2);
INSERT INTO public.games VALUES (342, 2018, 'Quarter-Final', 624, 626, 2, 0);
INSERT INTO public.games VALUES (343, 2018, 'Quarter-Final', 623, 627, 2, 1);
INSERT INTO public.games VALUES (344, 2018, 'Quarter-Final', 621, 628, 2, 0);
INSERT INTO public.games VALUES (345, 2018, 'Eighth-Final', 624, 629, 2, 1);
INSERT INTO public.games VALUES (346, 2018, 'Eighth-Final', 626, 630, 1, 0);
INSERT INTO public.games VALUES (347, 2018, 'Eighth-Final', 623, 631, 3, 2);
INSERT INTO public.games VALUES (348, 2018, 'Eighth-Final', 627, 632, 2, 0);
INSERT INTO public.games VALUES (349, 2018, 'Eighth-Final', 622, 633, 2, 1);
INSERT INTO public.games VALUES (350, 2018, 'Eighth-Final', 625, 634, 2, 1);
INSERT INTO public.games VALUES (351, 2018, 'Eighth-Final', 628, 635, 2, 1);
INSERT INTO public.games VALUES (352, 2018, 'Eighth-Final', 621, 636, 4, 3);
INSERT INTO public.games VALUES (353, 2014, 'Final', 637, 636, 1, 0);
INSERT INTO public.games VALUES (354, 2014, 'Third Place', 638, 627, 3, 0);
INSERT INTO public.games VALUES (355, 2014, 'Semi-Final', 636, 638, 1, 0);
INSERT INTO public.games VALUES (356, 2014, 'Semi-Final', 637, 627, 7, 1);
INSERT INTO public.games VALUES (357, 2014, 'Quarter-Final', 638, 639, 1, 0);
INSERT INTO public.games VALUES (358, 2014, 'Quarter-Final', 636, 623, 1, 0);
INSERT INTO public.games VALUES (359, 2014, 'Quarter-Final', 627, 629, 2, 1);
INSERT INTO public.games VALUES (360, 2014, 'Quarter-Final', 637, 621, 1, 0);
INSERT INTO public.games VALUES (361, 2014, 'Eighth-Final', 627, 640, 2, 1);
INSERT INTO public.games VALUES (362, 2014, 'Eighth-Final', 629, 628, 2, 0);
INSERT INTO public.games VALUES (363, 2014, 'Eighth-Final', 621, 641, 2, 0);
INSERT INTO public.games VALUES (364, 2014, 'Eighth-Final', 637, 642, 2, 1);
INSERT INTO public.games VALUES (365, 2014, 'Eighth-Final', 638, 632, 2, 1);
INSERT INTO public.games VALUES (366, 2014, 'Eighth-Final', 639, 643, 2, 1);
INSERT INTO public.games VALUES (367, 2014, 'Eighth-Final', 636, 630, 1, 0);
INSERT INTO public.games VALUES (368, 2014, 'Eighth-Final', 623, 644, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (621, 'France');
INSERT INTO public.teams VALUES (622, 'Croatia');
INSERT INTO public.teams VALUES (623, 'Belgium');
INSERT INTO public.teams VALUES (624, 'England');
INSERT INTO public.teams VALUES (625, 'Russia');
INSERT INTO public.teams VALUES (626, 'Sweden');
INSERT INTO public.teams VALUES (627, 'Brazil');
INSERT INTO public.teams VALUES (628, 'Uruguay');
INSERT INTO public.teams VALUES (629, 'Colombia');
INSERT INTO public.teams VALUES (630, 'Switzerland');
INSERT INTO public.teams VALUES (631, 'Japan');
INSERT INTO public.teams VALUES (632, 'Mexico');
INSERT INTO public.teams VALUES (633, 'Denmark');
INSERT INTO public.teams VALUES (634, 'Spain');
INSERT INTO public.teams VALUES (635, 'Portugal');
INSERT INTO public.teams VALUES (636, 'Argentina');
INSERT INTO public.teams VALUES (637, 'Germany');
INSERT INTO public.teams VALUES (638, 'Netherlands');
INSERT INTO public.teams VALUES (639, 'Costa Rica');
INSERT INTO public.teams VALUES (640, 'Chile');
INSERT INTO public.teams VALUES (641, 'Nigeria');
INSERT INTO public.teams VALUES (642, 'Algeria');
INSERT INTO public.teams VALUES (643, 'Greece');
INSERT INTO public.teams VALUES (644, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 368, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 644, true);


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

