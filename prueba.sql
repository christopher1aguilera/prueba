--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

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
-- Name: categorias; Type: TABLE; Schema: public; Owner: chris
--

CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    descripcion character varying(30) NOT NULL
);


ALTER TABLE public.categorias OWNER TO chris;

--
-- Name: categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: chris
--

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_id_seq OWNER TO chris;

--
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chris
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;


--
-- Name: clientes; Type: TABLE; Schema: public; Owner: chris
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL
);


ALTER TABLE public.clientes OWNER TO chris;

--
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: chris
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO chris;

--
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chris
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- Name: direcciones; Type: TABLE; Schema: public; Owner: chris
--

CREATE TABLE public.direcciones (
    id integer NOT NULL,
    id_cliente integer NOT NULL,
    direccion character varying(30) NOT NULL
);


ALTER TABLE public.direcciones OWNER TO chris;

--
-- Name: direcciones_id_seq; Type: SEQUENCE; Schema: public; Owner: chris
--

CREATE SEQUENCE public.direcciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.direcciones_id_seq OWNER TO chris;

--
-- Name: direcciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chris
--

ALTER SEQUENCE public.direcciones_id_seq OWNED BY public.direcciones.id;


--
-- Name: facturas; Type: TABLE; Schema: public; Owner: chris
--

CREATE TABLE public.facturas (
    numero integer NOT NULL,
    id_cliente integer NOT NULL,
    fecha date,
    subtotal integer,
    precio_total integer
);


ALTER TABLE public.facturas OWNER TO chris;

--
-- Name: facturas_detalles; Type: TABLE; Schema: public; Owner: chris
--

CREATE TABLE public.facturas_detalles (
    id integer NOT NULL,
    id_producto integer NOT NULL,
    numero_factura integer NOT NULL,
    cantidad integer NOT NULL,
    valor_total integer
);


ALTER TABLE public.facturas_detalles OWNER TO chris;

--
-- Name: facturas_detalles_id_seq; Type: SEQUENCE; Schema: public; Owner: chris
--

CREATE SEQUENCE public.facturas_detalles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facturas_detalles_id_seq OWNER TO chris;

--
-- Name: facturas_detalles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chris
--

ALTER SEQUENCE public.facturas_detalles_id_seq OWNED BY public.facturas_detalles.id;


--
-- Name: facturas_numero_seq; Type: SEQUENCE; Schema: public; Owner: chris
--

CREATE SEQUENCE public.facturas_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facturas_numero_seq OWNER TO chris;

--
-- Name: facturas_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chris
--

ALTER SEQUENCE public.facturas_numero_seq OWNED BY public.facturas.numero;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: chris
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nombre character varying(30) NOT NULL,
    descripcion character varying(30),
    valor_unitario integer
);


ALTER TABLE public.productos OWNER TO chris;

--
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: chris
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_seq OWNER TO chris;

--
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chris
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- Name: categorias id; Type: DEFAULT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- Name: direcciones id; Type: DEFAULT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.direcciones ALTER COLUMN id SET DEFAULT nextval('public.direcciones_id_seq'::regclass);


--
-- Name: facturas numero; Type: DEFAULT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas ALTER COLUMN numero SET DEFAULT nextval('public.facturas_numero_seq'::regclass);


--
-- Name: facturas_detalles id; Type: DEFAULT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas_detalles ALTER COLUMN id SET DEFAULT nextval('public.facturas_detalles_id_seq'::regclass);


--
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: chris
--

COPY public.categorias (id, nombre, descripcion) FROM stdin;
1	categoria1	descripcioncategoria1
2	categoria2	descripcioncategoria2
3	categoria3	descripcioncategoria3
\.


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: chris
--

COPY public.clientes (id, nombre) FROM stdin;
1	cliente1
2	cliente2
3	cliente3
4	cliente4
5	cliente5
\.


--
-- Data for Name: direcciones; Type: TABLE DATA; Schema: public; Owner: chris
--

COPY public.direcciones (id, id_cliente, direccion) FROM stdin;
1	1	direccion1
2	1	segundaDireccion1
3	2	direccion2
4	3	direccion3
5	3	segundaDireccion3
6	3	terceraDireccion3
7	4	direccion4
\.


--
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: chris
--

COPY public.facturas (numero, id_cliente, fecha, subtotal, precio_total) FROM stdin;
1	1	2020-12-01	34	40
2	1	2020-12-01	150	178
3	2	2020-12-01	80	95
4	2	2020-12-01	34	40
5	2	2020-12-01	192	228
6	3	2020-12-01	36	42
7	4	2020-12-01	30	35
8	4	2020-12-01	48	57
9	4	2020-12-01	120	142
10	4	2020-12-01	112	133
\.


--
-- Data for Name: facturas_detalles; Type: TABLE DATA; Schema: public; Owner: chris
--

COPY public.facturas_detalles (id, id_producto, numero_factura, cantidad, valor_total) FROM stdin;
1	1	1	5	10
2	2	1	6	24
3	3	2	7	42
4	4	2	1	8
5	5	2	10	100
6	6	3	2	24
7	6	3	2	24
8	8	3	2	32
9	1	4	5	10
10	2	4	6	24
11	3	5	10	60
12	4	5	9	72
13	5	5	6	60
14	6	6	3	36
15	7	7	1	14
16	8	7	1	16
17	1	8	5	10
18	2	8	5	20
19	3	8	3	18
20	4	9	4	32
21	5	9	5	50
22	6	9	2	24
23	7	9	1	14
24	8	10	7	112
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: chris
--

COPY public.productos (id, id_categoria, nombre, descripcion, valor_unitario) FROM stdin;
1	1	producto1	descripcionproducto1	2
2	2	producto2	descripcionproducto2	4
3	3	producto3	descripcionproducto3	6
4	1	producto4	descripcionproducto4	8
5	2	producto5	descripcionproducto5	10
6	3	producto6	descripcionproducto6	12
7	1	producto7	descripcionproducto7	14
8	2	producto8	descripcionproducto8	16
\.


--
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chris
--

SELECT pg_catalog.setval('public.categorias_id_seq', 3, true);


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chris
--

SELECT pg_catalog.setval('public.clientes_id_seq', 5, true);


--
-- Name: direcciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chris
--

SELECT pg_catalog.setval('public.direcciones_id_seq', 7, true);


--
-- Name: facturas_detalles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chris
--

SELECT pg_catalog.setval('public.facturas_detalles_id_seq', 24, true);


--
-- Name: facturas_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: chris
--

SELECT pg_catalog.setval('public.facturas_numero_seq', 1, false);


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chris
--

SELECT pg_catalog.setval('public.productos_id_seq', 8, true);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- Name: direcciones direcciones_pkey; Type: CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.direcciones
    ADD CONSTRAINT direcciones_pkey PRIMARY KEY (id);


--
-- Name: facturas_detalles facturas_detalles_pkey; Type: CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas_detalles
    ADD CONSTRAINT facturas_detalles_pkey PRIMARY KEY (id);


--
-- Name: facturas facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (numero);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- Name: direcciones direcciones_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.direcciones
    ADD CONSTRAINT direcciones_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id);


--
-- Name: facturas_detalles facturas_detalles_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas_detalles
    ADD CONSTRAINT facturas_detalles_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id);


--
-- Name: facturas_detalles facturas_detalles_numero_factura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas_detalles
    ADD CONSTRAINT facturas_detalles_numero_factura_fkey FOREIGN KEY (numero_factura) REFERENCES public.facturas(numero);


--
-- Name: facturas facturas_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id);


--
-- Name: productos productos_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chris
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id);


--
-- PostgreSQL database dump complete
--

