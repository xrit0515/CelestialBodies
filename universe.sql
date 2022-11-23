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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    "position" integer,
    distance_from_earth numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: lastone; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lastone (
    lastone_id integer NOT NULL,
    name character varying(30) NOT NULL,
    quantity integer
);


ALTER TABLE public.lastone OWNER TO freecodecamp;

--
-- Name: lastone_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lastone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lastone_id_seq OWNER TO freecodecamp;

--
-- Name: lastone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lastone_id_seq OWNED BY public.lastone.lastone_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer,
    "position" integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    "position" integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer,
    "position" integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: lastone lastone_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lastone ALTER COLUMN lastone_id SET DEFAULT nextval('public.lastone_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G_A', 50, 2, 10000, 'This is the first galaxy, A', true);
INSERT INTO public.galaxy VALUES (2, 'G_B', 55, 3, 15000, 'This is the first galaxy, B', true);
INSERT INTO public.galaxy VALUES (3, 'G_C', 100, 4, 18000, 'This is the first galaxy, C', false);
INSERT INTO public.galaxy VALUES (4, 'G_D', 40, 5, 20000, 'This is the first galaxy, D', true);
INSERT INTO public.galaxy VALUES (5, 'G_E', 43, 6, 25000, 'This is the first galaxy, E', true);
INSERT INTO public.galaxy VALUES (6, 'G_F', 70, 7, 29000, 'This is the first galaxy, F', true);


--
-- Data for Name: lastone; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lastone VALUES (1, 'Test A', NULL);
INSERT INTO public.lastone VALUES (2, 'Test B', NULL);
INSERT INTO public.lastone VALUES (3, 'Test C', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M_A', 11, 2, 101, 'This is the mooon ,A', true, 1);
INSERT INTO public.moon VALUES (2, 'M_B', 12, 3, 102, 'This is the mooon ,B', true, 1);
INSERT INTO public.moon VALUES (3, 'M_C', 13, 4, 103, 'This is the mooon ,C', true, 1);
INSERT INTO public.moon VALUES (4, 'M_D', 16, 5, 104, 'This is the mooon ,D', true, 1);
INSERT INTO public.moon VALUES (5, 'M_E', 17, 6, 105, 'This is the mooon ,E', true, 1);
INSERT INTO public.moon VALUES (6, 'M_F', 21, 7, 201, 'This is the mooon ,F', true, 2);
INSERT INTO public.moon VALUES (7, 'M_G', 22, 8, 202, 'This is the mooon ,G', true, 2);
INSERT INTO public.moon VALUES (8, 'M_H', 23, 9, 203, 'This is the mooon ,H', true, 2);
INSERT INTO public.moon VALUES (9, 'M_I', 24, 10, 204, 'This is the mooon ,I', true, 2);
INSERT INTO public.moon VALUES (10, 'M_J', 25, 11, 205, 'This is the mooon ,J', true, 2);
INSERT INTO public.moon VALUES (11, 'M_K', 31, 12, 301, 'This is the mooon ,K', true, 2);
INSERT INTO public.moon VALUES (12, 'M_L', 32, 13, 302, 'This is the mooon ,L', true, 2);
INSERT INTO public.moon VALUES (13, 'M_M', 33, 14, 303, 'This is the mooon ,M', true, 2);
INSERT INTO public.moon VALUES (14, 'M_N', 34, 15, 304, 'This is the mooon ,N', true, 2);
INSERT INTO public.moon VALUES (15, 'M_O', 35, 16, 305, 'This is the mooon ,O', true, 2);
INSERT INTO public.moon VALUES (16, 'M_P', 41, 17, 401, 'This is the mooon ,P', true, 3);
INSERT INTO public.moon VALUES (17, 'M_R', 42, 18, 402, 'This is the mooon ,R', true, 3);
INSERT INTO public.moon VALUES (18, 'M_S', 43, 19, 403, 'This is the mooon ,S', true, 4);
INSERT INTO public.moon VALUES (19, 'M_T', 44, 20, 404, 'This is the mooon ,T', true, 4);
INSERT INTO public.moon VALUES (20, 'M_U', 45, 21, 405, 'This is the mooon ,U', true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P_A', 21, 2, 201, 'This is the planet, A', true, 1);
INSERT INTO public.planet VALUES (2, 'P_B', 31, 3, 301, 'This is the planet, B', false, 2);
INSERT INTO public.planet VALUES (3, 'P_C', 41, 4, 401, 'This is the planet, C', true, 3);
INSERT INTO public.planet VALUES (4, 'P_D', 51, 5, 501, 'This is the planet, D', true, 4);
INSERT INTO public.planet VALUES (5, 'P_E', 61, 6, 601, 'This is the planet, E', true, 5);
INSERT INTO public.planet VALUES (6, 'P_F', 62, 7, 602, 'This is the planet, F', true, 6);
INSERT INTO public.planet VALUES (7, 'P_G', 63, 8, 603, 'This is the planet, G', true, 6);
INSERT INTO public.planet VALUES (8, 'P_H', 64, 9, 604, 'This is the planet, H', true, 6);
INSERT INTO public.planet VALUES (9, 'P_I', 74, 10, 704, 'This is the planet, I', true, 6);
INSERT INTO public.planet VALUES (10, 'P_J', 84, 11, 804, 'This is the planet, J', true, 5);
INSERT INTO public.planet VALUES (11, 'P_K', 94, 12, 904, 'This is the planet, K', true, 5);
INSERT INTO public.planet VALUES (12, 'P_L', 44, 13, 404, 'This is the planet, L', true, 4);
INSERT INTO public.planet VALUES (13, 'P_M', 45, 15, 405, 'This is the planet, M', true, 4);
INSERT INTO public.planet VALUES (14, 'P_O', 46, 16, 406, 'This is the planet, O', true, 3);
INSERT INTO public.planet VALUES (15, 'P_P', 50, 17, 408, 'This is the planet, P', true, 2);
INSERT INTO public.planet VALUES (16, 'P_Q', 51, 18, 409, 'This is the planet, Q', true, 2);
INSERT INTO public.planet VALUES (17, 'P_R', 52, 19, 410, 'This is the planet, R', true, 2);
INSERT INTO public.planet VALUES (18, 'P_S', 54, 20, 412, 'This is the planet, S', true, 1);
INSERT INTO public.planet VALUES (19, 'P_T', 59, 22, 419, 'This is the planet, T', false, 1);
INSERT INTO public.planet VALUES (20, 'P_U', 69, 23, 429, 'This is the planet, U', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S_A', 30, 2, 31, 'This is a star, A', true, 1);
INSERT INTO public.star VALUES (2, 'S_B', 40, 3, 41, 'This is a star, B', false, 2);
INSERT INTO public.star VALUES (3, 'S_C', 50, 4, 51, 'This is a star, C', true, 3);
INSERT INTO public.star VALUES (4, 'S_D', 60, 5, 61, 'This is a star, D', true, 4);
INSERT INTO public.star VALUES (5, 'S_E', 70, 6, 71, 'This is a star, E', true, 5);
INSERT INTO public.star VALUES (6, 'S_F', 80, 7, 81, 'This is a star, F', true, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: lastone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lastone_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 20, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_position_key UNIQUE ("position");


--
-- Name: lastone lastone_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lastone
    ADD CONSTRAINT lastone_name_key UNIQUE (name);


--
-- Name: lastone lastone_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lastone
    ADD CONSTRAINT lastone_pkey PRIMARY KEY (lastone_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_position_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_position_key UNIQUE ("position");


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

