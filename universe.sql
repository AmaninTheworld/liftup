--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_name character varying(30),
    description text,
    galaxy_type character varying(15),
    size_in_ly integer,
    id2 integer NOT NULL,
    name character varying(10)
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
-- Name: galaxy_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id2_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id2_seq OWNED BY public.galaxy.id2;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_name character varying(30),
    moon_type character varying(15),
    raduis_in_km integer,
    id2 integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id2_seq OWNER TO freecodecamp;

--
-- Name: moon_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id2_seq OWNED BY public.moon.id2;


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
    planet_name character varying(30),
    star_name character varying(30),
    raduis_in_km integer,
    planet_type character varying(15),
    id2 integer NOT NULL,
    name character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id2_seq OWNER TO freecodecamp;

--
-- Name: planet_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id2_seq OWNED BY public.planet.id2;


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
    star_name character varying(30),
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,1),
    radius_level integer,
    is_spherical boolean,
    galaxy_name character varying(30),
    id2 integer NOT NULL,
    name character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id2_seq OWNER TO freecodecamp;

--
-- Name: star_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id2_seq OWNED BY public.star.id2;


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
-- Name: subuniverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.subuniverse (
    name character varying(30),
    subuniverse_id integer NOT NULL,
    radius_ly integer,
    id2 integer NOT NULL
);


ALTER TABLE public.subuniverse OWNER TO freecodecamp;

--
-- Name: subuniverse_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.subuniverse_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subuniverse_id2_seq OWNER TO freecodecamp;

--
-- Name: subuniverse_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.subuniverse_id2_seq OWNED BY public.subuniverse.id2;


--
-- Name: subuniverse_uni_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.subuniverse_uni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subuniverse_uni_id_seq OWNER TO freecodecamp;

--
-- Name: subuniverse_uni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.subuniverse_uni_id_seq OWNED BY public.subuniverse.subuniverse_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy id2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id2 SET DEFAULT nextval('public.galaxy_id2_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon id2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id2 SET DEFAULT nextval('public.moon_id2_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet id2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id2 SET DEFAULT nextval('public.planet_id2_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star id2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id2 SET DEFAULT nextval('public.star_id2_seq'::regclass);


--
-- Name: subuniverse subuniverse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.subuniverse ALTER COLUMN subuniverse_id SET DEFAULT nextval('public.subuniverse_uni_id_seq'::regclass);


--
-- Name: subuniverse id2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.subuniverse ALTER COLUMN id2 SET DEFAULT nextval('public.subuniverse_id2_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, NULL, NULL, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon3', 'planet3', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'planet1', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon1', 'planet2', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'planet3', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'planet4', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 'planet4', NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 'planet4', NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 'planet5', NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 'planet5', NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 'planet5', NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 'planet5', NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 'planet5', NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 'planet6', NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 'planet6', NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 'planet6', NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 'planet6', NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 'planet6', NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 'planet7', NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 'planet7', NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'moon20', 'planet7', NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'star1', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 'star1', NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 'star1', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 'star2', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 'star2', NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 'star2', NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', 'star3', NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', 'star3', NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 'star3', NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', 'star4', NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', 'star4', NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', 'star5', NULL, NULL, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy1', 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy1', 2, NULL);
INSERT INTO public.star VALUES (3, 'star3', NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy1', 3, NULL);
INSERT INTO public.star VALUES (4, 'star4', NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy2', 4, NULL);
INSERT INTO public.star VALUES (5, 'star5', NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy2', 5, NULL);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy3', 6, NULL);


--
-- Data for Name: subuniverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.subuniverse VALUES ('uni1', 1, NULL, 1);
INSERT INTO public.subuniverse VALUES ('uni2', 2, NULL, 2);
INSERT INTO public.subuniverse VALUES ('uni3', 3, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id2_seq', 6, true);


--
-- Name: moon_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id2_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id2_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id2_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: subuniverse_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.subuniverse_id2_seq', 3, true);


--
-- Name: subuniverse_uni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.subuniverse_uni_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: subuniverse subuniverse_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.subuniverse
    ADD CONSTRAINT subuniverse_name_key UNIQUE (name);


--
-- Name: subuniverse subuniverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.subuniverse
    ADD CONSTRAINT subuniverse_pkey PRIMARY KEY (subuniverse_id);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

