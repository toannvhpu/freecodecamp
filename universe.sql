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
-- Name: blackholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholes (
    blackholes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric NOT NULL
);


ALTER TABLE public.blackholes OWNER TO freecodecamp;

--
-- Name: blackholes_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_hole_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_hole_id_seq OWNED BY public.blackholes.blackholes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    num_of_plannet integer,
    num_of_sun integer,
    age numeric,
    other_name text,
    is_live boolean NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    num_of_satellite integer,
    num_of_volcano integer,
    age numeric,
    other_name text,
    is_live boolean NOT NULL,
    is_active boolean NOT NULL,
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
    name character varying(30),
    num_of_satellite integer,
    num_of_volcano integer,
    age numeric,
    other_name text,
    is_live boolean NOT NULL,
    is_active boolean NOT NULL,
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
    name character varying(30),
    num_of_satellite integer,
    num_of_volcano integer,
    age numeric,
    other_name text,
    is_live boolean NOT NULL,
    is_active boolean NOT NULL,
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
-- Name: blackholes blackholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes ALTER COLUMN blackholes_id SET DEFAULT nextval('public.blackholes_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: blackholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholes VALUES (1, 'White', 100);
INSERT INTO public.blackholes VALUES (2, 'Dark', 200);
INSERT INTO public.blackholes VALUES (3, 'Toan', 400);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', 100, 1, 23, 'none', true, true);
INSERT INTO public.galaxy VALUES (2, 'G2', 10, 1, 30, 'none', true, true);
INSERT INTO public.galaxy VALUES (3, 'G3', 10, 1, 30, 'none', true, false);
INSERT INTO public.galaxy VALUES (4, 'G4', 10, 1, 30, 'none', false, false);
INSERT INTO public.galaxy VALUES (5, 'G5', 90, 1, 230, 'SpiderVerse', false, false);
INSERT INTO public.galaxy VALUES (6, 'G6', 90, 1, 1130, 'EVerse', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.moon VALUES (2, 'M2', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.moon VALUES (3, 'M3', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.moon VALUES (4, 'M4', 3, 5, 1, 'wqsfa', true, false, 4);
INSERT INTO public.moon VALUES (5, 'M5', 4, 3, 5, 'trw', false, false, 5);
INSERT INTO public.moon VALUES (6, 'M6', 712, 6, 5, 'AKDjN', true, true, 6);
INSERT INTO public.moon VALUES (7, 'M12', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.moon VALUES (8, 'M11', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.moon VALUES (9, 'M10', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.moon VALUES (10, 'M9', 3, 5, 1, 'wqsfa', true, false, 4);
INSERT INTO public.moon VALUES (11, 'M8', 4, 3, 5, 'trw', false, false, 5);
INSERT INTO public.moon VALUES (12, 'M7', 712, 6, 5, 'AKDjN', true, true, 6);
INSERT INTO public.moon VALUES (13, 'M18', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.moon VALUES (14, 'M17', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.moon VALUES (15, 'M16', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.moon VALUES (16, 'M15', 3, 5, 1, 'wqsfa', true, false, 4);
INSERT INTO public.moon VALUES (17, 'M14', 4, 3, 5, 'trw', false, false, 5);
INSERT INTO public.moon VALUES (18, 'M13', 712, 6, 5, 'AKDjN', true, true, 6);
INSERT INTO public.moon VALUES (19, 'M24', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.moon VALUES (20, 'M23', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.moon VALUES (21, 'M22', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.moon VALUES (22, 'M21', 3, 5, 1, 'wqsfa', true, false, 4);
INSERT INTO public.moon VALUES (23, 'M20', 4, 3, 5, 'trw', false, false, 5);
INSERT INTO public.moon VALUES (24, 'M19', 712, 6, 5, 'AKDjN', true, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.planet VALUES (2, 'P2', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.planet VALUES (3, 'P3', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.planet VALUES (4, 'P4', 3, 5, 1, 'wqsfa', true, false, 4);
INSERT INTO public.planet VALUES (5, 'P5', 4, 3, 5, 'trw', false, false, 5);
INSERT INTO public.planet VALUES (6, 'P6', 712, 6, 5, 'AKDjN', true, true, 6);
INSERT INTO public.planet VALUES (7, 'P12', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.planet VALUES (8, 'P11', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.planet VALUES (9, 'P10', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.planet VALUES (10, 'P9', 3, 5, 1, 'wqsfa', true, false, 4);
INSERT INTO public.planet VALUES (11, 'P8', 4, 3, 5, 'trw', false, false, 5);
INSERT INTO public.planet VALUES (12, 'P7', 712, 6, 5, 'AKDjN', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', 90, 1, 1130, 'EVerse', true, false, 1);
INSERT INTO public.star VALUES (2, 'S2', 3, 1, 2, 'ecsd', true, true, 2);
INSERT INTO public.star VALUES (3, 'S3', 2, 1, 12, 'rqws', false, true, 3);
INSERT INTO public.star VALUES (4, 'S6', 90, 1, 1130, 'EVerse', true, false, 6);
INSERT INTO public.star VALUES (5, 'S5', 3, 1, 2, 'ecsd', true, true, 5);
INSERT INTO public.star VALUES (6, 'S4', 2, 1, 12, 'rqws', false, true, 4);


--
-- Name: blackholes_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackholes blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackholes_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: blackholes u_bh_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT u_bh_name UNIQUE (name);


--
-- Name: galaxy u_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_galaxy_name UNIQUE (name);


--
-- Name: moon u_m_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_m_name UNIQUE (name);


--
-- Name: planet u_p_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_p_name UNIQUE (name);


--
-- Name: star u_s_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_s_name UNIQUE (name);


--
-- Name: moon m_fk_p; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_fk_p FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet p_fk_s; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT p_fk_s FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star s_fk_g; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_fk_g FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

