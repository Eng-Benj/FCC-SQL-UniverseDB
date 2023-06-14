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
    discovery_date date,
    discovered_by character varying(100),
    distance_from_earth_in_pc integer,
    name character varying(100) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    number_away_from_planet integer,
    is_in_habitable_zone boolean,
    name character varying(100) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    number_away_from_star integer,
    type text,
    is_in_habitable_zone boolean,
    name character varying(100) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    temperature_in_kelvin numeric,
    diameter_in_km integer,
    name character varying(100) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(100) NOT NULL,
    creator character varying(100)
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 0, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 250000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 20870000, 'Pinwheel Galaxy');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 30000000, 'Whirlpool Galaxy');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 420000000, 'Tadpole Galaxy');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 600000000, 'Hoags Object');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, NULL, NULL, 'Moon1');
INSERT INTO public.moon VALUES (2, 1, NULL, NULL, 'Moon2');
INSERT INTO public.moon VALUES (3, 2, NULL, NULL, 'Moon3');
INSERT INTO public.moon VALUES (4, 2, NULL, NULL, 'Moon4');
INSERT INTO public.moon VALUES (5, 3, NULL, NULL, 'Moon5');
INSERT INTO public.moon VALUES (6, 3, NULL, NULL, 'Moon6');
INSERT INTO public.moon VALUES (7, 4, NULL, NULL, 'Moon7');
INSERT INTO public.moon VALUES (8, 4, NULL, NULL, 'Moon8');
INSERT INTO public.moon VALUES (9, 5, NULL, NULL, 'Moon9');
INSERT INTO public.moon VALUES (10, 5, NULL, NULL, 'Moon10');
INSERT INTO public.moon VALUES (11, 6, NULL, NULL, 'Moon11');
INSERT INTO public.moon VALUES (12, 6, NULL, NULL, 'Moon12');
INSERT INTO public.moon VALUES (13, 7, NULL, NULL, 'Moon13');
INSERT INTO public.moon VALUES (14, 7, NULL, NULL, 'Moon14');
INSERT INTO public.moon VALUES (15, 8, NULL, NULL, 'Moon15');
INSERT INTO public.moon VALUES (16, 8, NULL, NULL, 'Moon16');
INSERT INTO public.moon VALUES (17, 9, NULL, NULL, 'Moon17');
INSERT INTO public.moon VALUES (18, 9, NULL, NULL, 'Moon18');
INSERT INTO public.moon VALUES (19, 10, NULL, NULL, 'Moon19');
INSERT INTO public.moon VALUES (20, 10, NULL, NULL, 'Moon20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, NULL, NULL, NULL, 'PLanet1');
INSERT INTO public.planet VALUES (2, 1, NULL, NULL, NULL, 'Planet2');
INSERT INTO public.planet VALUES (3, 2, NULL, NULL, NULL, 'Planet3');
INSERT INTO public.planet VALUES (4, 2, NULL, NULL, NULL, 'Planet4');
INSERT INTO public.planet VALUES (5, 3, NULL, NULL, NULL, 'Planet5');
INSERT INTO public.planet VALUES (6, 3, NULL, NULL, NULL, 'Planet6');
INSERT INTO public.planet VALUES (7, 4, NULL, NULL, NULL, 'Planet7');
INSERT INTO public.planet VALUES (8, 4, NULL, NULL, NULL, 'Planet8');
INSERT INTO public.planet VALUES (9, 5, NULL, NULL, NULL, 'Planet9');
INSERT INTO public.planet VALUES (10, 5, NULL, NULL, NULL, 'Planet10');
INSERT INTO public.planet VALUES (11, 6, NULL, NULL, NULL, 'Planet11');
INSERT INTO public.planet VALUES (12, 6, NULL, NULL, NULL, 'Planet12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, NULL, NULL, 'Star1');
INSERT INTO public.star VALUES (2, 2, NULL, NULL, 'Star2');
INSERT INTO public.star VALUES (3, 3, NULL, NULL, 'Star3');
INSERT INTO public.star VALUES (4, 4, NULL, NULL, 'Star4');
INSERT INTO public.star VALUES (5, 5, NULL, NULL, 'Star5');
INSERT INTO public.star VALUES (6, 6, NULL, NULL, 'Star6');


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Our Universe', NULL);
INSERT INTO public.universe VALUES (2, 'Marvel Cinematic Universe', NULL);
INSERT INTO public.universe VALUES (3, 'DC Universe', NULL);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_universe_id_key UNIQUE (universe_id);


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
