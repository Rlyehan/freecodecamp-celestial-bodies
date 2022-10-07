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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(50) NOT NULL,
    third_column integer
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    planet_types integer,
    astronomical_name character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    planet_types integer,
    astronomical_name character varying(50),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    planet_types integer,
    astronomical_name character varying(50),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    planet_types integer,
    astronomical_name character varying(50),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'cluster1', NULL);
INSERT INTO public.cluster VALUES (2, 'cluster2', NULL);
INSERT INTO public.cluster VALUES (3, 'cluster3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'antennae', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'backward', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'black eye', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'butterfly', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'cartwheel', NULL, NULL, NULL, true, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'e', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'f', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'g', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'h', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'i', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'j', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'k', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'l', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'm', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'n', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'o', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'p', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'q', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'r', NULL, NULL, NULL, true, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (19, 's', NULL, NULL, NULL, true, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 't', NULL, NULL, NULL, true, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (21, 'u', NULL, NULL, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (22, 'v', NULL, NULL, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (23, 'w', NULL, NULL, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (24, 'x', NULL, NULL, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (25, 'y', NULL, NULL, NULL, false, NULL, NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'd', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'e', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'f', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'g', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'h', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'i', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'j', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'k', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'l', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (13, 'm', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (14, 'n', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (15, 'o', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (16, 'a', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'b', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (18, 'c', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 'd', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (20, 'e', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (21, 'f', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (22, 'g', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (23, 'h', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (24, 'i', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (25, 'j', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (26, 'k', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (27, 'l', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (28, 'm', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (29, 'n', NULL, NULL, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (30, 'o', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (31, 'p', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (32, 'q', NULL, NULL, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (33, 'r', NULL, NULL, NULL, true, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (34, 's', NULL, NULL, NULL, true, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (35, 't', NULL, NULL, NULL, true, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (36, 'u', NULL, NULL, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (37, 'v', NULL, NULL, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (38, 'w', NULL, NULL, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (39, 'x', NULL, NULL, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (40, 'y', NULL, NULL, NULL, false, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'b', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'c', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'd', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'e', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'f', NULL, NULL, NULL, true, NULL, NULL, NULL, 1);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 3, true);


--
-- Name: galaxy_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cluster cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_name_key UNIQUE (name);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


--
-- Name: galaxy galaxy_astronomical_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_astronomical_name_key UNIQUE (astronomical_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_astronomical_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_astronomical_name_key UNIQUE (astronomical_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_astronomical_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_astronomical_name_key UNIQUE (astronomical_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_astronomical_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_astronomical_name_key UNIQUE (astronomical_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

