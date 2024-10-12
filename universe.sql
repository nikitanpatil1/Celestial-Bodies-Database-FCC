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
    name character varying(30) NOT NULL,
    constellation character varying(30),
    distance_in_light_years integer,
    diameter integer
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
    name character varying(30) NOT NULL,
    moon_of_planet character varying(30),
    distance_from_planet_km integer,
    description text,
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
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    has_life boolean,
    is_spherical boolean,
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
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age numeric(5,2)
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    spectral_type character varying(10),
    colour character varying(30),
    temperature_in_kelvin integer,
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
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 0, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda', 2500000, 220000);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'Ursa Major', 11500000, 37000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 'Ursa Major', 20870000, 170000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Virgo', 29350000, 50000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Canes Venatici', 30000000, 60000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 384400, 'Earth’s sole natural satellite and nearest large celestial body', 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Mars', 23458, 'Deimos, the outer and smaller of Mars’s two moons', 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Mars', 9378, 'Phobos, the inner and larger of Mars’s two moons', 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 'Jupiter', 181000, 'Small, potato-shaped moon of the planet Jupiter and the only Jovian satellite', 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Jupiter', 1883000, 'Callisto, outermost of the four large moons Galilean satellites', 5);
INSERT INTO public.moon VALUES (6, 'Europa', 'Jupiter', 671000, 'Europa, the smallest and second nearest of the four large moons Galilean satellites', 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Jupiter', 1070000, 'Ganymede, largest of Jupiter’s satellites and of all the satellites in the solar system', 5);
INSERT INTO public.moon VALUES (8, 'Io', 'Jupiter', 422000, 'Io, innermost of the four large moons Galilean satellites discovered around Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Dione', 'Saturn', 377400, 'Dione, fourth nearest of the major regular moons of Saturn', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Saturn', 238020, 'Enceladus, second nearest of the major regular moons of Saturn and the brightest of all its moons', 6);
INSERT INTO public.moon VALUES (11, 'Hyperion', 'Saturn', 1481100, 'Hyperion, major moon of Saturn, notable in that it has no regular rotation period but tumbles in an apparently random fashion in its orbit', 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 'Saturn', 3561300, 'Iapetus, outermost of Saturn’s major regular moons, extraordinary because of its great contrast in surface brightness', 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Uranus', 190900, 'Ariel, second nearest of the five major moons of Uranus', 8);
INSERT INTO public.moon VALUES (14, 'Miranda', 'Uranus', 129800, 'Miranda, innermost and smallest of the five major moons of Uranus and, topographically, the most varied of the group', 8);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Uranus', 582600, 'Oberon, outermost of the five major moons of Uranus and the second largest of the group', 8);
INSERT INTO public.moon VALUES (16, 'Titania', 'Uranus', 435840, 'Titania, largest of the moons of Uranus', 8);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Uranus', 265970, 'Umbriel, third nearest of the five major moons of Uranus and the one having the darkest and oldest surface of the group', 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 'Neptune', 5513400, 'Nereid, third largest known moon of Neptune and the second to be discovered', 9);
INSERT INTO public.moon VALUES (19, 'Triton', 'Neptune', 354800, 'Triton, largest of Neptune’s moons, whose unusual orbital characteristics suggest that it formed elsewhere in the solar system and was later captured by Neptune', 9);
INSERT INTO public.moon VALUES (20, 'Charon', 'Pluto', 19640, 'Charon, largest moon of the dwarf planet Pluto', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, true, 5);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, true, 5);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, true, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', false, true, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giants', false, true, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giants', false, true, 5);
INSERT INTO public.planet VALUES (7, 'Hot Jupiter', 'Gas Giants', false, true, 5);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Ice Giants', false, true, 5);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Ice Giants', false, true, 5);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Dwarf', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Dwarf', false, true, 5);
INSERT INTO public.planet VALUES (12, 'Eris', 'Dwarf', false, true, 5);
INSERT INTO public.planet VALUES (13, 'Kepler-52b', 'Chthonian', false, true, 5);
INSERT INTO public.planet VALUES (14, 'Kepler-52c', 'Chthonian', false, true, 5);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (1, 'Celestial bodies', ' Space contains stars, planets, satellites, comets, asteroids, and meteorites', NULL);
INSERT INTO public.space VALUES (2, 'Interstellar medium', 'Space is filled with scattered matter, called the interstellar medium, which includes hydrogen and helium atoms', NULL);
INSERT INTO public.space VALUES (3, 'Radiation', 'Space is filled with radiation, such as light and heat', NULL);
INSERT INTO public.space VALUES (4, 'Magnetic fields', 'Space contains magnetic fields', NULL);
INSERT INTO public.space VALUES (5, 'High energy particles', 'Space contains high energy particles, such as cosmic rays', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '10 Lacerta', 'O', 'Blue', 40000, 1);
INSERT INTO public.star VALUES (2, 'Rigel', 'B', 'Blue', 20000, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'A', 'Blue', 8500, 1);
INSERT INTO public.star VALUES (4, 'Procyon', 'F', 'Blue/White', 6500, 1);
INSERT INTO public.star VALUES (5, 'Sun', 'G', 'White/Yellow', 5700, 1);
INSERT INTO public.star VALUES (6, 'Arcturus', 'K', 'Orange/Red', 4500, 1);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 'M', 'Red', 3200, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: space space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_name_key UNIQUE (name);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
