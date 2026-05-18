--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2026-05-18 09:55:58

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

--
-- TOC entry 4786 (class 1262 OID 16398)
-- Name: provincias; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE provincias WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';


ALTER DATABASE provincias OWNER TO postgres;

\connect provincias

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
-- TOC entry 216 (class 1259 OID 16400)
-- Name: provincias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincias (
    id integer NOT NULL,
    name character varying NOT NULL,
    latitude numeric NOT NULL,
    longitude numeric NOT NULL,
    fullname character varying NOT NULL,
    displayorder character varying NOT NULL
);


ALTER TABLE public.provincias OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: provincias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.provincias ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.provincias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4780 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (1, 'BA', -34.607568, -58.437089, 'Buenos Aires', '1');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (2, 'CABA', -34.603722, -58.381592, 'Ciudad Autónoma de Buenos Aires', '2');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (3, 'CT', -31.420083, -64.188776, 'Córdoba', '3');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (4, 'SF', -31.633329, -60.700001, 'Santa Fe', '4');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (5, 'MZ', -32.890183, -68.844049, 'Mendoza', '5');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (6, 'TU', -26.824140, -65.222602, 'Tucumán', '6');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (7, 'SA', -24.782126, -65.423198, 'Salta', '7');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (8, 'SJ', -31.537500, -68.536389, 'San Juan', '8');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (9, 'RN', -39.033333, -67.583333, 'Río Negro', '9');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (10, 'CH', -43.300000, -65.100000, 'Chubut', '10');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (11, 'NE', -38.951610, -68.059097, 'Neuquén', '11');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (12, 'LP', -36.616667, -64.283333, 'La Pampa', '12');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (13, 'ER', -31.731970, -60.523800, 'Entre Ríos', '13');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (14, 'SJG', -33.295000, -66.335000, 'San Luis', '14');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (15, 'FO', -26.183333, -58.183333, 'Formosa', '15');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (16, 'MI', -27.366667, -55.883333, 'Misiones', '16');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (17, 'SE', -27.783333, -64.266667, 'Santiago del Estero', '17');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (18, 'JU', -24.183333, -65.300000, 'Jujuy', '18');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (19, 'CO', -27.483333, -58.816667, 'Corrientes', '19');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (20, 'LR', -29.413056, -66.855833, 'La Rioja', '20');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (21, 'SC', -51.633333, -69.216667, 'Santa Cruz', '21');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (22, 'TF', -54.800000, -68.300000, 'Tierra del Fuego', '22');
INSERT INTO public.provincias OVERRIDING SYSTEM VALUE VALUES (23, 'CHACO', -27.451389, -58.986667, 'Chaco', '23');


--
-- TOC entry 4787 (class 0 OID 0)
-- Dependencies: 215
-- Name: provincias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincias_id_seq', 23, true);


--
-- TOC entry 4635 (class 2606 OID 16406)
-- Name: provincias provincias_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_pk PRIMARY KEY (id);


-- Completed on 2026-05-18 09:55:58

--
-- PostgreSQL database dump complete
--

