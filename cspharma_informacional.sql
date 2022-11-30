--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: dlk_informacional; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dlk_informacional;


ALTER SCHEMA dlk_informacional OWNER TO postgres;

--
-- Name: dmt_torrecontrol; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dmt_torrecontrol;


ALTER SCHEMA dmt_torrecontrol OWNER TO postgres;

--
-- Name: dwh_torrecontrol; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dwh_torrecontrol;


ALTER SCHEMA dwh_torrecontrol OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tdc_cat_estados_devolucion_pedido; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_estados_devolucion_pedido (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_devolucion character varying NOT NULL,
    des_estado_devolucion character varying
);


ALTER TABLE dwh_torrecontrol.tdc_cat_estados_devolucion_pedido OWNER TO postgres;

--
-- Name: tdc_cat_estados_devolucion_pedido_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_estados_devolucion_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_estados_devolucion_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_cat_estados_envio_pedido; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_estados_envio_pedido (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_envio character varying NOT NULL,
    des_estado_envio character varying
);


ALTER TABLE dwh_torrecontrol.tdc_cat_estados_envio_pedido OWNER TO postgres;

--
-- Name: tdc_cat_estados_envio_pedido_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_estados_envio_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_estados_envio_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_cat_estados_pago_pedido; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_estados_pago_pedido (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_pago character varying NOT NULL,
    des_estado_pago character varying
);


ALTER TABLE dwh_torrecontrol.tdc_cat_estados_pago_pedido OWNER TO postgres;

--
-- Name: tdc_cat_estados_pago_pedido_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_estados_pago_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_estados_pago_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_cat_lineas_distribucion; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_lineas_distribucion (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_linea character varying NOT NULL,
    cod_provincia character varying NOT NULL,
    cod_municipio character varying NOT NULL,
    cod_barrio character varying NOT NULL
);


ALTER TABLE dwh_torrecontrol.tdc_cat_lineas_distribucion OWNER TO postgres;

--
-- Name: tdc_cat_lineas_distribucion_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_lineas_distribucion ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_lineas_distribucion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_tch_estado_pedidos; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_tch_estado_pedidos (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_envio character varying,
    cod_estado_pago character varying,
    cod_estado_devolucion character varying,
    cod_pedido character varying NOT NULL,
    cod_linea character varying NOT NULL
);


ALTER TABLE dwh_torrecontrol.tdc_tch_estado_pedidos OWNER TO postgres;

--
-- Name: tdc_tch_estado_pedidos_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_tch_estado_pedidos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_tch_estado_pedidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: tdc_cat_estados_devolucion_pedido; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_estados_devolucion_pedido (md_uuid, md_date, id, cod_estado_devolucion, des_estado_devolucion) FROM stdin;
1	2022-11-13 11:34:00	1	A	\N
2	2022-11-13 11:35:00	2	R	\N
3	2022-11-13 11:36:00	3	D1	\N
4	2022-11-13 11:36:00	4	D2	\N
\.


--
-- Data for Name: tdc_cat_estados_envio_pedido; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_estados_envio_pedido (md_uuid, md_date, id, cod_estado_envio, des_estado_envio) FROM stdin;
1	2022-11-13 11:26:00	1	S1	RE2345
2	2022-11-13 11:27:00	2	R1	RA453
3	2022-11-13 11:27:00	3	P1	FE657
4	2022-11-13 11:27:00	4	E1	234FE
5	2022-11-13 11:28:00	5	E2	RE3421
6	2022-11-13 11:28:00	6	D	RE4356
\.


--
-- Data for Name: tdc_cat_estados_pago_pedido; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_estados_pago_pedido (md_uuid, md_date, id, cod_estado_pago, des_estado_pago) FROM stdin;
1	2022-11-13 11:29:00	1	P1	RE432
2	2022-11-13 11:31:00	2	E1	TE5678
3	2022-11-13 11:31:00	3	P2	TE3456
4	2022-11-13 11:34:00	4	D1	TR4532
5	2022-11-13 11:35:00	5	D2	TR6789
\.


--
-- Data for Name: tdc_cat_lineas_distribucion; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_lineas_distribucion (md_uuid, md_date, id, cod_linea, cod_provincia, cod_municipio, cod_barrio) FROM stdin;
1	2022-11-13 11:24:00	1	SEV-SEV-AMA	41005	41432	41256
2	2022-11-13 11:25:00	2	SEV-SEV-NER	41	41	41005
\.


--
-- Data for Name: tdc_tch_estado_pedidos; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_tch_estado_pedidos (md_uuid, md_date, id, cod_estado_envio, cod_estado_pago, cod_estado_devolucion, cod_pedido, cod_linea) FROM stdin;
\.


--
-- Name: tdc_cat_estados_devolucion_pedido_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_estados_devolucion_pedido_id_seq', 4, true);


--
-- Name: tdc_cat_estados_envio_pedido_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_estados_envio_pedido_id_seq', 6, true);


--
-- Name: tdc_cat_estados_pago_pedido_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_estados_pago_pedido_id_seq', 5, true);


--
-- Name: tdc_cat_lineas_distribucion_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_lineas_distribucion_id_seq', 2, true);


--
-- Name: tdc_tch_estado_pedidos_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_tch_estado_pedidos_id_seq', 1, false);


--
-- Name: tdc_cat_estados_devolucion_pedido tdc_cat_estados_devolucion_pedido_cod_estado_devolucion; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_devolucion_pedido
    ADD CONSTRAINT tdc_cat_estados_devolucion_pedido_cod_estado_devolucion UNIQUE (cod_estado_devolucion);


--
-- Name: tdc_cat_estados_devolucion_pedido tdc_cat_estados_devolucion_pedido_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_devolucion_pedido
    ADD CONSTRAINT tdc_cat_estados_devolucion_pedido_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_cat_estados_envio_pedido tdc_cat_estados_envio_pedido_cod_estado_envio; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_envio_pedido
    ADD CONSTRAINT tdc_cat_estados_envio_pedido_cod_estado_envio UNIQUE (cod_estado_envio);


--
-- Name: tdc_cat_estados_envio_pedido tdc_cat_estados_envio_pedido_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_envio_pedido
    ADD CONSTRAINT tdc_cat_estados_envio_pedido_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_cat_estados_pago_pedido tdc_cat_estados_pago_pedido_cod_estado_pago; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_pago_pedido
    ADD CONSTRAINT tdc_cat_estados_pago_pedido_cod_estado_pago UNIQUE (cod_estado_pago);


--
-- Name: tdc_cat_estados_pago_pedido tdc_cat_estados_pago_pedido_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_pago_pedido
    ADD CONSTRAINT tdc_cat_estados_pago_pedido_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_cat_lineas_distribucion tdc_cat_lineas_distribucion_cod_linea; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_lineas_distribucion
    ADD CONSTRAINT tdc_cat_lineas_distribucion_cod_linea UNIQUE (cod_linea);


--
-- Name: tdc_cat_lineas_distribucion tdc_cat_lineas_distribucion_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_lineas_distribucion
    ADD CONSTRAINT tdc_cat_lineas_distribucion_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_tch_estado_pedidos tdc_cat_estados_pago_pedido_cod_estado_pago_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_cat_estados_pago_pedido_cod_estado_pago_fkey FOREIGN KEY (cod_estado_pago) REFERENCES dwh_torrecontrol.tdc_cat_estados_pago_pedido(cod_estado_pago);


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos FOREIGN KEY (cod_estado_devolucion) REFERENCES dwh_torrecontrol.tdc_cat_estados_devolucion_pedido(cod_estado_devolucion);


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_cod_linea_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES dwh_torrecontrol.tdc_cat_lineas_distribucion(cod_linea);


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_estado_envio_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_estado_envio_fkey FOREIGN KEY (cod_estado_envio) REFERENCES dwh_torrecontrol.tdc_cat_estados_envio_pedido(cod_estado_envio);


--
-- PostgreSQL database dump complete
--

