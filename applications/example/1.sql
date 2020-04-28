--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: chitato; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA chitato;


ALTER SCHEMA chitato OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: meta; Type: TABLE; Schema: chitato; Owner: postgres
--

CREATE TABLE chitato.meta (
    key text NOT NULL,
    value text NOT NULL
);


ALTER TABLE chitato.meta OWNER TO postgres;

--
-- Name: migrations; Type: TABLE; Schema: chitato; Owner: postgres
--

CREATE TABLE chitato.migrations (
    id integer NOT NULL,
    filename text NOT NULL,
    hash character varying NOT NULL,
    created_at timestamp(0) with time zone
);


ALTER TABLE chitato.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: chitato; Owner: postgres
--

CREATE SEQUENCE chitato.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE chitato.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: chitato; Owner: postgres
--

ALTER SEQUENCE chitato.migrations_id_seq OWNED BY chitato.migrations.id;


--
-- Name: migrations id; Type: DEFAULT; Schema: chitato; Owner: postgres
--

ALTER TABLE ONLY chitato.migrations ALTER COLUMN id SET DEFAULT nextval('chitato.migrations_id_seq'::regclass);


--
-- Name: meta meta_pkey; Type: CONSTRAINT; Schema: chitato; Owner: postgres
--

ALTER TABLE ONLY chitato.meta
    ADD CONSTRAINT meta_pkey PRIMARY KEY (key);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: chitato; Owner: postgres
--

ALTER TABLE ONLY chitato.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
