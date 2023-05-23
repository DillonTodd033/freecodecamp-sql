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
    name character varying(30),
    age_in_years integer NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    diameter numeric(8,1)
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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_years numeric(10,1)
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_years integer NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL,
    description text,
    diamter numeric(8,1)
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
    age_in_years integer NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    description text,
    diameter numeric(8,1)
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
    age_in_years integer NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    description text,
    diamter numeric(8,1)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'test1', 1, 1, false, true, 'test1', 1.1);
INSERT INTO public.galaxy VALUES (2, 'test2', 2, 2, true, false, 'test2', 2.2);
INSERT INTO public.galaxy VALUES (3, 'test3', 3, 3, false, true, 'test3', 3.3);
INSERT INTO public.galaxy VALUES (4, 'test4', 4, 4, true, false, 'test4', 4.4);
INSERT INTO public.galaxy VALUES (5, 'test5', 5, 5, false, true, 'test5', 5.5);
INSERT INTO public.galaxy VALUES (6, 'test6', 6, 6, true, false, 'test6', 6.6);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'test', 10.1);
INSERT INTO public.meteor VALUES (2, 'test1', 11.1);
INSERT INTO public.meteor VALUES (3, 'test2', 12.1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'test1', 1, 1, true, true, 1, 'test1', 1.1);
INSERT INTO public.moon VALUES (2, 'test2', 2, 2, false, false, 2, 'test2', 2.2);
INSERT INTO public.moon VALUES (3, 'test3', 3, 3, true, true, 3, 'test3', 3.3);
INSERT INTO public.moon VALUES (4, 'test4', 4, 4, false, false, 4, 'test4', 4.4);
INSERT INTO public.moon VALUES (5, 'test5', 5, 5, true, true, 5, 'test5', 5.5);
INSERT INTO public.moon VALUES (6, 'test6', 6, 6, false, false, 6, 'test6', 6.6);
INSERT INTO public.moon VALUES (7, 'test7', 7, 7, true, true, 7, 'test7', 7.7);
INSERT INTO public.moon VALUES (8, 'test8', 8, 8, false, false, 8, 'test8', 8.8);
INSERT INTO public.moon VALUES (9, 'test9', 9, 9, true, true, 9, 'test9', 9.9);
INSERT INTO public.moon VALUES (10, 'test10', 10, 10, false, false, 10, 'test10', 10.1);
INSERT INTO public.moon VALUES (11, 'test11', 11, 11, true, true, 11, 'test11', 11.1);
INSERT INTO public.moon VALUES (12, 'test12', 12, 12, false, false, 12, 'test12', 12.1);
INSERT INTO public.moon VALUES (13, 'test13', 13, 13, true, true, 1, 'test13', 13.1);
INSERT INTO public.moon VALUES (14, 'test14', 14, 14, false, false, 2, 'test14', 14.1);
INSERT INTO public.moon VALUES (15, 'test15', 15, 15, true, true, 3, 'test15', 15.1);
INSERT INTO public.moon VALUES (16, 'test16', 16, 16, false, false, 4, 'test16', 16.1);
INSERT INTO public.moon VALUES (17, 'test17', 17, 17, true, true, 5, 'test17', 17.1);
INSERT INTO public.moon VALUES (18, 'test18', 18, 18, false, false, 6, 'test18', 18.1);
INSERT INTO public.moon VALUES (19, 'test19', 19, 19, true, true, 7, 'test19', 19.1);
INSERT INTO public.moon VALUES (20, 'test20', 20, 20, false, false, 8, 'test20', 20.1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'test1', 1, 1, false, false, 1, 'test1', 1.1);
INSERT INTO public.planet VALUES (2, 'test2', 2, 2, true, true, 2, 'test2', 2.2);
INSERT INTO public.planet VALUES (3, 'test3', 3, 3, false, false, 3, 'test3', 3.3);
INSERT INTO public.planet VALUES (4, 'test4', 4, 4, true, true, 4, 'test4', 4.4);
INSERT INTO public.planet VALUES (5, 'test5', 5, 5, false, false, 5, 'test5', 5.5);
INSERT INTO public.planet VALUES (6, 'test6', 6, 6, true, true, 6, 'test6', 6.6);
INSERT INTO public.planet VALUES (7, 'test7', 7, 7, false, false, 1, 'test7', 7.7);
INSERT INTO public.planet VALUES (8, 'test8', 8, 8, true, true, 2, 'test8', 8.8);
INSERT INTO public.planet VALUES (9, 'test9', 9, 9, false, false, 3, 'test9', 9.9);
INSERT INTO public.planet VALUES (10, 'test10', 10, 10, false, false, 4, 'test10', 10.1);
INSERT INTO public.planet VALUES (11, 'test11', 11, 11, true, true, 5, 'test11', 11.1);
INSERT INTO public.planet VALUES (12, 'test12', 12, 12, false, false, 6, 'test12', 12.1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'text1', 1, 1, true, true, 1, 'text1', 1.1);
INSERT INTO public.star VALUES (2, 'text2', 2, 2, false, false, 2, 'text2', 2.2);
INSERT INTO public.star VALUES (3, 'test3', 3, 3, true, true, 3, 'test3', 3.3);
INSERT INTO public.star VALUES (4, 'test4', 4, 4, false, false, 4, 'test4', 4.4);
INSERT INTO public.star VALUES (5, 'test5', 5, 5, true, true, 5, 'test5', 5.5);
INSERT INTO public.star VALUES (6, 'test6', 6, 6, false, false, 6, 'test6', 6.6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

