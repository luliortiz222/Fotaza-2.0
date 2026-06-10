--
-- PostgreSQL database dump
--

\restrict N0L1Rz6gu4sSNc1aZFVHw0iQMctIgxXagEhJzvh7LsYQ3BR9BKxg5odLD1RlLIA

-- Dumped from database version 18.4 (Debian 18.4-1.pgdg12+1)
-- Dumped by pg_dump version 18.4

-- Started on 2026-06-10 17:41:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4835 (class 1262 OID 16389)
-- Name: fotaza_db; Type: DATABASE; Schema: -; Owner: luliortiz222
--

CREATE DATABASE fotaza_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';


ALTER DATABASE fotaza_db OWNER TO luliortiz222;

\unrestrict N0L1Rz6gu4sSNc1aZFVHw0iQMctIgxXagEhJzvh7LsYQ3BR9BKxg5odLD1RlLIA
\connect fotaza_db
\restrict N0L1Rz6gu4sSNc1aZFVHw0iQMctIgxXagEhJzvh7LsYQ3BR9BKxg5odLD1RlLIA

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4836 (class 0 OID 0)
-- Name: fotaza_db; Type: DATABASE PROPERTIES; Schema: -; Owner: luliortiz222
--

ALTER DATABASE fotaza_db SET "TimeZone" TO 'utc';


\unrestrict N0L1Rz6gu4sSNc1aZFVHw0iQMctIgxXagEhJzvh7LsYQ3BR9BKxg5odLD1RlLIA
\connect fotaza_db
\restrict N0L1Rz6gu4sSNc1aZFVHw0iQMctIgxXagEhJzvh7LsYQ3BR9BKxg5odLD1RlLIA

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: luliortiz222
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO luliortiz222;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 241 (class 1259 OID 16563)
-- Name: coleccion_publicacions; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.coleccion_publicacions (
    "ColeccionId" integer NOT NULL,
    "PublicacionId" integer NOT NULL
);


ALTER TABLE public.coleccion_publicacions OWNER TO luliortiz222;

--
-- TOC entry 240 (class 1259 OID 16548)
-- Name: colecciones; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.colecciones (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "usuarioId" integer
);


ALTER TABLE public.colecciones OWNER TO luliortiz222;

--
-- TOC entry 239 (class 1259 OID 16547)
-- Name: colecciones_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.colecciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.colecciones_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 239
-- Name: colecciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.colecciones_id_seq OWNED BY public.colecciones.id;


--
-- TOC entry 230 (class 1259 OID 16437)
-- Name: comentarios; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.comentarios (
    id integer NOT NULL,
    contenido text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "usuarioId" integer,
    "publicacionId" integer
);


ALTER TABLE public.comentarios OWNER TO luliortiz222;

--
-- TOC entry 229 (class 1259 OID 16436)
-- Name: comentarios_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.comentarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comentarios_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 229
-- Name: comentarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.comentarios_id_seq OWNED BY public.comentarios.id;


--
-- TOC entry 232 (class 1259 OID 16460)
-- Name: etiquetas; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.etiquetas (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL
);


ALTER TABLE public.etiquetas OWNER TO luliortiz222;

--
-- TOC entry 231 (class 1259 OID 16459)
-- Name: etiquetas_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.etiquetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.etiquetas_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 231
-- Name: etiquetas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.etiquetas_id_seq OWNED BY public.etiquetas.id;


--
-- TOC entry 238 (class 1259 OID 16528)
-- Name: notificaciones; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.notificaciones (
    id integer NOT NULL,
    tipo character varying(255) NOT NULL,
    mensaje character varying(255) NOT NULL,
    leido boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "usuarioId" integer
);


ALTER TABLE public.notificaciones OWNER TO luliortiz222;

--
-- TOC entry 237 (class 1259 OID 16527)
-- Name: notificaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.notificaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notificaciones_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 237
-- Name: notificaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.notificaciones_id_seq OWNED BY public.notificaciones.id;


--
-- TOC entry 233 (class 1259 OID 16470)
-- Name: publicacion_etiqueta; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.publicacion_etiqueta (
    "publicacionId" integer NOT NULL,
    "etiquetaId" integer NOT NULL
);


ALTER TABLE public.publicacion_etiqueta OWNER TO luliortiz222;

--
-- TOC entry 228 (class 1259 OID 16420)
-- Name: publicaciones; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.publicaciones (
    id integer NOT NULL,
    titulo character varying(255),
    descripcion text,
    "urlImagen" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "usuarioId" integer
);


ALTER TABLE public.publicaciones OWNER TO luliortiz222;

--
-- TOC entry 227 (class 1259 OID 16419)
-- Name: publicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.publicaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publicaciones_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 227
-- Name: publicaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.publicaciones_id_seq OWNED BY public.publicaciones.id;


--
-- TOC entry 236 (class 1259 OID 16508)
-- Name: seguidores; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.seguidores (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "seguidorId" integer NOT NULL,
    "usuarioId" integer NOT NULL
);


ALTER TABLE public.seguidores OWNER TO luliortiz222;

--
-- TOC entry 226 (class 1259 OID 16400)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.usuarios OWNER TO luliortiz222;

--
-- TOC entry 225 (class 1259 OID 16399)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 235 (class 1259 OID 16488)
-- Name: valoraciones; Type: TABLE; Schema: public; Owner: luliortiz222
--

CREATE TABLE public.valoraciones (
    id integer NOT NULL,
    puntuacion integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "usuarioId" integer,
    "publicacionId" integer
);


ALTER TABLE public.valoraciones OWNER TO luliortiz222;

--
-- TOC entry 234 (class 1259 OID 16487)
-- Name: valoraciones_id_seq; Type: SEQUENCE; Schema: public; Owner: luliortiz222
--

CREATE SEQUENCE public.valoraciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.valoraciones_id_seq OWNER TO luliortiz222;

--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 234
-- Name: valoraciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luliortiz222
--

ALTER SEQUENCE public.valoraciones_id_seq OWNED BY public.valoraciones.id;


--
-- TOC entry 3284 (class 2604 OID 17770)
-- Name: colecciones id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.colecciones ALTER COLUMN id SET DEFAULT nextval('public.colecciones_id_seq'::regclass);


--
-- TOC entry 3279 (class 2604 OID 17771)
-- Name: comentarios id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.comentarios ALTER COLUMN id SET DEFAULT nextval('public.comentarios_id_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 17772)
-- Name: etiquetas id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas ALTER COLUMN id SET DEFAULT nextval('public.etiquetas_id_seq'::regclass);


--
-- TOC entry 3282 (class 2604 OID 17773)
-- Name: notificaciones id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.notificaciones ALTER COLUMN id SET DEFAULT nextval('public.notificaciones_id_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 17774)
-- Name: publicaciones id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.publicaciones ALTER COLUMN id SET DEFAULT nextval('public.publicaciones_id_seq'::regclass);


--
-- TOC entry 3277 (class 2604 OID 17775)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3281 (class 2604 OID 17776)
-- Name: valoraciones id; Type: DEFAULT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.valoraciones ALTER COLUMN id SET DEFAULT nextval('public.valoraciones_id_seq'::regclass);


--
-- TOC entry 4829 (class 0 OID 16563)
-- Dependencies: 241
-- Data for Name: coleccion_publicacions; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.coleccion_publicacions VALUES (1, 18);
INSERT INTO public.coleccion_publicacions VALUES (1, 17);
INSERT INTO public.coleccion_publicacions VALUES (5, 10);
INSERT INTO public.coleccion_publicacions VALUES (5, 8);
INSERT INTO public.coleccion_publicacions VALUES (1, 19);
INSERT INTO public.coleccion_publicacions VALUES (1, 15);
INSERT INTO public.coleccion_publicacions VALUES (1, 16);
INSERT INTO public.coleccion_publicacions VALUES (6, 6);
INSERT INTO public.coleccion_publicacions VALUES (6, 5);
INSERT INTO public.coleccion_publicacions VALUES (6, 4);
INSERT INTO public.coleccion_publicacions VALUES (7, 10);
INSERT INTO public.coleccion_publicacions VALUES (7, 8);
INSERT INTO public.coleccion_publicacions VALUES (8, 19);
INSERT INTO public.coleccion_publicacions VALUES (8, 13);
INSERT INTO public.coleccion_publicacions VALUES (6, 12);
INSERT INTO public.coleccion_publicacions VALUES (9, 16);
INSERT INTO public.coleccion_publicacions VALUES (11, 12);
INSERT INTO public.coleccion_publicacions VALUES (13, 5);
INSERT INTO public.coleccion_publicacions VALUES (14, 19);
INSERT INTO public.coleccion_publicacions VALUES (14, 7);
INSERT INTO public.coleccion_publicacions VALUES (1, 21);
INSERT INTO public.coleccion_publicacions VALUES (1, 27);
INSERT INTO public.coleccion_publicacions VALUES (13, 27);
INSERT INTO public.coleccion_publicacions VALUES (1, 12);


--
-- TOC entry 4828 (class 0 OID 16548)
-- Dependencies: 240
-- Data for Name: colecciones; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.colecciones VALUES (1, 'Favoritas', '2026-06-07 18:48:16.089+00', '2026-06-07 18:48:16.089+00', 5);
INSERT INTO public.colecciones VALUES (5, 'Comida', '2026-06-07 23:27:44.987+00', '2026-06-07 23:27:44.987+00', 5);
INSERT INTO public.colecciones VALUES (6, 'Porcelana', '2026-06-08 17:52:40.825+00', '2026-06-08 17:52:40.825+00', 3);
INSERT INTO public.colecciones VALUES (7, 'Food', '2026-06-08 18:05:43.137+00', '2026-06-08 18:05:43.137+00', 4);
INSERT INTO public.colecciones VALUES (8, 'Lo que me gusta', '2026-06-09 00:34:11.14+00', '2026-06-09 00:34:11.14+00', 1);
INSERT INTO public.colecciones VALUES (9, 'Cartas', '2026-06-09 23:59:48.561+00', '2026-06-09 23:59:48.561+00', 4);
INSERT INTO public.colecciones VALUES (10, 'Cositas', '2026-06-10 00:18:08.217+00', '2026-06-10 00:18:08.217+00', 3);
INSERT INTO public.colecciones VALUES (11, 'Cosas', '2026-06-10 00:56:17.272+00', '2026-06-10 00:56:17.272+00', 4);
INSERT INTO public.colecciones VALUES (12, 'Objetos', '2026-06-10 00:59:05.345+00', '2026-06-10 00:59:05.345+00', 7);
INSERT INTO public.colecciones VALUES (13, 'Porcelana', '2026-06-10 01:30:09.537+00', '2026-06-10 01:30:09.537+00', 4);
INSERT INTO public.colecciones VALUES (14, 'Sammy', '2026-06-10 01:32:53.371+00', '2026-06-10 01:32:53.371+00', 2);


--
-- TOC entry 4818 (class 0 OID 16437)
-- Dependencies: 230
-- Data for Name: comentarios; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.comentarios VALUES (1, 'Aesthetic', '2026-06-06 20:21:56.621+00', '2026-06-06 20:21:56.621+00', 3, 6);
INSERT INTO public.comentarios VALUES (2, 'Flaca, tirate esas cartas pero YA', '2026-06-06 21:36:38.373+00', '2026-06-06 21:36:38.373+00', 1, 16);
INSERT INTO public.comentarios VALUES (3, 'Perryyyy! australiano mamifero, semiacuatico agente dubi duba', '2026-06-06 21:37:34.153+00', '2026-06-06 21:37:34.153+00', 1, 12);
INSERT INTO public.comentarios VALUES (4, 'Uff tremendo', '2026-06-06 21:37:58.792+00', '2026-06-06 21:37:58.792+00', 1, 10);
INSERT INTO public.comentarios VALUES (5, 'Ojala', '2026-06-06 21:41:08.383+00', '2026-06-06 21:41:08.383+00', 2, 1);
INSERT INTO public.comentarios VALUES (6, 'Que bonito', '2026-06-06 21:46:35.045+00', '2026-06-06 21:46:35.045+00', 4, 7);
INSERT INTO public.comentarios VALUES (7, 'Estan re lindas', '2026-06-06 21:46:49.274+00', '2026-06-06 21:46:49.274+00', 4, 5);
INSERT INTO public.comentarios VALUES (8, 'Falta mucho', '2026-06-06 23:04:50.415+00', '2026-06-06 23:04:50.415+00', 4, 13);
INSERT INTO public.comentarios VALUES (9, 'Se ve rico...¿sabra igual?', '2026-06-06 23:08:37.914+00', '2026-06-06 23:08:37.914+00', 4, 10);
INSERT INTO public.comentarios VALUES (10, 'Bellos', '2026-06-07 14:48:53.077+00', '2026-06-07 14:48:53.077+00', 5, 4);
INSERT INTO public.comentarios VALUES (12, 'Aesthetic', '2026-06-09 21:02:58.617+00', '2026-06-09 21:02:58.617+00', 5, 8);
INSERT INTO public.comentarios VALUES (13, 'Que bueno, Nicky, despues de mucho rogar...se logro!', '2026-06-09 23:52:43.177+00', '2026-06-09 23:52:43.177+00', 5, 20);
INSERT INTO public.comentarios VALUES (14, 'Me alegro, Nico, al fin se te dio', '2026-06-09 23:55:05.097+00', '2026-06-09 23:55:05.097+00', 4, 20);
INSERT INTO public.comentarios VALUES (15, 'NANANANA MUY BELLO ÉL', '2026-06-09 23:55:20.916+00', '2026-06-09 23:55:20.916+00', 4, 19);
INSERT INTO public.comentarios VALUES (16, 'No me presiones que lloro', '2026-06-09 23:55:34.268+00', '2026-06-09 23:55:34.268+00', 4, 16);
INSERT INTO public.comentarios VALUES (17, 'Al final, conseguiste el sillon, ¿si o no?', '2026-06-09 23:56:31.721+00', '2026-06-09 23:56:31.721+00', 4, 18);
INSERT INTO public.comentarios VALUES (18, 'Siempre con ese estilo de cheta de Nordelta, jajajaja i love u', '2026-06-09 23:57:34.349+00', '2026-06-09 23:57:34.349+00', 4, 6);
INSERT INTO public.comentarios VALUES (19, 'Por fin!', '2026-06-10 01:31:30.543+00', '2026-06-10 01:31:30.543+00', 1, 20);
INSERT INTO public.comentarios VALUES (20, 'Y tampoco esta mal, che', '2026-06-10 01:45:05.952+00', '2026-06-10 01:45:05.952+00', 7, 21);
INSERT INTO public.comentarios VALUES (21, 'Si, que onda, de libros no se vive', '2026-06-10 01:45:28.019+00', '2026-06-10 01:45:28.019+00', 7, 18);
INSERT INTO public.comentarios VALUES (22, 'Si, a mi tambien, cansa', '2026-06-10 01:49:43.224+00', '2026-06-10 01:49:43.224+00', 5, 15);
INSERT INTO public.comentarios VALUES (23, 'Y el bichito tiene buen gusto, cuanto dolio?', '2026-06-10 14:30:24.322+00', '2026-06-10 14:30:24.322+00', 4, 27);


--
-- TOC entry 4820 (class 0 OID 16460)
-- Dependencies: 232
-- Data for Name: etiquetas; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.etiquetas VALUES (1, 'viajes');
INSERT INTO public.etiquetas VALUES (2, 'amigos');
INSERT INTO public.etiquetas VALUES (3, 'comida');
INSERT INTO public.etiquetas VALUES (4, 'porcelana');
INSERT INTO public.etiquetas VALUES (5, 'foto');
INSERT INTO public.etiquetas VALUES (6, 'cansado');
INSERT INTO public.etiquetas VALUES (7, 'tarot');
INSERT INTO public.etiquetas VALUES (8, 'mudanza');
INSERT INTO public.etiquetas VALUES (9, 'nuevo');
INSERT INTO public.etiquetas VALUES (10, 'cartas');
INSERT INTO public.etiquetas VALUES (11, 'sol');


--
-- TOC entry 4826 (class 0 OID 16528)
-- Dependencies: 238
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.notificaciones VALUES (54, 'valoracion', '@Evaristo_ Eleva le dio 5 estrellas a tu publicación.', true, '2026-06-10 01:32:00.208+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (25, 'seguimiento', '@Nico_Busta23 comenzó a seguirte.', true, '2026-06-09 23:45:04.905+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (34, 'valoracion', '@Cati_Di''Santi le dio 4 estrellas a tu publicación.', true, '2026-06-09 23:55:08.907+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (35, 'comentario', '@Cati_Di''Santi comentó en tu publicación: "NANANANA MUY BELLO É..."', true, '2026-06-09 23:55:21.312+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (57, 'valoracion', '@Nico_Busta23 le dio 5 estrellas a tu publicación.', true, '2026-06-10 01:45:13.216+00', '2026-06-10 01:49:06.872+00', 5);
INSERT INTO public.notificaciones VALUES (59, 'comentario', '@Meli_Aeson comentó en tu publicación: "Si, a mi tambien, ca..."', false, '2026-06-10 01:49:44.013+00', '2026-06-10 01:49:44.013+00', 1);
INSERT INTO public.notificaciones VALUES (61, 'valoracion', '@Cati_Di''Santi le dio 5 estrellas a tu publicación.', true, '2026-06-10 14:30:08.416+00', '2026-06-10 14:30:59.357+00', 5);
INSERT INTO public.notificaciones VALUES (8, 'seguimiento', '@Matu_D''Arco comenzó a seguirte.', true, '2026-06-08 17:51:48.753+00', '2026-06-08 18:45:37.034+00', 4);
INSERT INTO public.notificaciones VALUES (9, 'valoracion', '@Matu_D''Arco le dio 4 estrellas a tu publicación.', true, '2026-06-08 17:51:50.576+00', '2026-06-08 18:45:37.034+00', 4);
INSERT INTO public.notificaciones VALUES (7, 'seguimiento', 'Evaristo_ Eleva comenzó a seguirte.', true, '2026-06-08 17:27:19.118+00', '2026-06-08 18:46:18.191+00', 5);
INSERT INTO public.notificaciones VALUES (16, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-08 18:45:47.783+00', '2026-06-08 18:46:18.191+00', 5);
INSERT INTO public.notificaciones VALUES (11, 'seguimiento', '@Matu_D''Arco comenzó a seguirte.', true, '2026-06-08 17:52:03.804+00', '2026-06-08 18:47:05.599+00', 3);
INSERT INTO public.notificaciones VALUES (13, 'valoracion', '@Meli_Aeson le dio 4 estrellas a tu publicación.', true, '2026-06-08 18:31:11.019+00', '2026-06-08 18:47:05.599+00', 3);
INSERT INTO public.notificaciones VALUES (14, 'seguimiento', '@Meli_Aeson comenzó a seguirte.', true, '2026-06-08 18:31:12.072+00', '2026-06-08 18:47:05.599+00', 3);
INSERT INTO public.notificaciones VALUES (1, 'seguimiento', 'Meli_Aeson comenzó a seguirte.', true, '2026-06-08 15:28:09.744+00', '2026-06-08 18:50:09.622+00', 2);
INSERT INTO public.notificaciones VALUES (15, 'seguimiento', '@Evaristo_ Eleva comenzó a seguirte.', true, '2026-06-08 18:36:21.974+00', '2026-06-08 18:50:09.622+00', 2);
INSERT INTO public.notificaciones VALUES (19, 'desvincular', '@Meli_Aeson te dejó de seguir.', true, '2026-06-09 00:20:40.035+00', '2026-06-09 00:21:38.949+00', 2);
INSERT INTO public.notificaciones VALUES (20, 'seguimiento', '@Meli_Aeson comenzó a seguirte.', true, '2026-06-09 00:20:57.607+00', '2026-06-09 00:21:38.949+00', 2);
INSERT INTO public.notificaciones VALUES (21, 'desvincular', '@Meli_Aeson te dejó de seguir.', true, '2026-06-09 00:21:07.784+00', '2026-06-09 00:21:38.949+00', 2);
INSERT INTO public.notificaciones VALUES (22, 'seguimiento', '@Meli_Aeson comenzó a seguirte.', true, '2026-06-09 00:21:19.875+00', '2026-06-09 00:21:38.949+00', 2);
INSERT INTO public.notificaciones VALUES (23, 'valoracion', '@Meli_Aeson le dio 4 estrellas a tu publicación.', true, '2026-06-09 21:02:44.322+00', '2026-06-09 21:03:28.881+00', 2);
INSERT INTO public.notificaciones VALUES (24, 'comentario', '@Meli_Aeson comentó en tu publicación: "Aesthetic..."', true, '2026-06-09 21:02:59.016+00', '2026-06-09 21:03:28.881+00', 2);
INSERT INTO public.notificaciones VALUES (26, 'seguimiento', '@Nico_Busta23 comenzó a seguirte.', true, '2026-06-09 23:45:06.174+00', '2026-06-09 23:48:27.066+00', 5);
INSERT INTO public.notificaciones VALUES (5, 'seguimiento', 'Meli_Aeson comenzó a seguirte.', true, '2026-06-08 17:26:07.666+00', '2026-06-10 00:03:03.212+00', 1);
INSERT INTO public.notificaciones VALUES (10, 'seguimiento', '@Matu_D''Arco comenzó a seguirte.', true, '2026-06-08 17:51:54.405+00', '2026-06-10 00:03:03.212+00', 1);
INSERT INTO public.notificaciones VALUES (12, 'valoracion', '@Meli_Aeson le dio 5 estrellas a tu publicación.', true, '2026-06-08 18:31:07.182+00', '2026-06-10 00:03:03.212+00', 1);
INSERT INTO public.notificaciones VALUES (18, 'valoracion', '@Matu_D''Arco le dio 4 estrellas a tu publicación.', true, '2026-06-08 18:50:04.61+00', '2026-06-10 00:03:03.212+00', 1);
INSERT INTO public.notificaciones VALUES (17, 'seguimiento', '@Sofi_Snach12 comenzó a seguirte.', true, '2026-06-08 18:47:03.211+00', '2026-06-10 00:19:37.75+00', 4);
INSERT INTO public.notificaciones VALUES (27, 'seguimiento', '@Nico_Busta23 comenzó a seguirte.', true, '2026-06-09 23:45:09.147+00', '2026-06-10 00:19:37.75+00', 4);
INSERT INTO public.notificaciones VALUES (31, 'valoracion', '@Cati_Di''Santi le dio 4 estrellas a tu publicación.', true, '2026-06-09 23:54:45.107+00', '2026-06-10 00:51:39.46+00', 5);
INSERT INTO public.notificaciones VALUES (36, 'valoracion', '@Cati_Di''Santi le dio 4 estrellas a tu publicación.', true, '2026-06-09 23:55:44.7+00', '2026-06-10 00:51:39.46+00', 5);
INSERT INTO public.notificaciones VALUES (28, 'seguimiento', '@Meli_Aeson comenzó a seguirte.', true, '2026-06-09 23:52:19.805+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (29, 'valoracion', '@Meli_Aeson le dio 4 estrellas a tu publicación.', true, '2026-06-09 23:52:22.469+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (30, 'comentario', '@Meli_Aeson comentó en tu publicación: "Que bueno, Nicky, de..."', true, '2026-06-09 23:52:43.51+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (32, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-09 23:54:47.516+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (33, 'comentario', '@Cati_Di''Santi comentó en tu publicación: "Me alegro, Nico, al ..."', true, '2026-06-09 23:55:05.509+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (40, 'valoracion', '@Cati_Di''Santi le dio 5 estrellas a tu publicación.', false, '2026-06-09 23:57:04.804+00', '2026-06-09 23:57:04.804+00', 3);
INSERT INTO public.notificaciones VALUES (41, 'comentario', '@Cati_Di''Santi comentó en tu publicación: "Siempre con ese esti..."', false, '2026-06-09 23:57:34.808+00', '2026-06-09 23:57:34.808+00', 3);
INSERT INTO public.notificaciones VALUES (38, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-09 23:56:38.002+00', '2026-06-10 00:03:03.212+00', 1);
INSERT INTO public.notificaciones VALUES (44, 'desvincular', '@Cati_Di''Santi te dejó de seguir.', true, '2026-06-10 00:02:15.138+00', '2026-06-10 00:03:03.212+00', 1);
INSERT INTO public.notificaciones VALUES (37, 'comentario', '@Cati_Di''Santi comentó en tu publicación: "Al final, conseguist..."', true, '2026-06-09 23:56:32.478+00', '2026-06-10 00:51:39.46+00', 5);
INSERT INTO public.notificaciones VALUES (43, 'desvincular', '@Cati_Di''Santi te dejó de seguir.', true, '2026-06-10 00:02:11.915+00', '2026-06-10 00:51:39.46+00', 5);
INSERT INTO public.notificaciones VALUES (45, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-10 00:51:14.32+00', '2026-06-10 00:51:39.46+00', 5);
INSERT INTO public.notificaciones VALUES (46, 'desvincular', '@Meli_Aeson te dejó de seguir.', true, '2026-06-10 00:53:03.815+00', '2026-06-10 00:53:35.552+00', 4);
INSERT INTO public.notificaciones VALUES (42, 'desvincular', '@Cati_Di''Santi te dejó de seguir.', true, '2026-06-10 00:02:09.905+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (48, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-10 00:55:44.016+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (50, 'valoracion', '@Cati_Di''Santi le dio 4 estrellas a tu publicación.', true, '2026-06-10 00:57:25.216+00', '2026-06-10 00:58:09.007+00', 7);
INSERT INTO public.notificaciones VALUES (51, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-10 01:02:20.513+00', '2026-06-10 01:31:03.66+00', 1);
INSERT INTO public.notificaciones VALUES (52, 'desvincular', '@Cati_Di''Santi te dejó de seguir.', true, '2026-06-10 01:30:30.31+00', '2026-06-10 01:31:03.66+00', 1);
INSERT INTO public.notificaciones VALUES (53, 'comentario', '@Evaristo_ Eleva comentó en tu publicación: "Por fin!..."', false, '2026-06-10 01:31:30.61+00', '2026-06-10 01:31:30.61+00', 7);
INSERT INTO public.notificaciones VALUES (39, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-09 23:56:44.269+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (47, 'desvincular', '@Cati_Di''Santi te dejó de seguir.', true, '2026-06-10 00:54:07.619+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (49, 'seguimiento', '@Cati_Di''Santi comenzó a seguirte.', true, '2026-06-10 00:55:45.09+00', '2026-06-10 01:32:25.573+00', 2);
INSERT INTO public.notificaciones VALUES (55, 'valoracion', '@Nico_Busta23 le dio 5 estrellas a tu publicación.', true, '2026-06-10 01:44:55.811+00', '2026-06-10 01:49:06.872+00', 5);
INSERT INTO public.notificaciones VALUES (56, 'comentario', '@Nico_Busta23 comentó en tu publicación: "Y tampoco esta mal, ..."', true, '2026-06-10 01:45:05.964+00', '2026-06-10 01:49:06.872+00', 5);
INSERT INTO public.notificaciones VALUES (58, 'comentario', '@Nico_Busta23 comentó en tu publicación: "Si, que onda, de lib..."', true, '2026-06-10 01:45:28.812+00', '2026-06-10 01:49:06.872+00', 5);
INSERT INTO public.notificaciones VALUES (60, 'valoracion', '@Meli_Aeson le dio 5 estrellas a tu publicación.', false, '2026-06-10 01:49:51.71+00', '2026-06-10 01:49:51.71+00', 3);
INSERT INTO public.notificaciones VALUES (62, 'comentario', '@Cati_Di''Santi comentó en tu publicación: "Y el bichito tiene b..."', true, '2026-06-10 14:30:24.687+00', '2026-06-10 14:30:59.357+00', 5);


--
-- TOC entry 4821 (class 0 OID 16470)
-- Dependencies: 233
-- Data for Name: publicacion_etiqueta; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.publicacion_etiqueta VALUES (10, 3);
INSERT INTO public.publicacion_etiqueta VALUES (12, 4);
INSERT INTO public.publicacion_etiqueta VALUES (15, 6);
INSERT INTO public.publicacion_etiqueta VALUES (16, 7);
INSERT INTO public.publicacion_etiqueta VALUES (17, 5);
INSERT INTO public.publicacion_etiqueta VALUES (18, 8);
INSERT INTO public.publicacion_etiqueta VALUES (19, 2);
INSERT INTO public.publicacion_etiqueta VALUES (20, 9);
INSERT INTO public.publicacion_etiqueta VALUES (21, 8);
INSERT INTO public.publicacion_etiqueta VALUES (27, 8);


--
-- TOC entry 4816 (class 0 OID 16420)
-- Dependencies: 228
-- Data for Name: publicaciones; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.publicaciones VALUES (1, 'Probando Probando', 'Dios, tu me escuchas?', '/uploads/imagen-1780666313943-428034132.jpg', '2026-06-05 13:31:54.002+00', '2026-06-05 13:31:54.002+00', 1);
INSERT INTO public.publicaciones VALUES (3, 'Si, funciona. ', 'Elimina, sube, faltan mas cositas pero siiii', '/uploads/imagen-1780761414611-261753238.jpg', '2026-06-06 15:56:54.636+00', '2026-06-06 15:56:54.636+00', 1);
INSERT INTO public.publicaciones VALUES (4, 'Compranding ', 'Faenza, Emilia-Romaña. ', '/uploads/imagen-1780761972597-684314817.jpg', '2026-06-06 16:06:12.613+00', '2026-06-06 16:06:12.613+00', 3);
INSERT INTO public.publicaciones VALUES (5, 'Compre', 'Caltagirone, Sicilia. ', '/uploads/imagen-1780762607019-829092606.jpg', '2026-06-06 16:16:47.045+00', '2026-06-06 16:16:47.045+00', 3);
INSERT INTO public.publicaciones VALUES (6, 'Ultimos detalles', 'compra impulsiva', '/uploads/imagen-1780770130883-321993349.jpg', '2026-06-06 18:22:10.899+00', '2026-06-06 18:22:10.899+00', 3);
INSERT INTO public.publicaciones VALUES (7, 'Sammy', 'Golden energy', '/uploads/imagen-1780770506242-764435084.jpg', '2026-06-06 18:28:26.251+00', '2026-06-06 18:28:26.251+00', 2);
INSERT INTO public.publicaciones VALUES (8, 'Lo necesitaba ', 'Es cafe...no necesitas mas ', '/uploads/imagen-1780770920821-820342968.jpg', '2026-06-06 18:35:20.874+00', '2026-06-06 18:35:20.874+00', 2);
INSERT INTO public.publicaciones VALUES (10, 'Comida', 'Arrocito del bien ', '/uploads/imagen-1780771275497-905031714.jpg', '2026-06-06 18:41:15.645+00', '2026-06-06 18:41:15.645+00', 2);
INSERT INTO public.publicaciones VALUES (12, 'So vo, Perry?', 'No podia no gastar', '/uploads/imagen-1780771427220-794742850.jpg', '2026-06-06 18:43:47.34+00', '2026-06-06 18:43:47.34+00', 3);
INSERT INTO public.publicaciones VALUES (13, '¿Cuanto falta para Huagulin?', 'Profile Picture...nah...Foto de perfil', '/uploads/imagen-1780771824486-446042789.jpg', '2026-06-06 18:50:24.502+00', '2026-06-06 18:50:24.502+00', 1);
INSERT INTO public.publicaciones VALUES (15, 'Me canse', 'Tengo los ojos chiquitos de tanta pantalla', '/uploads/imagen-1780772356900-812836894.jpg', '2026-06-06 18:59:16.915+00', '2026-06-06 18:59:16.915+00', 1);
INSERT INTO public.publicaciones VALUES (16, '¿Tiramos una cartas?', 'Si te digo quien gana el mundial...salimos', '/uploads/imagen-1780780716051-461707520.jpg', '2026-06-06 21:18:36.073+00', '2026-06-06 21:18:36.073+00', 4);
INSERT INTO public.publicaciones VALUES (17, 'camarita', 'compra', '/uploads/imagen-1780811928567-723601609.jpg', '2026-06-07 05:58:48.609+00', '2026-06-07 05:58:48.609+00', 4);
INSERT INTO public.publicaciones VALUES (18, 'Movimientos', '¿Quien dijo que no se podia mudar toda una biblioteca en tres cajas?', '/uploads/imagen-1780844078052-142695676.jpg', '2026-06-07 14:54:38.066+00', '2026-06-07 14:54:38.066+00', 5);
INSERT INTO public.publicaciones VALUES (19, 'Paseando con Sammy', 'Paseo', '/uploads/imagen-1780845029158-963119330.jpg', '2026-06-07 15:10:29.165+00', '2026-06-07 15:10:29.165+00', 2);
INSERT INTO public.publicaciones VALUES (20, 'LLegando', 'Nos vemos?', 'https://res.cloudinary.com/dryfs8zcg/image/upload/v1781048501/fotaza_uploads/tcyyptzbwty2iuokc4jn.jpg', '2026-06-09 23:41:42.148+00', '2026-06-09 23:41:42.148+00', 7);
INSERT INTO public.publicaciones VALUES (21, 'Si, soy la señora de los gatos', 'Tengo un gato...sino porque compraria esto', 'https://res.cloudinary.com/dryfs8zcg/image/upload/v1781049132/fotaza_uploads/sfxrkepyeoztdscncrjm.jpg', '2026-06-09 23:52:13.242+00', '2026-06-09 23:52:13.242+00', 5);
INSERT INTO public.publicaciones VALUES (27, 'Mudanza', 'el bicho de la compra', 'https://res.cloudinary.com/dryfs8zcg/image/upload/v1781056125/fotaza_uploads/oeyu5d3odwp88ocwhupu.jpg', '2026-06-10 01:48:46.537+00', '2026-06-10 01:48:46.537+00', 5);


--
-- TOC entry 4824 (class 0 OID 16508)
-- Dependencies: 236
-- Data for Name: seguidores; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.seguidores VALUES ('2026-06-08 17:26:25.856+00', '2026-06-08 17:26:25.856+00', 5, 1);
INSERT INTO public.seguidores VALUES ('2026-06-08 17:27:18.947+00', '2026-06-08 17:27:18.947+00', 1, 5);
INSERT INTO public.seguidores VALUES ('2026-06-08 17:51:48.568+00', '2026-06-08 17:51:48.568+00', 2, 4);
INSERT INTO public.seguidores VALUES ('2026-06-08 17:51:54.392+00', '2026-06-08 17:51:54.392+00', 2, 1);
INSERT INTO public.seguidores VALUES ('2026-06-08 17:52:03.792+00', '2026-06-08 17:52:03.792+00', 2, 3);
INSERT INTO public.seguidores VALUES ('2026-06-08 18:31:12.06+00', '2026-06-08 18:31:12.06+00', 5, 3);
INSERT INTO public.seguidores VALUES ('2026-06-08 18:36:21.797+00', '2026-06-08 18:36:21.797+00', 1, 2);
INSERT INTO public.seguidores VALUES ('2026-06-08 18:47:03.031+00', '2026-06-08 18:47:03.031+00', 3, 4);
INSERT INTO public.seguidores VALUES ('2026-06-09 00:21:19.762+00', '2026-06-09 00:21:19.762+00', 5, 2);
INSERT INTO public.seguidores VALUES ('2026-06-09 23:45:04.871+00', '2026-06-09 23:45:04.871+00', 7, 2);
INSERT INTO public.seguidores VALUES ('2026-06-09 23:45:06.165+00', '2026-06-09 23:45:06.165+00', 7, 5);
INSERT INTO public.seguidores VALUES ('2026-06-09 23:45:09.137+00', '2026-06-09 23:45:09.137+00', 7, 4);
INSERT INTO public.seguidores VALUES ('2026-06-09 23:52:19.746+00', '2026-06-09 23:52:19.746+00', 5, 7);
INSERT INTO public.seguidores VALUES ('2026-06-10 00:51:14.231+00', '2026-06-10 00:51:14.231+00', 4, 5);
INSERT INTO public.seguidores VALUES ('2026-06-10 00:55:43.92+00', '2026-06-10 00:55:43.92+00', 4, 7);
INSERT INTO public.seguidores VALUES ('2026-06-10 00:55:45.076+00', '2026-06-10 00:55:45.076+00', 4, 2);


--
-- TOC entry 4814 (class 0 OID 16400)
-- Dependencies: 226
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.usuarios VALUES (1, 'Evaristo Titus', 'Evaristo_ Eleva', 'Evaristo_Tito@Gmail.com', 'EVARISTO45', '2026-06-05 12:29:35.831+00', '2026-06-05 12:29:35.831+00');
INSERT INTO public.usuarios VALUES (2, 'Matias Del Arco', 'Matu_D''Arco', 'Mati32D''Arco@Gmail.com', 'Mati1000', '2026-06-05 12:30:24.023+00', '2026-06-05 12:30:24.023+00');
INSERT INTO public.usuarios VALUES (3, 'Sofia Snachez', 'Sofi_Snach12', 'Sofia15Snachez@Gmail.com', 'SOFISNACH22', '2026-06-06 15:59:55.913+00', '2026-06-06 15:59:55.913+00');
INSERT INTO public.usuarios VALUES (4, 'Catalina Di Santi', 'Cati_Di''Santi', 'Catalina9DSanti@Gmail.com', 'Catu22S', '2026-06-06 21:14:54.183+00', '2026-06-06 21:14:54.183+00');
INSERT INTO public.usuarios VALUES (5, 'Melinoe Aeson', 'Meli_Aeson', 'Melino99Aeson@Gmail.com', 'MelitaAeson', '2026-06-07 14:41:15.069+00', '2026-06-07 14:41:15.069+00');
INSERT INTO public.usuarios VALUES (7, 'Nicolas Bustamante', 'Nico_Busta23', 'Nico_Busta23@gmail.com', 'NickyBustaman', '2026-06-09 16:14:35.711+00', '2026-06-09 16:14:35.711+00');


--
-- TOC entry 4823 (class 0 OID 16488)
-- Dependencies: 235
-- Data for Name: valoraciones; Type: TABLE DATA; Schema: public; Owner: luliortiz222
--

INSERT INTO public.valoraciones VALUES (33, 4, '2026-06-09 21:02:44.31+00', '2026-06-09 21:02:44.31+00', 5, 7);
INSERT INTO public.valoraciones VALUES (34, 4, '2026-06-09 23:52:22.46+00', '2026-06-09 23:52:22.46+00', 5, 20);
INSERT INTO public.valoraciones VALUES (35, 4, '2026-06-09 23:54:45.099+00', '2026-06-09 23:54:45.099+00', 4, 21);
INSERT INTO public.valoraciones VALUES (36, 4, '2026-06-09 23:55:08.899+00', '2026-06-09 23:55:08.899+00', 4, 19);
INSERT INTO public.valoraciones VALUES (37, 4, '2026-06-09 23:55:44.605+00', '2026-06-09 23:55:44.605+00', 4, 18);
INSERT INTO public.valoraciones VALUES (38, 5, '2026-06-09 23:57:04.798+00', '2026-06-09 23:57:04.798+00', 4, 6);
INSERT INTO public.valoraciones VALUES (39, 4, '2026-06-10 00:54:15.134+00', '2026-06-10 00:54:15.134+00', 4, 17);
INSERT INTO public.valoraciones VALUES (40, 4, '2026-06-10 00:57:25.21+00', '2026-06-10 00:57:25.21+00', 4, 20);
INSERT INTO public.valoraciones VALUES (41, 5, '2026-06-10 01:32:00.122+00', '2026-06-10 01:32:00.122+00', 1, 19);
INSERT INTO public.valoraciones VALUES (42, 5, '2026-06-10 01:44:55.805+00', '2026-06-10 01:44:55.805+00', 7, 21);
INSERT INTO public.valoraciones VALUES (43, 5, '2026-06-10 01:45:13.21+00', '2026-06-10 01:45:13.21+00', 7, 18);
INSERT INTO public.valoraciones VALUES (44, 5, '2026-06-10 01:49:51.704+00', '2026-06-10 01:49:51.704+00', 5, 6);
INSERT INTO public.valoraciones VALUES (45, 5, '2026-06-10 14:30:08.408+00', '2026-06-10 14:30:08.408+00', 4, 27);
INSERT INTO public.valoraciones VALUES (1, 2, '2026-06-06 19:21:22.09+00', '2026-06-06 19:28:17.798+00', 2, 10);
INSERT INTO public.valoraciones VALUES (2, 5, '2026-06-06 19:29:31.38+00', '2026-06-06 19:30:00.776+00', 2, 7);
INSERT INTO public.valoraciones VALUES (3, 4, '2026-06-06 19:48:39.618+00', '2026-06-06 19:48:39.618+00', 2, 8);
INSERT INTO public.valoraciones VALUES (4, 4, '2026-06-06 20:09:12.357+00', '2026-06-06 20:09:12.357+00', 3, 12);
INSERT INTO public.valoraciones VALUES (5, 4, '2026-06-06 20:22:02.275+00', '2026-06-06 20:22:02.275+00', 3, 6);
INSERT INTO public.valoraciones VALUES (6, 4, '2026-06-06 20:24:39.886+00', '2026-06-06 20:24:39.886+00', 3, 5);
INSERT INTO public.valoraciones VALUES (7, 2, '2026-06-06 20:24:44.866+00', '2026-06-06 20:24:44.866+00', 3, 4);
INSERT INTO public.valoraciones VALUES (8, 4, '2026-06-06 21:36:44.717+00', '2026-06-06 21:36:44.717+00', 1, 16);
INSERT INTO public.valoraciones VALUES (9, 5, '2026-06-06 21:38:25.763+00', '2026-06-06 21:38:25.763+00', 1, 12);
INSERT INTO public.valoraciones VALUES (10, 5, '2026-06-06 21:40:48.308+00', '2026-06-06 21:40:48.308+00', 2, 12);
INSERT INTO public.valoraciones VALUES (11, 4, '2026-06-06 21:40:56.376+00', '2026-06-06 21:40:56.376+00', 2, 6);
INSERT INTO public.valoraciones VALUES (12, 5, '2026-06-06 21:41:00.998+00', '2026-06-06 21:41:00.998+00', 2, 3);
INSERT INTO public.valoraciones VALUES (13, 5, '2026-06-06 21:46:51.112+00', '2026-06-06 21:46:51.112+00', 4, 5);
INSERT INTO public.valoraciones VALUES (14, 3, '2026-06-06 23:04:38.993+00', '2026-06-06 23:04:38.993+00', 4, 15);
INSERT INTO public.valoraciones VALUES (15, 5, '2026-06-06 23:04:59.923+00', '2026-06-06 23:04:59.923+00', 4, 12);
INSERT INTO public.valoraciones VALUES (16, 4, '2026-06-06 23:05:04.152+00', '2026-06-06 23:05:04.152+00', 4, 8);
INSERT INTO public.valoraciones VALUES (17, 4, '2026-06-06 23:05:07.631+00', '2026-06-06 23:05:07.631+00', 4, 7);
INSERT INTO public.valoraciones VALUES (18, 5, '2026-06-06 23:05:10.399+00', '2026-06-06 23:05:10.399+00', 4, 3);
INSERT INTO public.valoraciones VALUES (19, 5, '2026-06-06 23:05:11.343+00', '2026-06-06 23:05:11.343+00', 4, 1);
INSERT INTO public.valoraciones VALUES (20, 5, '2026-06-06 23:08:24.785+00', '2026-06-06 23:08:24.785+00', 4, 10);
INSERT INTO public.valoraciones VALUES (21, 3, '2026-06-07 00:47:27.572+00', '2026-06-07 00:47:27.572+00', 4, 13);
INSERT INTO public.valoraciones VALUES (22, 5, '2026-06-07 14:48:47.618+00', '2026-06-07 14:48:47.618+00', 5, 4);
INSERT INTO public.valoraciones VALUES (23, 5, '2026-06-07 14:49:00.318+00', '2026-06-07 14:49:00.318+00', 5, 8);
INSERT INTO public.valoraciones VALUES (24, 5, '2026-06-07 14:49:03.69+00', '2026-06-07 14:49:03.69+00', 5, 10);
INSERT INTO public.valoraciones VALUES (25, 4, '2026-06-07 14:58:20.223+00', '2026-06-07 14:58:20.223+00', 5, 17);
INSERT INTO public.valoraciones VALUES (26, 4, '2026-06-08 14:41:14.441+00', '2026-06-08 14:41:14.441+00', 5, 19);
INSERT INTO public.valoraciones VALUES (27, 4, '2026-06-08 17:29:09.17+00', '2026-06-08 17:29:09.17+00', 5, 13);
INSERT INTO public.valoraciones VALUES (28, 5, '2026-06-08 17:29:44.626+00', '2026-06-08 17:29:44.626+00', 5, 16);
INSERT INTO public.valoraciones VALUES (29, 4, '2026-06-08 17:51:50.571+00', '2026-06-08 17:51:50.571+00', 2, 17);
INSERT INTO public.valoraciones VALUES (30, 5, '2026-06-08 18:31:07.16+00', '2026-06-08 18:31:07.16+00', 5, 15);
INSERT INTO public.valoraciones VALUES (31, 4, '2026-06-08 18:31:11.012+00', '2026-06-08 18:31:11.012+00', 5, 12);
INSERT INTO public.valoraciones VALUES (32, 4, '2026-06-08 18:50:04.596+00', '2026-06-08 18:50:04.596+00', 2, 1);


--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 239
-- Name: colecciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.colecciones_id_seq', 14, true);


--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 229
-- Name: comentarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.comentarios_id_seq', 23, true);


--
-- TOC entry 4846 (class 0 OID 0)
-- Dependencies: 231
-- Name: etiquetas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.etiquetas_id_seq', 11, true);


--
-- TOC entry 4847 (class 0 OID 0)
-- Dependencies: 237
-- Name: notificaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.notificaciones_id_seq', 62, true);


--
-- TOC entry 4848 (class 0 OID 0)
-- Dependencies: 227
-- Name: publicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.publicaciones_id_seq', 27, true);


--
-- TOC entry 4849 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 7, true);


--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 234
-- Name: valoraciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luliortiz222
--

SELECT pg_catalog.setval('public.valoraciones_id_seq', 45, true);


--
-- TOC entry 4652 (class 2606 OID 16569)
-- Name: coleccion_publicacions coleccion_publicacions_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.coleccion_publicacions
    ADD CONSTRAINT coleccion_publicacions_pkey PRIMARY KEY ("ColeccionId", "PublicacionId");


--
-- TOC entry 4650 (class 2606 OID 16557)
-- Name: colecciones colecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.colecciones
    ADD CONSTRAINT colecciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4200 (class 2606 OID 16448)
-- Name: comentarios comentarios_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4202 (class 2606 OID 54792)
-- Name: etiquetas etiquetas_nombre_key; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key UNIQUE (nombre);


--
-- TOC entry 4204 (class 2606 OID 54794)
-- Name: etiquetas etiquetas_nombre_key1; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key1 UNIQUE (nombre);


--
-- TOC entry 4206 (class 2606 OID 54796)
-- Name: etiquetas etiquetas_nombre_key10; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key10 UNIQUE (nombre);


--
-- TOC entry 4208 (class 2606 OID 54798)
-- Name: etiquetas etiquetas_nombre_key100; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key100 UNIQUE (nombre);


--
-- TOC entry 4210 (class 2606 OID 54800)
-- Name: etiquetas etiquetas_nombre_key101; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key101 UNIQUE (nombre);


--
-- TOC entry 4212 (class 2606 OID 54802)
-- Name: etiquetas etiquetas_nombre_key102; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key102 UNIQUE (nombre);


--
-- TOC entry 4214 (class 2606 OID 54804)
-- Name: etiquetas etiquetas_nombre_key103; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key103 UNIQUE (nombre);


--
-- TOC entry 4216 (class 2606 OID 54806)
-- Name: etiquetas etiquetas_nombre_key104; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key104 UNIQUE (nombre);


--
-- TOC entry 4218 (class 2606 OID 54808)
-- Name: etiquetas etiquetas_nombre_key105; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key105 UNIQUE (nombre);


--
-- TOC entry 4220 (class 2606 OID 54810)
-- Name: etiquetas etiquetas_nombre_key106; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key106 UNIQUE (nombre);


--
-- TOC entry 4222 (class 2606 OID 54812)
-- Name: etiquetas etiquetas_nombre_key107; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key107 UNIQUE (nombre);


--
-- TOC entry 4224 (class 2606 OID 54814)
-- Name: etiquetas etiquetas_nombre_key108; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key108 UNIQUE (nombre);


--
-- TOC entry 4226 (class 2606 OID 54816)
-- Name: etiquetas etiquetas_nombre_key109; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key109 UNIQUE (nombre);


--
-- TOC entry 4228 (class 2606 OID 54818)
-- Name: etiquetas etiquetas_nombre_key11; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key11 UNIQUE (nombre);


--
-- TOC entry 4230 (class 2606 OID 54820)
-- Name: etiquetas etiquetas_nombre_key110; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key110 UNIQUE (nombre);


--
-- TOC entry 4232 (class 2606 OID 54822)
-- Name: etiquetas etiquetas_nombre_key111; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key111 UNIQUE (nombre);


--
-- TOC entry 4234 (class 2606 OID 54824)
-- Name: etiquetas etiquetas_nombre_key112; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key112 UNIQUE (nombre);


--
-- TOC entry 4236 (class 2606 OID 54826)
-- Name: etiquetas etiquetas_nombre_key113; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key113 UNIQUE (nombre);


--
-- TOC entry 4238 (class 2606 OID 54828)
-- Name: etiquetas etiquetas_nombre_key114; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key114 UNIQUE (nombre);


--
-- TOC entry 4240 (class 2606 OID 54830)
-- Name: etiquetas etiquetas_nombre_key115; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key115 UNIQUE (nombre);


--
-- TOC entry 4242 (class 2606 OID 54832)
-- Name: etiquetas etiquetas_nombre_key116; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key116 UNIQUE (nombre);


--
-- TOC entry 4244 (class 2606 OID 54836)
-- Name: etiquetas etiquetas_nombre_key117; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key117 UNIQUE (nombre);


--
-- TOC entry 4246 (class 2606 OID 54838)
-- Name: etiquetas etiquetas_nombre_key118; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key118 UNIQUE (nombre);


--
-- TOC entry 4248 (class 2606 OID 54840)
-- Name: etiquetas etiquetas_nombre_key119; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key119 UNIQUE (nombre);


--
-- TOC entry 4250 (class 2606 OID 54842)
-- Name: etiquetas etiquetas_nombre_key12; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key12 UNIQUE (nombre);


--
-- TOC entry 4252 (class 2606 OID 54844)
-- Name: etiquetas etiquetas_nombre_key120; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key120 UNIQUE (nombre);


--
-- TOC entry 4254 (class 2606 OID 54846)
-- Name: etiquetas etiquetas_nombre_key121; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key121 UNIQUE (nombre);


--
-- TOC entry 4256 (class 2606 OID 54848)
-- Name: etiquetas etiquetas_nombre_key122; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key122 UNIQUE (nombre);


--
-- TOC entry 4258 (class 2606 OID 54850)
-- Name: etiquetas etiquetas_nombre_key123; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key123 UNIQUE (nombre);


--
-- TOC entry 4260 (class 2606 OID 54852)
-- Name: etiquetas etiquetas_nombre_key124; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key124 UNIQUE (nombre);


--
-- TOC entry 4262 (class 2606 OID 54854)
-- Name: etiquetas etiquetas_nombre_key125; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key125 UNIQUE (nombre);


--
-- TOC entry 4264 (class 2606 OID 54856)
-- Name: etiquetas etiquetas_nombre_key126; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key126 UNIQUE (nombre);


--
-- TOC entry 4266 (class 2606 OID 54858)
-- Name: etiquetas etiquetas_nombre_key127; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key127 UNIQUE (nombre);


--
-- TOC entry 4268 (class 2606 OID 54860)
-- Name: etiquetas etiquetas_nombre_key128; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key128 UNIQUE (nombre);


--
-- TOC entry 4270 (class 2606 OID 54862)
-- Name: etiquetas etiquetas_nombre_key129; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key129 UNIQUE (nombre);


--
-- TOC entry 4272 (class 2606 OID 54866)
-- Name: etiquetas etiquetas_nombre_key13; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key13 UNIQUE (nombre);


--
-- TOC entry 4274 (class 2606 OID 54868)
-- Name: etiquetas etiquetas_nombre_key130; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key130 UNIQUE (nombre);


--
-- TOC entry 4276 (class 2606 OID 54870)
-- Name: etiquetas etiquetas_nombre_key131; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key131 UNIQUE (nombre);


--
-- TOC entry 4278 (class 2606 OID 54872)
-- Name: etiquetas etiquetas_nombre_key132; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key132 UNIQUE (nombre);


--
-- TOC entry 4280 (class 2606 OID 54874)
-- Name: etiquetas etiquetas_nombre_key133; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key133 UNIQUE (nombre);


--
-- TOC entry 4282 (class 2606 OID 54876)
-- Name: etiquetas etiquetas_nombre_key134; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key134 UNIQUE (nombre);


--
-- TOC entry 4284 (class 2606 OID 54878)
-- Name: etiquetas etiquetas_nombre_key135; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key135 UNIQUE (nombre);


--
-- TOC entry 4286 (class 2606 OID 54880)
-- Name: etiquetas etiquetas_nombre_key136; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key136 UNIQUE (nombre);


--
-- TOC entry 4288 (class 2606 OID 54882)
-- Name: etiquetas etiquetas_nombre_key137; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key137 UNIQUE (nombre);


--
-- TOC entry 4290 (class 2606 OID 54884)
-- Name: etiquetas etiquetas_nombre_key138; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key138 UNIQUE (nombre);


--
-- TOC entry 4292 (class 2606 OID 54886)
-- Name: etiquetas etiquetas_nombre_key139; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key139 UNIQUE (nombre);


--
-- TOC entry 4294 (class 2606 OID 54888)
-- Name: etiquetas etiquetas_nombre_key14; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key14 UNIQUE (nombre);


--
-- TOC entry 4296 (class 2606 OID 54890)
-- Name: etiquetas etiquetas_nombre_key140; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key140 UNIQUE (nombre);


--
-- TOC entry 4298 (class 2606 OID 54892)
-- Name: etiquetas etiquetas_nombre_key141; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key141 UNIQUE (nombre);


--
-- TOC entry 4300 (class 2606 OID 54894)
-- Name: etiquetas etiquetas_nombre_key142; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key142 UNIQUE (nombre);


--
-- TOC entry 4302 (class 2606 OID 54898)
-- Name: etiquetas etiquetas_nombre_key143; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key143 UNIQUE (nombre);


--
-- TOC entry 4304 (class 2606 OID 54900)
-- Name: etiquetas etiquetas_nombre_key144; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key144 UNIQUE (nombre);


--
-- TOC entry 4306 (class 2606 OID 54902)
-- Name: etiquetas etiquetas_nombre_key145; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key145 UNIQUE (nombre);


--
-- TOC entry 4308 (class 2606 OID 54904)
-- Name: etiquetas etiquetas_nombre_key146; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key146 UNIQUE (nombre);


--
-- TOC entry 4310 (class 2606 OID 54906)
-- Name: etiquetas etiquetas_nombre_key147; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key147 UNIQUE (nombre);


--
-- TOC entry 4312 (class 2606 OID 54908)
-- Name: etiquetas etiquetas_nombre_key148; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key148 UNIQUE (nombre);


--
-- TOC entry 4314 (class 2606 OID 54910)
-- Name: etiquetas etiquetas_nombre_key149; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key149 UNIQUE (nombre);


--
-- TOC entry 4316 (class 2606 OID 54912)
-- Name: etiquetas etiquetas_nombre_key15; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key15 UNIQUE (nombre);


--
-- TOC entry 4318 (class 2606 OID 54914)
-- Name: etiquetas etiquetas_nombre_key150; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key150 UNIQUE (nombre);


--
-- TOC entry 4320 (class 2606 OID 54916)
-- Name: etiquetas etiquetas_nombre_key151; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key151 UNIQUE (nombre);


--
-- TOC entry 4322 (class 2606 OID 54918)
-- Name: etiquetas etiquetas_nombre_key152; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key152 UNIQUE (nombre);


--
-- TOC entry 4324 (class 2606 OID 54920)
-- Name: etiquetas etiquetas_nombre_key153; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key153 UNIQUE (nombre);


--
-- TOC entry 4326 (class 2606 OID 54922)
-- Name: etiquetas etiquetas_nombre_key154; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key154 UNIQUE (nombre);


--
-- TOC entry 4328 (class 2606 OID 54924)
-- Name: etiquetas etiquetas_nombre_key155; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key155 UNIQUE (nombre);


--
-- TOC entry 4330 (class 2606 OID 54926)
-- Name: etiquetas etiquetas_nombre_key156; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key156 UNIQUE (nombre);


--
-- TOC entry 4332 (class 2606 OID 54928)
-- Name: etiquetas etiquetas_nombre_key157; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key157 UNIQUE (nombre);


--
-- TOC entry 4334 (class 2606 OID 54930)
-- Name: etiquetas etiquetas_nombre_key158; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key158 UNIQUE (nombre);


--
-- TOC entry 4336 (class 2606 OID 54932)
-- Name: etiquetas etiquetas_nombre_key159; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key159 UNIQUE (nombre);


--
-- TOC entry 4338 (class 2606 OID 54934)
-- Name: etiquetas etiquetas_nombre_key16; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key16 UNIQUE (nombre);


--
-- TOC entry 4340 (class 2606 OID 54936)
-- Name: etiquetas etiquetas_nombre_key160; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key160 UNIQUE (nombre);


--
-- TOC entry 4342 (class 2606 OID 54938)
-- Name: etiquetas etiquetas_nombre_key161; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key161 UNIQUE (nombre);


--
-- TOC entry 4344 (class 2606 OID 54940)
-- Name: etiquetas etiquetas_nombre_key162; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key162 UNIQUE (nombre);


--
-- TOC entry 4346 (class 2606 OID 54942)
-- Name: etiquetas etiquetas_nombre_key163; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key163 UNIQUE (nombre);


--
-- TOC entry 4348 (class 2606 OID 54944)
-- Name: etiquetas etiquetas_nombre_key164; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key164 UNIQUE (nombre);


--
-- TOC entry 4350 (class 2606 OID 54946)
-- Name: etiquetas etiquetas_nombre_key165; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key165 UNIQUE (nombre);


--
-- TOC entry 4352 (class 2606 OID 54948)
-- Name: etiquetas etiquetas_nombre_key166; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key166 UNIQUE (nombre);


--
-- TOC entry 4354 (class 2606 OID 54950)
-- Name: etiquetas etiquetas_nombre_key167; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key167 UNIQUE (nombre);


--
-- TOC entry 4356 (class 2606 OID 54952)
-- Name: etiquetas etiquetas_nombre_key168; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key168 UNIQUE (nombre);


--
-- TOC entry 4358 (class 2606 OID 54954)
-- Name: etiquetas etiquetas_nombre_key169; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key169 UNIQUE (nombre);


--
-- TOC entry 4360 (class 2606 OID 54956)
-- Name: etiquetas etiquetas_nombre_key17; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key17 UNIQUE (nombre);


--
-- TOC entry 4362 (class 2606 OID 54958)
-- Name: etiquetas etiquetas_nombre_key170; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key170 UNIQUE (nombre);


--
-- TOC entry 4364 (class 2606 OID 54960)
-- Name: etiquetas etiquetas_nombre_key171; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key171 UNIQUE (nombre);


--
-- TOC entry 4366 (class 2606 OID 54962)
-- Name: etiquetas etiquetas_nombre_key172; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key172 UNIQUE (nombre);


--
-- TOC entry 4368 (class 2606 OID 54964)
-- Name: etiquetas etiquetas_nombre_key173; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key173 UNIQUE (nombre);


--
-- TOC entry 4370 (class 2606 OID 54966)
-- Name: etiquetas etiquetas_nombre_key174; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key174 UNIQUE (nombre);


--
-- TOC entry 4372 (class 2606 OID 54968)
-- Name: etiquetas etiquetas_nombre_key175; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key175 UNIQUE (nombre);


--
-- TOC entry 4374 (class 2606 OID 54970)
-- Name: etiquetas etiquetas_nombre_key176; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key176 UNIQUE (nombre);


--
-- TOC entry 4376 (class 2606 OID 54974)
-- Name: etiquetas etiquetas_nombre_key177; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key177 UNIQUE (nombre);


--
-- TOC entry 4378 (class 2606 OID 54976)
-- Name: etiquetas etiquetas_nombre_key178; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key178 UNIQUE (nombre);


--
-- TOC entry 4380 (class 2606 OID 54978)
-- Name: etiquetas etiquetas_nombre_key179; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key179 UNIQUE (nombre);


--
-- TOC entry 4382 (class 2606 OID 54980)
-- Name: etiquetas etiquetas_nombre_key18; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key18 UNIQUE (nombre);


--
-- TOC entry 4384 (class 2606 OID 54982)
-- Name: etiquetas etiquetas_nombre_key180; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key180 UNIQUE (nombre);


--
-- TOC entry 4386 (class 2606 OID 54984)
-- Name: etiquetas etiquetas_nombre_key181; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key181 UNIQUE (nombre);


--
-- TOC entry 4388 (class 2606 OID 54986)
-- Name: etiquetas etiquetas_nombre_key182; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key182 UNIQUE (nombre);


--
-- TOC entry 4390 (class 2606 OID 54988)
-- Name: etiquetas etiquetas_nombre_key183; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key183 UNIQUE (nombre);


--
-- TOC entry 4392 (class 2606 OID 54990)
-- Name: etiquetas etiquetas_nombre_key184; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key184 UNIQUE (nombre);


--
-- TOC entry 4394 (class 2606 OID 54992)
-- Name: etiquetas etiquetas_nombre_key185; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key185 UNIQUE (nombre);


--
-- TOC entry 4396 (class 2606 OID 54994)
-- Name: etiquetas etiquetas_nombre_key186; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key186 UNIQUE (nombre);


--
-- TOC entry 4398 (class 2606 OID 54996)
-- Name: etiquetas etiquetas_nombre_key187; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key187 UNIQUE (nombre);


--
-- TOC entry 4400 (class 2606 OID 54998)
-- Name: etiquetas etiquetas_nombre_key188; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key188 UNIQUE (nombre);


--
-- TOC entry 4402 (class 2606 OID 55000)
-- Name: etiquetas etiquetas_nombre_key189; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key189 UNIQUE (nombre);


--
-- TOC entry 4404 (class 2606 OID 55002)
-- Name: etiquetas etiquetas_nombre_key19; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key19 UNIQUE (nombre);


--
-- TOC entry 4406 (class 2606 OID 55004)
-- Name: etiquetas etiquetas_nombre_key190; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key190 UNIQUE (nombre);


--
-- TOC entry 4408 (class 2606 OID 54780)
-- Name: etiquetas etiquetas_nombre_key191; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key191 UNIQUE (nombre);


--
-- TOC entry 4410 (class 2606 OID 54790)
-- Name: etiquetas etiquetas_nombre_key192; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key192 UNIQUE (nombre);


--
-- TOC entry 4412 (class 2606 OID 54782)
-- Name: etiquetas etiquetas_nombre_key193; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key193 UNIQUE (nombre);


--
-- TOC entry 4414 (class 2606 OID 54788)
-- Name: etiquetas etiquetas_nombre_key194; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key194 UNIQUE (nombre);


--
-- TOC entry 4416 (class 2606 OID 54784)
-- Name: etiquetas etiquetas_nombre_key195; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key195 UNIQUE (nombre);


--
-- TOC entry 4418 (class 2606 OID 54786)
-- Name: etiquetas etiquetas_nombre_key196; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key196 UNIQUE (nombre);


--
-- TOC entry 4420 (class 2606 OID 54972)
-- Name: etiquetas etiquetas_nombre_key197; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key197 UNIQUE (nombre);


--
-- TOC entry 4422 (class 2606 OID 54834)
-- Name: etiquetas etiquetas_nombre_key198; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key198 UNIQUE (nombre);


--
-- TOC entry 4424 (class 2606 OID 55108)
-- Name: etiquetas etiquetas_nombre_key199; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key199 UNIQUE (nombre);


--
-- TOC entry 4426 (class 2606 OID 55006)
-- Name: etiquetas etiquetas_nombre_key2; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key2 UNIQUE (nombre);


--
-- TOC entry 4428 (class 2606 OID 55008)
-- Name: etiquetas etiquetas_nombre_key20; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key20 UNIQUE (nombre);


--
-- TOC entry 4430 (class 2606 OID 55126)
-- Name: etiquetas etiquetas_nombre_key200; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key200 UNIQUE (nombre);


--
-- TOC entry 4432 (class 2606 OID 55110)
-- Name: etiquetas etiquetas_nombre_key201; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key201 UNIQUE (nombre);


--
-- TOC entry 4434 (class 2606 OID 55124)
-- Name: etiquetas etiquetas_nombre_key202; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key202 UNIQUE (nombre);


--
-- TOC entry 4436 (class 2606 OID 55064)
-- Name: etiquetas etiquetas_nombre_key203; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key203 UNIQUE (nombre);


--
-- TOC entry 4438 (class 2606 OID 55122)
-- Name: etiquetas etiquetas_nombre_key204; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key204 UNIQUE (nombre);


--
-- TOC entry 4440 (class 2606 OID 54864)
-- Name: etiquetas etiquetas_nombre_key205; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key205 UNIQUE (nombre);


--
-- TOC entry 4442 (class 2606 OID 55120)
-- Name: etiquetas etiquetas_nombre_key206; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key206 UNIQUE (nombre);


--
-- TOC entry 4444 (class 2606 OID 55112)
-- Name: etiquetas etiquetas_nombre_key207; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key207 UNIQUE (nombre);


--
-- TOC entry 4446 (class 2606 OID 55118)
-- Name: etiquetas etiquetas_nombre_key208; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key208 UNIQUE (nombre);


--
-- TOC entry 4448 (class 2606 OID 55114)
-- Name: etiquetas etiquetas_nombre_key209; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key209 UNIQUE (nombre);


--
-- TOC entry 4450 (class 2606 OID 55010)
-- Name: etiquetas etiquetas_nombre_key21; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key21 UNIQUE (nombre);


--
-- TOC entry 4452 (class 2606 OID 55116)
-- Name: etiquetas etiquetas_nombre_key210; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key210 UNIQUE (nombre);


--
-- TOC entry 4454 (class 2606 OID 55042)
-- Name: etiquetas etiquetas_nombre_key211; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key211 UNIQUE (nombre);


--
-- TOC entry 4456 (class 2606 OID 54896)
-- Name: etiquetas etiquetas_nombre_key212; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key212 UNIQUE (nombre);


--
-- TOC entry 4458 (class 2606 OID 55038)
-- Name: etiquetas etiquetas_nombre_key213; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key213 UNIQUE (nombre);


--
-- TOC entry 4460 (class 2606 OID 54694)
-- Name: etiquetas etiquetas_nombre_key214; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key214 UNIQUE (nombre);


--
-- TOC entry 4462 (class 2606 OID 55128)
-- Name: etiquetas etiquetas_nombre_key215; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key215 UNIQUE (nombre);


--
-- TOC entry 4464 (class 2606 OID 54754)
-- Name: etiquetas etiquetas_nombre_key216; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key216 UNIQUE (nombre);


--
-- TOC entry 4466 (class 2606 OID 54760)
-- Name: etiquetas etiquetas_nombre_key217; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key217 UNIQUE (nombre);


--
-- TOC entry 4468 (class 2606 OID 55050)
-- Name: etiquetas etiquetas_nombre_key218; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key218 UNIQUE (nombre);


--
-- TOC entry 4470 (class 2606 OID 55012)
-- Name: etiquetas etiquetas_nombre_key22; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key22 UNIQUE (nombre);


--
-- TOC entry 4472 (class 2606 OID 55014)
-- Name: etiquetas etiquetas_nombre_key23; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key23 UNIQUE (nombre);


--
-- TOC entry 4474 (class 2606 OID 55016)
-- Name: etiquetas etiquetas_nombre_key24; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key24 UNIQUE (nombre);


--
-- TOC entry 4476 (class 2606 OID 55018)
-- Name: etiquetas etiquetas_nombre_key25; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key25 UNIQUE (nombre);


--
-- TOC entry 4478 (class 2606 OID 55020)
-- Name: etiquetas etiquetas_nombre_key26; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key26 UNIQUE (nombre);


--
-- TOC entry 4480 (class 2606 OID 55022)
-- Name: etiquetas etiquetas_nombre_key27; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key27 UNIQUE (nombre);


--
-- TOC entry 4482 (class 2606 OID 55024)
-- Name: etiquetas etiquetas_nombre_key28; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key28 UNIQUE (nombre);


--
-- TOC entry 4484 (class 2606 OID 55026)
-- Name: etiquetas etiquetas_nombre_key29; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key29 UNIQUE (nombre);


--
-- TOC entry 4486 (class 2606 OID 55028)
-- Name: etiquetas etiquetas_nombre_key3; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key3 UNIQUE (nombre);


--
-- TOC entry 4488 (class 2606 OID 55030)
-- Name: etiquetas etiquetas_nombre_key30; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key30 UNIQUE (nombre);


--
-- TOC entry 4490 (class 2606 OID 55032)
-- Name: etiquetas etiquetas_nombre_key31; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key31 UNIQUE (nombre);


--
-- TOC entry 4492 (class 2606 OID 55034)
-- Name: etiquetas etiquetas_nombre_key32; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key32 UNIQUE (nombre);


--
-- TOC entry 4494 (class 2606 OID 55036)
-- Name: etiquetas etiquetas_nombre_key33; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key33 UNIQUE (nombre);


--
-- TOC entry 4496 (class 2606 OID 55040)
-- Name: etiquetas etiquetas_nombre_key34; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key34 UNIQUE (nombre);


--
-- TOC entry 4498 (class 2606 OID 55044)
-- Name: etiquetas etiquetas_nombre_key35; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key35 UNIQUE (nombre);


--
-- TOC entry 4500 (class 2606 OID 55046)
-- Name: etiquetas etiquetas_nombre_key36; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key36 UNIQUE (nombre);


--
-- TOC entry 4502 (class 2606 OID 55048)
-- Name: etiquetas etiquetas_nombre_key37; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key37 UNIQUE (nombre);


--
-- TOC entry 4504 (class 2606 OID 55052)
-- Name: etiquetas etiquetas_nombre_key38; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key38 UNIQUE (nombre);


--
-- TOC entry 4506 (class 2606 OID 55054)
-- Name: etiquetas etiquetas_nombre_key39; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key39 UNIQUE (nombre);


--
-- TOC entry 4508 (class 2606 OID 55056)
-- Name: etiquetas etiquetas_nombre_key4; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key4 UNIQUE (nombre);


--
-- TOC entry 4510 (class 2606 OID 55058)
-- Name: etiquetas etiquetas_nombre_key40; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key40 UNIQUE (nombre);


--
-- TOC entry 4512 (class 2606 OID 55060)
-- Name: etiquetas etiquetas_nombre_key41; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key41 UNIQUE (nombre);


--
-- TOC entry 4514 (class 2606 OID 55062)
-- Name: etiquetas etiquetas_nombre_key42; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key42 UNIQUE (nombre);


--
-- TOC entry 4516 (class 2606 OID 55066)
-- Name: etiquetas etiquetas_nombre_key43; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key43 UNIQUE (nombre);


--
-- TOC entry 4518 (class 2606 OID 55068)
-- Name: etiquetas etiquetas_nombre_key44; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key44 UNIQUE (nombre);


--
-- TOC entry 4520 (class 2606 OID 55070)
-- Name: etiquetas etiquetas_nombre_key45; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key45 UNIQUE (nombre);


--
-- TOC entry 4522 (class 2606 OID 55072)
-- Name: etiquetas etiquetas_nombre_key46; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key46 UNIQUE (nombre);


--
-- TOC entry 4524 (class 2606 OID 55074)
-- Name: etiquetas etiquetas_nombre_key47; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key47 UNIQUE (nombre);


--
-- TOC entry 4526 (class 2606 OID 55076)
-- Name: etiquetas etiquetas_nombre_key48; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key48 UNIQUE (nombre);


--
-- TOC entry 4528 (class 2606 OID 55078)
-- Name: etiquetas etiquetas_nombre_key49; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key49 UNIQUE (nombre);


--
-- TOC entry 4530 (class 2606 OID 55080)
-- Name: etiquetas etiquetas_nombre_key5; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key5 UNIQUE (nombre);


--
-- TOC entry 4532 (class 2606 OID 55082)
-- Name: etiquetas etiquetas_nombre_key50; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key50 UNIQUE (nombre);


--
-- TOC entry 4534 (class 2606 OID 55084)
-- Name: etiquetas etiquetas_nombre_key51; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key51 UNIQUE (nombre);


--
-- TOC entry 4536 (class 2606 OID 55086)
-- Name: etiquetas etiquetas_nombre_key52; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key52 UNIQUE (nombre);


--
-- TOC entry 4538 (class 2606 OID 55088)
-- Name: etiquetas etiquetas_nombre_key53; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key53 UNIQUE (nombre);


--
-- TOC entry 4540 (class 2606 OID 55090)
-- Name: etiquetas etiquetas_nombre_key54; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key54 UNIQUE (nombre);


--
-- TOC entry 4542 (class 2606 OID 55092)
-- Name: etiquetas etiquetas_nombre_key55; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key55 UNIQUE (nombre);


--
-- TOC entry 4544 (class 2606 OID 55094)
-- Name: etiquetas etiquetas_nombre_key56; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key56 UNIQUE (nombre);


--
-- TOC entry 4546 (class 2606 OID 55096)
-- Name: etiquetas etiquetas_nombre_key57; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key57 UNIQUE (nombre);


--
-- TOC entry 4548 (class 2606 OID 55098)
-- Name: etiquetas etiquetas_nombre_key58; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key58 UNIQUE (nombre);


--
-- TOC entry 4550 (class 2606 OID 55100)
-- Name: etiquetas etiquetas_nombre_key59; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key59 UNIQUE (nombre);


--
-- TOC entry 4552 (class 2606 OID 55102)
-- Name: etiquetas etiquetas_nombre_key6; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key6 UNIQUE (nombre);


--
-- TOC entry 4554 (class 2606 OID 55104)
-- Name: etiquetas etiquetas_nombre_key60; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key60 UNIQUE (nombre);


--
-- TOC entry 4556 (class 2606 OID 55106)
-- Name: etiquetas etiquetas_nombre_key61; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key61 UNIQUE (nombre);


--
-- TOC entry 4558 (class 2606 OID 54692)
-- Name: etiquetas etiquetas_nombre_key62; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key62 UNIQUE (nombre);


--
-- TOC entry 4560 (class 2606 OID 54696)
-- Name: etiquetas etiquetas_nombre_key63; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key63 UNIQUE (nombre);


--
-- TOC entry 4562 (class 2606 OID 54698)
-- Name: etiquetas etiquetas_nombre_key64; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key64 UNIQUE (nombre);


--
-- TOC entry 4564 (class 2606 OID 54700)
-- Name: etiquetas etiquetas_nombre_key65; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key65 UNIQUE (nombre);


--
-- TOC entry 4566 (class 2606 OID 54702)
-- Name: etiquetas etiquetas_nombre_key66; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key66 UNIQUE (nombre);


--
-- TOC entry 4568 (class 2606 OID 54704)
-- Name: etiquetas etiquetas_nombre_key67; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key67 UNIQUE (nombre);


--
-- TOC entry 4570 (class 2606 OID 54706)
-- Name: etiquetas etiquetas_nombre_key68; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key68 UNIQUE (nombre);


--
-- TOC entry 4572 (class 2606 OID 54708)
-- Name: etiquetas etiquetas_nombre_key69; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key69 UNIQUE (nombre);


--
-- TOC entry 4574 (class 2606 OID 54710)
-- Name: etiquetas etiquetas_nombre_key7; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key7 UNIQUE (nombre);


--
-- TOC entry 4576 (class 2606 OID 54712)
-- Name: etiquetas etiquetas_nombre_key70; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key70 UNIQUE (nombre);


--
-- TOC entry 4578 (class 2606 OID 54714)
-- Name: etiquetas etiquetas_nombre_key71; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key71 UNIQUE (nombre);


--
-- TOC entry 4580 (class 2606 OID 54716)
-- Name: etiquetas etiquetas_nombre_key72; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key72 UNIQUE (nombre);


--
-- TOC entry 4582 (class 2606 OID 54718)
-- Name: etiquetas etiquetas_nombre_key73; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key73 UNIQUE (nombre);


--
-- TOC entry 4584 (class 2606 OID 54720)
-- Name: etiquetas etiquetas_nombre_key74; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key74 UNIQUE (nombre);


--
-- TOC entry 4586 (class 2606 OID 54722)
-- Name: etiquetas etiquetas_nombre_key75; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key75 UNIQUE (nombre);


--
-- TOC entry 4588 (class 2606 OID 54724)
-- Name: etiquetas etiquetas_nombre_key76; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key76 UNIQUE (nombre);


--
-- TOC entry 4590 (class 2606 OID 54726)
-- Name: etiquetas etiquetas_nombre_key77; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key77 UNIQUE (nombre);


--
-- TOC entry 4592 (class 2606 OID 54728)
-- Name: etiquetas etiquetas_nombre_key78; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key78 UNIQUE (nombre);


--
-- TOC entry 4594 (class 2606 OID 54730)
-- Name: etiquetas etiquetas_nombre_key79; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key79 UNIQUE (nombre);


--
-- TOC entry 4596 (class 2606 OID 54732)
-- Name: etiquetas etiquetas_nombre_key8; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key8 UNIQUE (nombre);


--
-- TOC entry 4598 (class 2606 OID 54734)
-- Name: etiquetas etiquetas_nombre_key80; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key80 UNIQUE (nombre);


--
-- TOC entry 4600 (class 2606 OID 54736)
-- Name: etiquetas etiquetas_nombre_key81; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key81 UNIQUE (nombre);


--
-- TOC entry 4602 (class 2606 OID 54738)
-- Name: etiquetas etiquetas_nombre_key82; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key82 UNIQUE (nombre);


--
-- TOC entry 4604 (class 2606 OID 54740)
-- Name: etiquetas etiquetas_nombre_key83; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key83 UNIQUE (nombre);


--
-- TOC entry 4606 (class 2606 OID 54742)
-- Name: etiquetas etiquetas_nombre_key84; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key84 UNIQUE (nombre);


--
-- TOC entry 4608 (class 2606 OID 54744)
-- Name: etiquetas etiquetas_nombre_key85; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key85 UNIQUE (nombre);


--
-- TOC entry 4610 (class 2606 OID 54746)
-- Name: etiquetas etiquetas_nombre_key86; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key86 UNIQUE (nombre);


--
-- TOC entry 4612 (class 2606 OID 54748)
-- Name: etiquetas etiquetas_nombre_key87; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key87 UNIQUE (nombre);


--
-- TOC entry 4614 (class 2606 OID 54750)
-- Name: etiquetas etiquetas_nombre_key88; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key88 UNIQUE (nombre);


--
-- TOC entry 4616 (class 2606 OID 54752)
-- Name: etiquetas etiquetas_nombre_key89; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key89 UNIQUE (nombre);


--
-- TOC entry 4618 (class 2606 OID 54756)
-- Name: etiquetas etiquetas_nombre_key9; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key9 UNIQUE (nombre);


--
-- TOC entry 4620 (class 2606 OID 54758)
-- Name: etiquetas etiquetas_nombre_key90; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key90 UNIQUE (nombre);


--
-- TOC entry 4622 (class 2606 OID 54762)
-- Name: etiquetas etiquetas_nombre_key91; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key91 UNIQUE (nombre);


--
-- TOC entry 4624 (class 2606 OID 54764)
-- Name: etiquetas etiquetas_nombre_key92; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key92 UNIQUE (nombre);


--
-- TOC entry 4626 (class 2606 OID 54766)
-- Name: etiquetas etiquetas_nombre_key93; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key93 UNIQUE (nombre);


--
-- TOC entry 4628 (class 2606 OID 54768)
-- Name: etiquetas etiquetas_nombre_key94; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key94 UNIQUE (nombre);


--
-- TOC entry 4630 (class 2606 OID 54770)
-- Name: etiquetas etiquetas_nombre_key95; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key95 UNIQUE (nombre);


--
-- TOC entry 4632 (class 2606 OID 54772)
-- Name: etiquetas etiquetas_nombre_key96; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key96 UNIQUE (nombre);


--
-- TOC entry 4634 (class 2606 OID 54774)
-- Name: etiquetas etiquetas_nombre_key97; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key97 UNIQUE (nombre);


--
-- TOC entry 4636 (class 2606 OID 54776)
-- Name: etiquetas etiquetas_nombre_key98; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key98 UNIQUE (nombre);


--
-- TOC entry 4638 (class 2606 OID 54778)
-- Name: etiquetas etiquetas_nombre_key99; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_nombre_key99 UNIQUE (nombre);


--
-- TOC entry 4640 (class 2606 OID 16467)
-- Name: etiquetas etiquetas_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_pkey PRIMARY KEY (id);


--
-- TOC entry 4648 (class 2606 OID 16541)
-- Name: notificaciones notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4642 (class 2606 OID 16476)
-- Name: publicacion_etiqueta publicacion_etiqueta_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.publicacion_etiqueta
    ADD CONSTRAINT publicacion_etiqueta_pkey PRIMARY KEY ("publicacionId", "etiquetaId");


--
-- TOC entry 4198 (class 2606 OID 16430)
-- Name: publicaciones publicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.publicaciones
    ADD CONSTRAINT publicaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4646 (class 2606 OID 16516)
-- Name: seguidores seguidores_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.seguidores
    ADD CONSTRAINT seguidores_pkey PRIMARY KEY ("seguidorId", "usuarioId");


--
-- TOC entry 3286 (class 2606 OID 54588)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 3288 (class 2606 OID 54590)
-- Name: usuarios usuarios_email_key1; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key1 UNIQUE (email);


--
-- TOC entry 3290 (class 2606 OID 54592)
-- Name: usuarios usuarios_email_key10; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key10 UNIQUE (email);


--
-- TOC entry 3292 (class 2606 OID 54594)
-- Name: usuarios usuarios_email_key100; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key100 UNIQUE (email);


--
-- TOC entry 3294 (class 2606 OID 54596)
-- Name: usuarios usuarios_email_key101; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key101 UNIQUE (email);


--
-- TOC entry 3296 (class 2606 OID 54598)
-- Name: usuarios usuarios_email_key102; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key102 UNIQUE (email);


--
-- TOC entry 3298 (class 2606 OID 54600)
-- Name: usuarios usuarios_email_key103; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key103 UNIQUE (email);


--
-- TOC entry 3300 (class 2606 OID 54602)
-- Name: usuarios usuarios_email_key104; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key104 UNIQUE (email);


--
-- TOC entry 3302 (class 2606 OID 54604)
-- Name: usuarios usuarios_email_key105; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key105 UNIQUE (email);


--
-- TOC entry 3304 (class 2606 OID 54606)
-- Name: usuarios usuarios_email_key106; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key106 UNIQUE (email);


--
-- TOC entry 3306 (class 2606 OID 54608)
-- Name: usuarios usuarios_email_key107; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key107 UNIQUE (email);


--
-- TOC entry 3308 (class 2606 OID 54610)
-- Name: usuarios usuarios_email_key108; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key108 UNIQUE (email);


--
-- TOC entry 3310 (class 2606 OID 54612)
-- Name: usuarios usuarios_email_key109; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key109 UNIQUE (email);


--
-- TOC entry 3312 (class 2606 OID 54614)
-- Name: usuarios usuarios_email_key11; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key11 UNIQUE (email);


--
-- TOC entry 3314 (class 2606 OID 54616)
-- Name: usuarios usuarios_email_key110; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key110 UNIQUE (email);


--
-- TOC entry 3316 (class 2606 OID 54618)
-- Name: usuarios usuarios_email_key111; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key111 UNIQUE (email);


--
-- TOC entry 3318 (class 2606 OID 54620)
-- Name: usuarios usuarios_email_key112; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key112 UNIQUE (email);


--
-- TOC entry 3320 (class 2606 OID 54622)
-- Name: usuarios usuarios_email_key113; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key113 UNIQUE (email);


--
-- TOC entry 3322 (class 2606 OID 54624)
-- Name: usuarios usuarios_email_key114; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key114 UNIQUE (email);


--
-- TOC entry 3324 (class 2606 OID 54626)
-- Name: usuarios usuarios_email_key115; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key115 UNIQUE (email);


--
-- TOC entry 3326 (class 2606 OID 54628)
-- Name: usuarios usuarios_email_key116; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key116 UNIQUE (email);


--
-- TOC entry 3328 (class 2606 OID 54630)
-- Name: usuarios usuarios_email_key117; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key117 UNIQUE (email);


--
-- TOC entry 3330 (class 2606 OID 54632)
-- Name: usuarios usuarios_email_key118; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key118 UNIQUE (email);


--
-- TOC entry 3332 (class 2606 OID 54634)
-- Name: usuarios usuarios_email_key119; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key119 UNIQUE (email);


--
-- TOC entry 3334 (class 2606 OID 54636)
-- Name: usuarios usuarios_email_key12; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key12 UNIQUE (email);


--
-- TOC entry 3336 (class 2606 OID 54638)
-- Name: usuarios usuarios_email_key120; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key120 UNIQUE (email);


--
-- TOC entry 3338 (class 2606 OID 54640)
-- Name: usuarios usuarios_email_key121; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key121 UNIQUE (email);


--
-- TOC entry 3340 (class 2606 OID 54642)
-- Name: usuarios usuarios_email_key122; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key122 UNIQUE (email);


--
-- TOC entry 3342 (class 2606 OID 54644)
-- Name: usuarios usuarios_email_key123; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key123 UNIQUE (email);


--
-- TOC entry 3344 (class 2606 OID 54646)
-- Name: usuarios usuarios_email_key124; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key124 UNIQUE (email);


--
-- TOC entry 3346 (class 2606 OID 54648)
-- Name: usuarios usuarios_email_key125; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key125 UNIQUE (email);


--
-- TOC entry 3348 (class 2606 OID 54650)
-- Name: usuarios usuarios_email_key126; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key126 UNIQUE (email);


--
-- TOC entry 3350 (class 2606 OID 54652)
-- Name: usuarios usuarios_email_key127; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key127 UNIQUE (email);


--
-- TOC entry 3352 (class 2606 OID 54654)
-- Name: usuarios usuarios_email_key128; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key128 UNIQUE (email);


--
-- TOC entry 3354 (class 2606 OID 54656)
-- Name: usuarios usuarios_email_key129; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key129 UNIQUE (email);


--
-- TOC entry 3356 (class 2606 OID 54658)
-- Name: usuarios usuarios_email_key13; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key13 UNIQUE (email);


--
-- TOC entry 3358 (class 2606 OID 54660)
-- Name: usuarios usuarios_email_key130; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key130 UNIQUE (email);


--
-- TOC entry 3360 (class 2606 OID 54662)
-- Name: usuarios usuarios_email_key131; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key131 UNIQUE (email);


--
-- TOC entry 3362 (class 2606 OID 54214)
-- Name: usuarios usuarios_email_key132; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key132 UNIQUE (email);


--
-- TOC entry 3364 (class 2606 OID 54216)
-- Name: usuarios usuarios_email_key133; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key133 UNIQUE (email);


--
-- TOC entry 3366 (class 2606 OID 54218)
-- Name: usuarios usuarios_email_key134; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key134 UNIQUE (email);


--
-- TOC entry 3368 (class 2606 OID 54220)
-- Name: usuarios usuarios_email_key135; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key135 UNIQUE (email);


--
-- TOC entry 3370 (class 2606 OID 54222)
-- Name: usuarios usuarios_email_key136; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key136 UNIQUE (email);


--
-- TOC entry 3372 (class 2606 OID 54224)
-- Name: usuarios usuarios_email_key137; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key137 UNIQUE (email);


--
-- TOC entry 3374 (class 2606 OID 54226)
-- Name: usuarios usuarios_email_key138; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key138 UNIQUE (email);


--
-- TOC entry 3376 (class 2606 OID 54228)
-- Name: usuarios usuarios_email_key139; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key139 UNIQUE (email);


--
-- TOC entry 3378 (class 2606 OID 54230)
-- Name: usuarios usuarios_email_key14; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key14 UNIQUE (email);


--
-- TOC entry 3380 (class 2606 OID 54232)
-- Name: usuarios usuarios_email_key140; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key140 UNIQUE (email);


--
-- TOC entry 3382 (class 2606 OID 54234)
-- Name: usuarios usuarios_email_key141; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key141 UNIQUE (email);


--
-- TOC entry 3384 (class 2606 OID 54236)
-- Name: usuarios usuarios_email_key142; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key142 UNIQUE (email);


--
-- TOC entry 3386 (class 2606 OID 54238)
-- Name: usuarios usuarios_email_key143; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key143 UNIQUE (email);


--
-- TOC entry 3388 (class 2606 OID 54240)
-- Name: usuarios usuarios_email_key144; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key144 UNIQUE (email);


--
-- TOC entry 3390 (class 2606 OID 54242)
-- Name: usuarios usuarios_email_key145; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key145 UNIQUE (email);


--
-- TOC entry 3392 (class 2606 OID 54244)
-- Name: usuarios usuarios_email_key146; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key146 UNIQUE (email);


--
-- TOC entry 3394 (class 2606 OID 54246)
-- Name: usuarios usuarios_email_key147; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key147 UNIQUE (email);


--
-- TOC entry 3396 (class 2606 OID 54248)
-- Name: usuarios usuarios_email_key148; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key148 UNIQUE (email);


--
-- TOC entry 3398 (class 2606 OID 54250)
-- Name: usuarios usuarios_email_key149; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key149 UNIQUE (email);


--
-- TOC entry 3400 (class 2606 OID 54252)
-- Name: usuarios usuarios_email_key15; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key15 UNIQUE (email);


--
-- TOC entry 3402 (class 2606 OID 54254)
-- Name: usuarios usuarios_email_key150; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key150 UNIQUE (email);


--
-- TOC entry 3404 (class 2606 OID 54256)
-- Name: usuarios usuarios_email_key151; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key151 UNIQUE (email);


--
-- TOC entry 3406 (class 2606 OID 54258)
-- Name: usuarios usuarios_email_key152; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key152 UNIQUE (email);


--
-- TOC entry 3408 (class 2606 OID 54260)
-- Name: usuarios usuarios_email_key153; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key153 UNIQUE (email);


--
-- TOC entry 3410 (class 2606 OID 54262)
-- Name: usuarios usuarios_email_key154; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key154 UNIQUE (email);


--
-- TOC entry 3412 (class 2606 OID 54264)
-- Name: usuarios usuarios_email_key155; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key155 UNIQUE (email);


--
-- TOC entry 3414 (class 2606 OID 54266)
-- Name: usuarios usuarios_email_key156; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key156 UNIQUE (email);


--
-- TOC entry 3416 (class 2606 OID 54268)
-- Name: usuarios usuarios_email_key157; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key157 UNIQUE (email);


--
-- TOC entry 3418 (class 2606 OID 54270)
-- Name: usuarios usuarios_email_key158; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key158 UNIQUE (email);


--
-- TOC entry 3420 (class 2606 OID 54272)
-- Name: usuarios usuarios_email_key159; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key159 UNIQUE (email);


--
-- TOC entry 3422 (class 2606 OID 54274)
-- Name: usuarios usuarios_email_key16; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key16 UNIQUE (email);


--
-- TOC entry 3424 (class 2606 OID 54276)
-- Name: usuarios usuarios_email_key160; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key160 UNIQUE (email);


--
-- TOC entry 3426 (class 2606 OID 54278)
-- Name: usuarios usuarios_email_key161; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key161 UNIQUE (email);


--
-- TOC entry 3428 (class 2606 OID 54280)
-- Name: usuarios usuarios_email_key162; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key162 UNIQUE (email);


--
-- TOC entry 3430 (class 2606 OID 54282)
-- Name: usuarios usuarios_email_key163; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key163 UNIQUE (email);


--
-- TOC entry 3432 (class 2606 OID 54284)
-- Name: usuarios usuarios_email_key164; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key164 UNIQUE (email);


--
-- TOC entry 3434 (class 2606 OID 54286)
-- Name: usuarios usuarios_email_key165; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key165 UNIQUE (email);


--
-- TOC entry 3436 (class 2606 OID 54288)
-- Name: usuarios usuarios_email_key166; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key166 UNIQUE (email);


--
-- TOC entry 3438 (class 2606 OID 54290)
-- Name: usuarios usuarios_email_key167; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key167 UNIQUE (email);


--
-- TOC entry 3440 (class 2606 OID 54292)
-- Name: usuarios usuarios_email_key168; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key168 UNIQUE (email);


--
-- TOC entry 3442 (class 2606 OID 54294)
-- Name: usuarios usuarios_email_key169; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key169 UNIQUE (email);


--
-- TOC entry 3444 (class 2606 OID 54296)
-- Name: usuarios usuarios_email_key17; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key17 UNIQUE (email);


--
-- TOC entry 3446 (class 2606 OID 54298)
-- Name: usuarios usuarios_email_key170; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key170 UNIQUE (email);


--
-- TOC entry 3448 (class 2606 OID 54300)
-- Name: usuarios usuarios_email_key171; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key171 UNIQUE (email);


--
-- TOC entry 3450 (class 2606 OID 54302)
-- Name: usuarios usuarios_email_key172; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key172 UNIQUE (email);


--
-- TOC entry 3452 (class 2606 OID 54304)
-- Name: usuarios usuarios_email_key173; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key173 UNIQUE (email);


--
-- TOC entry 3454 (class 2606 OID 54306)
-- Name: usuarios usuarios_email_key174; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key174 UNIQUE (email);


--
-- TOC entry 3456 (class 2606 OID 54308)
-- Name: usuarios usuarios_email_key175; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key175 UNIQUE (email);


--
-- TOC entry 3458 (class 2606 OID 54310)
-- Name: usuarios usuarios_email_key176; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key176 UNIQUE (email);


--
-- TOC entry 3460 (class 2606 OID 54314)
-- Name: usuarios usuarios_email_key177; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key177 UNIQUE (email);


--
-- TOC entry 3462 (class 2606 OID 54316)
-- Name: usuarios usuarios_email_key178; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key178 UNIQUE (email);


--
-- TOC entry 3464 (class 2606 OID 54318)
-- Name: usuarios usuarios_email_key179; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key179 UNIQUE (email);


--
-- TOC entry 3466 (class 2606 OID 54322)
-- Name: usuarios usuarios_email_key18; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key18 UNIQUE (email);


--
-- TOC entry 3468 (class 2606 OID 54324)
-- Name: usuarios usuarios_email_key180; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key180 UNIQUE (email);


--
-- TOC entry 3470 (class 2606 OID 54326)
-- Name: usuarios usuarios_email_key181; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key181 UNIQUE (email);


--
-- TOC entry 3472 (class 2606 OID 54328)
-- Name: usuarios usuarios_email_key182; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key182 UNIQUE (email);


--
-- TOC entry 3474 (class 2606 OID 54330)
-- Name: usuarios usuarios_email_key183; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key183 UNIQUE (email);


--
-- TOC entry 3476 (class 2606 OID 54332)
-- Name: usuarios usuarios_email_key184; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key184 UNIQUE (email);


--
-- TOC entry 3478 (class 2606 OID 54334)
-- Name: usuarios usuarios_email_key185; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key185 UNIQUE (email);


--
-- TOC entry 3480 (class 2606 OID 54336)
-- Name: usuarios usuarios_email_key186; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key186 UNIQUE (email);


--
-- TOC entry 3482 (class 2606 OID 54338)
-- Name: usuarios usuarios_email_key187; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key187 UNIQUE (email);


--
-- TOC entry 3484 (class 2606 OID 54340)
-- Name: usuarios usuarios_email_key188; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key188 UNIQUE (email);


--
-- TOC entry 3486 (class 2606 OID 54342)
-- Name: usuarios usuarios_email_key189; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key189 UNIQUE (email);


--
-- TOC entry 3488 (class 2606 OID 54344)
-- Name: usuarios usuarios_email_key19; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key19 UNIQUE (email);


--
-- TOC entry 3490 (class 2606 OID 54346)
-- Name: usuarios usuarios_email_key190; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key190 UNIQUE (email);


--
-- TOC entry 3492 (class 2606 OID 54348)
-- Name: usuarios usuarios_email_key191; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key191 UNIQUE (email);


--
-- TOC entry 3494 (class 2606 OID 54350)
-- Name: usuarios usuarios_email_key192; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key192 UNIQUE (email);


--
-- TOC entry 3496 (class 2606 OID 54352)
-- Name: usuarios usuarios_email_key193; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key193 UNIQUE (email);


--
-- TOC entry 3498 (class 2606 OID 54354)
-- Name: usuarios usuarios_email_key194; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key194 UNIQUE (email);


--
-- TOC entry 3500 (class 2606 OID 54356)
-- Name: usuarios usuarios_email_key195; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key195 UNIQUE (email);


--
-- TOC entry 3502 (class 2606 OID 54358)
-- Name: usuarios usuarios_email_key196; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key196 UNIQUE (email);


--
-- TOC entry 3504 (class 2606 OID 54360)
-- Name: usuarios usuarios_email_key197; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key197 UNIQUE (email);


--
-- TOC entry 3506 (class 2606 OID 54362)
-- Name: usuarios usuarios_email_key198; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key198 UNIQUE (email);


--
-- TOC entry 3508 (class 2606 OID 54556)
-- Name: usuarios usuarios_email_key199; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key199 UNIQUE (email);


--
-- TOC entry 3510 (class 2606 OID 54364)
-- Name: usuarios usuarios_email_key2; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key2 UNIQUE (email);


--
-- TOC entry 3512 (class 2606 OID 54366)
-- Name: usuarios usuarios_email_key20; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key20 UNIQUE (email);


--
-- TOC entry 3514 (class 2606 OID 54586)
-- Name: usuarios usuarios_email_key200; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key200 UNIQUE (email);


--
-- TOC entry 3516 (class 2606 OID 54558)
-- Name: usuarios usuarios_email_key201; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key201 UNIQUE (email);


--
-- TOC entry 3518 (class 2606 OID 54584)
-- Name: usuarios usuarios_email_key202; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key202 UNIQUE (email);


--
-- TOC entry 3520 (class 2606 OID 54560)
-- Name: usuarios usuarios_email_key203; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key203 UNIQUE (email);


--
-- TOC entry 3522 (class 2606 OID 54582)
-- Name: usuarios usuarios_email_key204; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key204 UNIQUE (email);


--
-- TOC entry 3524 (class 2606 OID 54562)
-- Name: usuarios usuarios_email_key205; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key205 UNIQUE (email);


--
-- TOC entry 3526 (class 2606 OID 54580)
-- Name: usuarios usuarios_email_key206; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key206 UNIQUE (email);


--
-- TOC entry 3528 (class 2606 OID 54564)
-- Name: usuarios usuarios_email_key207; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key207 UNIQUE (email);


--
-- TOC entry 3530 (class 2606 OID 54578)
-- Name: usuarios usuarios_email_key208; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key208 UNIQUE (email);


--
-- TOC entry 3532 (class 2606 OID 54566)
-- Name: usuarios usuarios_email_key209; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key209 UNIQUE (email);


--
-- TOC entry 3534 (class 2606 OID 54368)
-- Name: usuarios usuarios_email_key21; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key21 UNIQUE (email);


--
-- TOC entry 3536 (class 2606 OID 54576)
-- Name: usuarios usuarios_email_key210; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key210 UNIQUE (email);


--
-- TOC entry 3538 (class 2606 OID 54568)
-- Name: usuarios usuarios_email_key211; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key211 UNIQUE (email);


--
-- TOC entry 3540 (class 2606 OID 54574)
-- Name: usuarios usuarios_email_key212; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key212 UNIQUE (email);


--
-- TOC entry 3542 (class 2606 OID 54312)
-- Name: usuarios usuarios_email_key213; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key213 UNIQUE (email);


--
-- TOC entry 3544 (class 2606 OID 54572)
-- Name: usuarios usuarios_email_key214; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key214 UNIQUE (email);


--
-- TOC entry 3546 (class 2606 OID 54570)
-- Name: usuarios usuarios_email_key215; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key215 UNIQUE (email);


--
-- TOC entry 3548 (class 2606 OID 54540)
-- Name: usuarios usuarios_email_key216; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key216 UNIQUE (email);


--
-- TOC entry 3550 (class 2606 OID 54508)
-- Name: usuarios usuarios_email_key217; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key217 UNIQUE (email);


--
-- TOC entry 3552 (class 2606 OID 54520)
-- Name: usuarios usuarios_email_key218; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key218 UNIQUE (email);


--
-- TOC entry 3554 (class 2606 OID 54510)
-- Name: usuarios usuarios_email_key219; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key219 UNIQUE (email);


--
-- TOC entry 3556 (class 2606 OID 54370)
-- Name: usuarios usuarios_email_key22; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key22 UNIQUE (email);


--
-- TOC entry 3558 (class 2606 OID 54518)
-- Name: usuarios usuarios_email_key220; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key220 UNIQUE (email);


--
-- TOC entry 3560 (class 2606 OID 54512)
-- Name: usuarios usuarios_email_key221; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key221 UNIQUE (email);


--
-- TOC entry 3562 (class 2606 OID 54516)
-- Name: usuarios usuarios_email_key222; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key222 UNIQUE (email);


--
-- TOC entry 3564 (class 2606 OID 54514)
-- Name: usuarios usuarios_email_key223; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key223 UNIQUE (email);


--
-- TOC entry 3566 (class 2606 OID 54320)
-- Name: usuarios usuarios_email_key224; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key224 UNIQUE (email);


--
-- TOC entry 3568 (class 2606 OID 54664)
-- Name: usuarios usuarios_email_key225; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key225 UNIQUE (email);


--
-- TOC entry 3570 (class 2606 OID 54212)
-- Name: usuarios usuarios_email_key226; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key226 UNIQUE (email);


--
-- TOC entry 3572 (class 2606 OID 54372)
-- Name: usuarios usuarios_email_key23; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key23 UNIQUE (email);


--
-- TOC entry 3574 (class 2606 OID 54374)
-- Name: usuarios usuarios_email_key24; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key24 UNIQUE (email);


--
-- TOC entry 3576 (class 2606 OID 54376)
-- Name: usuarios usuarios_email_key25; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key25 UNIQUE (email);


--
-- TOC entry 3578 (class 2606 OID 54378)
-- Name: usuarios usuarios_email_key26; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key26 UNIQUE (email);


--
-- TOC entry 3580 (class 2606 OID 54380)
-- Name: usuarios usuarios_email_key27; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key27 UNIQUE (email);


--
-- TOC entry 3582 (class 2606 OID 54382)
-- Name: usuarios usuarios_email_key28; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key28 UNIQUE (email);


--
-- TOC entry 3584 (class 2606 OID 54384)
-- Name: usuarios usuarios_email_key29; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key29 UNIQUE (email);


--
-- TOC entry 3586 (class 2606 OID 54386)
-- Name: usuarios usuarios_email_key3; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key3 UNIQUE (email);


--
-- TOC entry 3588 (class 2606 OID 54388)
-- Name: usuarios usuarios_email_key30; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key30 UNIQUE (email);


--
-- TOC entry 3590 (class 2606 OID 54390)
-- Name: usuarios usuarios_email_key31; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key31 UNIQUE (email);


--
-- TOC entry 3592 (class 2606 OID 54392)
-- Name: usuarios usuarios_email_key32; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key32 UNIQUE (email);


--
-- TOC entry 3594 (class 2606 OID 54394)
-- Name: usuarios usuarios_email_key33; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key33 UNIQUE (email);


--
-- TOC entry 3596 (class 2606 OID 54396)
-- Name: usuarios usuarios_email_key34; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key34 UNIQUE (email);


--
-- TOC entry 3598 (class 2606 OID 54398)
-- Name: usuarios usuarios_email_key35; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key35 UNIQUE (email);


--
-- TOC entry 3600 (class 2606 OID 54400)
-- Name: usuarios usuarios_email_key36; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key36 UNIQUE (email);


--
-- TOC entry 3602 (class 2606 OID 54402)
-- Name: usuarios usuarios_email_key37; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key37 UNIQUE (email);


--
-- TOC entry 3604 (class 2606 OID 54404)
-- Name: usuarios usuarios_email_key38; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key38 UNIQUE (email);


--
-- TOC entry 3606 (class 2606 OID 54406)
-- Name: usuarios usuarios_email_key39; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key39 UNIQUE (email);


--
-- TOC entry 3608 (class 2606 OID 54408)
-- Name: usuarios usuarios_email_key4; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key4 UNIQUE (email);


--
-- TOC entry 3610 (class 2606 OID 54410)
-- Name: usuarios usuarios_email_key40; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key40 UNIQUE (email);


--
-- TOC entry 3612 (class 2606 OID 54412)
-- Name: usuarios usuarios_email_key41; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key41 UNIQUE (email);


--
-- TOC entry 3614 (class 2606 OID 54414)
-- Name: usuarios usuarios_email_key42; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key42 UNIQUE (email);


--
-- TOC entry 3616 (class 2606 OID 54416)
-- Name: usuarios usuarios_email_key43; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key43 UNIQUE (email);


--
-- TOC entry 3618 (class 2606 OID 54418)
-- Name: usuarios usuarios_email_key44; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key44 UNIQUE (email);


--
-- TOC entry 3620 (class 2606 OID 54420)
-- Name: usuarios usuarios_email_key45; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key45 UNIQUE (email);


--
-- TOC entry 3622 (class 2606 OID 54422)
-- Name: usuarios usuarios_email_key46; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key46 UNIQUE (email);


--
-- TOC entry 3624 (class 2606 OID 54424)
-- Name: usuarios usuarios_email_key47; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key47 UNIQUE (email);


--
-- TOC entry 3626 (class 2606 OID 54426)
-- Name: usuarios usuarios_email_key48; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key48 UNIQUE (email);


--
-- TOC entry 3628 (class 2606 OID 54428)
-- Name: usuarios usuarios_email_key49; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key49 UNIQUE (email);


--
-- TOC entry 3630 (class 2606 OID 54430)
-- Name: usuarios usuarios_email_key5; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key5 UNIQUE (email);


--
-- TOC entry 3632 (class 2606 OID 54432)
-- Name: usuarios usuarios_email_key50; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key50 UNIQUE (email);


--
-- TOC entry 3634 (class 2606 OID 54434)
-- Name: usuarios usuarios_email_key51; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key51 UNIQUE (email);


--
-- TOC entry 3636 (class 2606 OID 54436)
-- Name: usuarios usuarios_email_key52; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key52 UNIQUE (email);


--
-- TOC entry 3638 (class 2606 OID 54438)
-- Name: usuarios usuarios_email_key53; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key53 UNIQUE (email);


--
-- TOC entry 3640 (class 2606 OID 54440)
-- Name: usuarios usuarios_email_key54; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key54 UNIQUE (email);


--
-- TOC entry 3642 (class 2606 OID 54442)
-- Name: usuarios usuarios_email_key55; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key55 UNIQUE (email);


--
-- TOC entry 3644 (class 2606 OID 54444)
-- Name: usuarios usuarios_email_key56; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key56 UNIQUE (email);


--
-- TOC entry 3646 (class 2606 OID 54446)
-- Name: usuarios usuarios_email_key57; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key57 UNIQUE (email);


--
-- TOC entry 3648 (class 2606 OID 54448)
-- Name: usuarios usuarios_email_key58; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key58 UNIQUE (email);


--
-- TOC entry 3650 (class 2606 OID 54450)
-- Name: usuarios usuarios_email_key59; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key59 UNIQUE (email);


--
-- TOC entry 3652 (class 2606 OID 54452)
-- Name: usuarios usuarios_email_key6; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key6 UNIQUE (email);


--
-- TOC entry 3654 (class 2606 OID 54454)
-- Name: usuarios usuarios_email_key60; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key60 UNIQUE (email);


--
-- TOC entry 3656 (class 2606 OID 54456)
-- Name: usuarios usuarios_email_key61; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key61 UNIQUE (email);


--
-- TOC entry 3658 (class 2606 OID 54458)
-- Name: usuarios usuarios_email_key62; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key62 UNIQUE (email);


--
-- TOC entry 3660 (class 2606 OID 54460)
-- Name: usuarios usuarios_email_key63; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key63 UNIQUE (email);


--
-- TOC entry 3662 (class 2606 OID 54462)
-- Name: usuarios usuarios_email_key64; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key64 UNIQUE (email);


--
-- TOC entry 3664 (class 2606 OID 54464)
-- Name: usuarios usuarios_email_key65; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key65 UNIQUE (email);


--
-- TOC entry 3666 (class 2606 OID 54466)
-- Name: usuarios usuarios_email_key66; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key66 UNIQUE (email);


--
-- TOC entry 3668 (class 2606 OID 54468)
-- Name: usuarios usuarios_email_key67; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key67 UNIQUE (email);


--
-- TOC entry 3670 (class 2606 OID 54470)
-- Name: usuarios usuarios_email_key68; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key68 UNIQUE (email);


--
-- TOC entry 3672 (class 2606 OID 54472)
-- Name: usuarios usuarios_email_key69; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key69 UNIQUE (email);


--
-- TOC entry 3674 (class 2606 OID 54474)
-- Name: usuarios usuarios_email_key7; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key7 UNIQUE (email);


--
-- TOC entry 3676 (class 2606 OID 54476)
-- Name: usuarios usuarios_email_key70; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key70 UNIQUE (email);


--
-- TOC entry 3678 (class 2606 OID 54478)
-- Name: usuarios usuarios_email_key71; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key71 UNIQUE (email);


--
-- TOC entry 3680 (class 2606 OID 54480)
-- Name: usuarios usuarios_email_key72; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key72 UNIQUE (email);


--
-- TOC entry 3682 (class 2606 OID 54482)
-- Name: usuarios usuarios_email_key73; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key73 UNIQUE (email);


--
-- TOC entry 3684 (class 2606 OID 54484)
-- Name: usuarios usuarios_email_key74; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key74 UNIQUE (email);


--
-- TOC entry 3686 (class 2606 OID 54486)
-- Name: usuarios usuarios_email_key75; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key75 UNIQUE (email);


--
-- TOC entry 3688 (class 2606 OID 54488)
-- Name: usuarios usuarios_email_key76; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key76 UNIQUE (email);


--
-- TOC entry 3690 (class 2606 OID 54490)
-- Name: usuarios usuarios_email_key77; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key77 UNIQUE (email);


--
-- TOC entry 3692 (class 2606 OID 54492)
-- Name: usuarios usuarios_email_key78; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key78 UNIQUE (email);


--
-- TOC entry 3694 (class 2606 OID 54494)
-- Name: usuarios usuarios_email_key79; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key79 UNIQUE (email);


--
-- TOC entry 3696 (class 2606 OID 54496)
-- Name: usuarios usuarios_email_key8; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key8 UNIQUE (email);


--
-- TOC entry 3698 (class 2606 OID 54498)
-- Name: usuarios usuarios_email_key80; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key80 UNIQUE (email);


--
-- TOC entry 3700 (class 2606 OID 54500)
-- Name: usuarios usuarios_email_key81; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key81 UNIQUE (email);


--
-- TOC entry 3702 (class 2606 OID 54502)
-- Name: usuarios usuarios_email_key82; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key82 UNIQUE (email);


--
-- TOC entry 3704 (class 2606 OID 54504)
-- Name: usuarios usuarios_email_key83; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key83 UNIQUE (email);


--
-- TOC entry 3706 (class 2606 OID 54506)
-- Name: usuarios usuarios_email_key84; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key84 UNIQUE (email);


--
-- TOC entry 3708 (class 2606 OID 54522)
-- Name: usuarios usuarios_email_key85; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key85 UNIQUE (email);


--
-- TOC entry 3710 (class 2606 OID 54524)
-- Name: usuarios usuarios_email_key86; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key86 UNIQUE (email);


--
-- TOC entry 3712 (class 2606 OID 54526)
-- Name: usuarios usuarios_email_key87; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key87 UNIQUE (email);


--
-- TOC entry 3714 (class 2606 OID 54528)
-- Name: usuarios usuarios_email_key88; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key88 UNIQUE (email);


--
-- TOC entry 3716 (class 2606 OID 54530)
-- Name: usuarios usuarios_email_key89; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key89 UNIQUE (email);


--
-- TOC entry 3718 (class 2606 OID 54532)
-- Name: usuarios usuarios_email_key9; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key9 UNIQUE (email);


--
-- TOC entry 3720 (class 2606 OID 54534)
-- Name: usuarios usuarios_email_key90; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key90 UNIQUE (email);


--
-- TOC entry 3722 (class 2606 OID 54536)
-- Name: usuarios usuarios_email_key91; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key91 UNIQUE (email);


--
-- TOC entry 3724 (class 2606 OID 54538)
-- Name: usuarios usuarios_email_key92; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key92 UNIQUE (email);


--
-- TOC entry 3726 (class 2606 OID 54542)
-- Name: usuarios usuarios_email_key93; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key93 UNIQUE (email);


--
-- TOC entry 3728 (class 2606 OID 54544)
-- Name: usuarios usuarios_email_key94; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key94 UNIQUE (email);


--
-- TOC entry 3730 (class 2606 OID 54546)
-- Name: usuarios usuarios_email_key95; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key95 UNIQUE (email);


--
-- TOC entry 3732 (class 2606 OID 54548)
-- Name: usuarios usuarios_email_key96; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key96 UNIQUE (email);


--
-- TOC entry 3734 (class 2606 OID 54550)
-- Name: usuarios usuarios_email_key97; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key97 UNIQUE (email);


--
-- TOC entry 3736 (class 2606 OID 54552)
-- Name: usuarios usuarios_email_key98; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key98 UNIQUE (email);


--
-- TOC entry 3738 (class 2606 OID 54554)
-- Name: usuarios usuarios_email_key99; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key99 UNIQUE (email);


--
-- TOC entry 3740 (class 2606 OID 16414)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 3742 (class 2606 OID 53795)
-- Name: usuarios usuarios_usuario_key; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key UNIQUE (usuario);


--
-- TOC entry 3744 (class 2606 OID 53799)
-- Name: usuarios usuarios_usuario_key1; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key1 UNIQUE (usuario);


--
-- TOC entry 3746 (class 2606 OID 53801)
-- Name: usuarios usuarios_usuario_key10; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key10 UNIQUE (usuario);


--
-- TOC entry 3748 (class 2606 OID 53803)
-- Name: usuarios usuarios_usuario_key100; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key100 UNIQUE (usuario);


--
-- TOC entry 3750 (class 2606 OID 53805)
-- Name: usuarios usuarios_usuario_key101; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key101 UNIQUE (usuario);


--
-- TOC entry 3752 (class 2606 OID 53807)
-- Name: usuarios usuarios_usuario_key102; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key102 UNIQUE (usuario);


--
-- TOC entry 3754 (class 2606 OID 53809)
-- Name: usuarios usuarios_usuario_key103; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key103 UNIQUE (usuario);


--
-- TOC entry 3756 (class 2606 OID 53811)
-- Name: usuarios usuarios_usuario_key104; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key104 UNIQUE (usuario);


--
-- TOC entry 3758 (class 2606 OID 53813)
-- Name: usuarios usuarios_usuario_key105; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key105 UNIQUE (usuario);


--
-- TOC entry 3760 (class 2606 OID 53815)
-- Name: usuarios usuarios_usuario_key106; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key106 UNIQUE (usuario);


--
-- TOC entry 3762 (class 2606 OID 53817)
-- Name: usuarios usuarios_usuario_key107; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key107 UNIQUE (usuario);


--
-- TOC entry 3764 (class 2606 OID 53819)
-- Name: usuarios usuarios_usuario_key108; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key108 UNIQUE (usuario);


--
-- TOC entry 3766 (class 2606 OID 53821)
-- Name: usuarios usuarios_usuario_key109; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key109 UNIQUE (usuario);


--
-- TOC entry 3768 (class 2606 OID 53823)
-- Name: usuarios usuarios_usuario_key11; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key11 UNIQUE (usuario);


--
-- TOC entry 3770 (class 2606 OID 53825)
-- Name: usuarios usuarios_usuario_key110; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key110 UNIQUE (usuario);


--
-- TOC entry 3772 (class 2606 OID 53827)
-- Name: usuarios usuarios_usuario_key111; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key111 UNIQUE (usuario);


--
-- TOC entry 3774 (class 2606 OID 53829)
-- Name: usuarios usuarios_usuario_key112; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key112 UNIQUE (usuario);


--
-- TOC entry 3776 (class 2606 OID 53831)
-- Name: usuarios usuarios_usuario_key113; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key113 UNIQUE (usuario);


--
-- TOC entry 3778 (class 2606 OID 53833)
-- Name: usuarios usuarios_usuario_key114; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key114 UNIQUE (usuario);


--
-- TOC entry 3780 (class 2606 OID 53835)
-- Name: usuarios usuarios_usuario_key115; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key115 UNIQUE (usuario);


--
-- TOC entry 3782 (class 2606 OID 53837)
-- Name: usuarios usuarios_usuario_key116; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key116 UNIQUE (usuario);


--
-- TOC entry 3784 (class 2606 OID 53839)
-- Name: usuarios usuarios_usuario_key117; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key117 UNIQUE (usuario);


--
-- TOC entry 3786 (class 2606 OID 53841)
-- Name: usuarios usuarios_usuario_key118; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key118 UNIQUE (usuario);


--
-- TOC entry 3788 (class 2606 OID 53843)
-- Name: usuarios usuarios_usuario_key119; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key119 UNIQUE (usuario);


--
-- TOC entry 3790 (class 2606 OID 53845)
-- Name: usuarios usuarios_usuario_key12; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key12 UNIQUE (usuario);


--
-- TOC entry 3792 (class 2606 OID 53847)
-- Name: usuarios usuarios_usuario_key120; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key120 UNIQUE (usuario);


--
-- TOC entry 3794 (class 2606 OID 53849)
-- Name: usuarios usuarios_usuario_key121; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key121 UNIQUE (usuario);


--
-- TOC entry 3796 (class 2606 OID 53851)
-- Name: usuarios usuarios_usuario_key122; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key122 UNIQUE (usuario);


--
-- TOC entry 3798 (class 2606 OID 53853)
-- Name: usuarios usuarios_usuario_key123; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key123 UNIQUE (usuario);


--
-- TOC entry 3800 (class 2606 OID 53855)
-- Name: usuarios usuarios_usuario_key124; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key124 UNIQUE (usuario);


--
-- TOC entry 3802 (class 2606 OID 53857)
-- Name: usuarios usuarios_usuario_key125; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key125 UNIQUE (usuario);


--
-- TOC entry 3804 (class 2606 OID 53859)
-- Name: usuarios usuarios_usuario_key126; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key126 UNIQUE (usuario);


--
-- TOC entry 3806 (class 2606 OID 53861)
-- Name: usuarios usuarios_usuario_key127; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key127 UNIQUE (usuario);


--
-- TOC entry 3808 (class 2606 OID 53863)
-- Name: usuarios usuarios_usuario_key128; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key128 UNIQUE (usuario);


--
-- TOC entry 3810 (class 2606 OID 53865)
-- Name: usuarios usuarios_usuario_key129; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key129 UNIQUE (usuario);


--
-- TOC entry 3812 (class 2606 OID 53867)
-- Name: usuarios usuarios_usuario_key13; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key13 UNIQUE (usuario);


--
-- TOC entry 3814 (class 2606 OID 53869)
-- Name: usuarios usuarios_usuario_key130; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key130 UNIQUE (usuario);


--
-- TOC entry 3816 (class 2606 OID 53871)
-- Name: usuarios usuarios_usuario_key131; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key131 UNIQUE (usuario);


--
-- TOC entry 3818 (class 2606 OID 53873)
-- Name: usuarios usuarios_usuario_key132; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key132 UNIQUE (usuario);


--
-- TOC entry 3820 (class 2606 OID 53875)
-- Name: usuarios usuarios_usuario_key133; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key133 UNIQUE (usuario);


--
-- TOC entry 3822 (class 2606 OID 53877)
-- Name: usuarios usuarios_usuario_key134; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key134 UNIQUE (usuario);


--
-- TOC entry 3824 (class 2606 OID 53879)
-- Name: usuarios usuarios_usuario_key135; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key135 UNIQUE (usuario);


--
-- TOC entry 3826 (class 2606 OID 53881)
-- Name: usuarios usuarios_usuario_key136; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key136 UNIQUE (usuario);


--
-- TOC entry 3828 (class 2606 OID 53883)
-- Name: usuarios usuarios_usuario_key137; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key137 UNIQUE (usuario);


--
-- TOC entry 3830 (class 2606 OID 53885)
-- Name: usuarios usuarios_usuario_key138; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key138 UNIQUE (usuario);


--
-- TOC entry 3832 (class 2606 OID 53887)
-- Name: usuarios usuarios_usuario_key139; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key139 UNIQUE (usuario);


--
-- TOC entry 3834 (class 2606 OID 53889)
-- Name: usuarios usuarios_usuario_key14; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key14 UNIQUE (usuario);


--
-- TOC entry 3836 (class 2606 OID 53891)
-- Name: usuarios usuarios_usuario_key140; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key140 UNIQUE (usuario);


--
-- TOC entry 3838 (class 2606 OID 53893)
-- Name: usuarios usuarios_usuario_key141; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key141 UNIQUE (usuario);


--
-- TOC entry 3840 (class 2606 OID 53895)
-- Name: usuarios usuarios_usuario_key142; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key142 UNIQUE (usuario);


--
-- TOC entry 3842 (class 2606 OID 53897)
-- Name: usuarios usuarios_usuario_key143; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key143 UNIQUE (usuario);


--
-- TOC entry 3844 (class 2606 OID 53899)
-- Name: usuarios usuarios_usuario_key144; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key144 UNIQUE (usuario);


--
-- TOC entry 3846 (class 2606 OID 53901)
-- Name: usuarios usuarios_usuario_key145; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key145 UNIQUE (usuario);


--
-- TOC entry 3848 (class 2606 OID 53903)
-- Name: usuarios usuarios_usuario_key146; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key146 UNIQUE (usuario);


--
-- TOC entry 3850 (class 2606 OID 53905)
-- Name: usuarios usuarios_usuario_key147; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key147 UNIQUE (usuario);


--
-- TOC entry 3852 (class 2606 OID 53907)
-- Name: usuarios usuarios_usuario_key148; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key148 UNIQUE (usuario);


--
-- TOC entry 3854 (class 2606 OID 53909)
-- Name: usuarios usuarios_usuario_key149; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key149 UNIQUE (usuario);


--
-- TOC entry 3856 (class 2606 OID 53911)
-- Name: usuarios usuarios_usuario_key15; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key15 UNIQUE (usuario);


--
-- TOC entry 3858 (class 2606 OID 53913)
-- Name: usuarios usuarios_usuario_key150; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key150 UNIQUE (usuario);


--
-- TOC entry 3860 (class 2606 OID 53915)
-- Name: usuarios usuarios_usuario_key151; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key151 UNIQUE (usuario);


--
-- TOC entry 3862 (class 2606 OID 53917)
-- Name: usuarios usuarios_usuario_key152; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key152 UNIQUE (usuario);


--
-- TOC entry 3864 (class 2606 OID 53919)
-- Name: usuarios usuarios_usuario_key153; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key153 UNIQUE (usuario);


--
-- TOC entry 3866 (class 2606 OID 53921)
-- Name: usuarios usuarios_usuario_key154; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key154 UNIQUE (usuario);


--
-- TOC entry 3868 (class 2606 OID 53923)
-- Name: usuarios usuarios_usuario_key155; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key155 UNIQUE (usuario);


--
-- TOC entry 3870 (class 2606 OID 53925)
-- Name: usuarios usuarios_usuario_key156; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key156 UNIQUE (usuario);


--
-- TOC entry 3872 (class 2606 OID 53927)
-- Name: usuarios usuarios_usuario_key157; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key157 UNIQUE (usuario);


--
-- TOC entry 3874 (class 2606 OID 53931)
-- Name: usuarios usuarios_usuario_key158; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key158 UNIQUE (usuario);


--
-- TOC entry 3876 (class 2606 OID 53933)
-- Name: usuarios usuarios_usuario_key159; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key159 UNIQUE (usuario);


--
-- TOC entry 3878 (class 2606 OID 53935)
-- Name: usuarios usuarios_usuario_key16; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key16 UNIQUE (usuario);


--
-- TOC entry 3880 (class 2606 OID 53937)
-- Name: usuarios usuarios_usuario_key160; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key160 UNIQUE (usuario);


--
-- TOC entry 3882 (class 2606 OID 53939)
-- Name: usuarios usuarios_usuario_key161; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key161 UNIQUE (usuario);


--
-- TOC entry 3884 (class 2606 OID 53941)
-- Name: usuarios usuarios_usuario_key162; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key162 UNIQUE (usuario);


--
-- TOC entry 3886 (class 2606 OID 53943)
-- Name: usuarios usuarios_usuario_key163; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key163 UNIQUE (usuario);


--
-- TOC entry 3888 (class 2606 OID 53945)
-- Name: usuarios usuarios_usuario_key164; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key164 UNIQUE (usuario);


--
-- TOC entry 3890 (class 2606 OID 53947)
-- Name: usuarios usuarios_usuario_key165; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key165 UNIQUE (usuario);


--
-- TOC entry 3892 (class 2606 OID 53949)
-- Name: usuarios usuarios_usuario_key166; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key166 UNIQUE (usuario);


--
-- TOC entry 3894 (class 2606 OID 53951)
-- Name: usuarios usuarios_usuario_key167; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key167 UNIQUE (usuario);


--
-- TOC entry 3896 (class 2606 OID 53953)
-- Name: usuarios usuarios_usuario_key168; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key168 UNIQUE (usuario);


--
-- TOC entry 3898 (class 2606 OID 53955)
-- Name: usuarios usuarios_usuario_key169; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key169 UNIQUE (usuario);


--
-- TOC entry 3900 (class 2606 OID 53957)
-- Name: usuarios usuarios_usuario_key17; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key17 UNIQUE (usuario);


--
-- TOC entry 3902 (class 2606 OID 53959)
-- Name: usuarios usuarios_usuario_key170; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key170 UNIQUE (usuario);


--
-- TOC entry 3904 (class 2606 OID 53961)
-- Name: usuarios usuarios_usuario_key171; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key171 UNIQUE (usuario);


--
-- TOC entry 3906 (class 2606 OID 53963)
-- Name: usuarios usuarios_usuario_key172; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key172 UNIQUE (usuario);


--
-- TOC entry 3908 (class 2606 OID 53965)
-- Name: usuarios usuarios_usuario_key173; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key173 UNIQUE (usuario);


--
-- TOC entry 3910 (class 2606 OID 53967)
-- Name: usuarios usuarios_usuario_key174; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key174 UNIQUE (usuario);


--
-- TOC entry 3912 (class 2606 OID 53969)
-- Name: usuarios usuarios_usuario_key175; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key175 UNIQUE (usuario);


--
-- TOC entry 3914 (class 2606 OID 53971)
-- Name: usuarios usuarios_usuario_key176; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key176 UNIQUE (usuario);


--
-- TOC entry 3916 (class 2606 OID 53973)
-- Name: usuarios usuarios_usuario_key177; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key177 UNIQUE (usuario);


--
-- TOC entry 3918 (class 2606 OID 53975)
-- Name: usuarios usuarios_usuario_key178; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key178 UNIQUE (usuario);


--
-- TOC entry 3920 (class 2606 OID 53977)
-- Name: usuarios usuarios_usuario_key179; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key179 UNIQUE (usuario);


--
-- TOC entry 3922 (class 2606 OID 53979)
-- Name: usuarios usuarios_usuario_key18; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key18 UNIQUE (usuario);


--
-- TOC entry 3924 (class 2606 OID 53981)
-- Name: usuarios usuarios_usuario_key180; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key180 UNIQUE (usuario);


--
-- TOC entry 3926 (class 2606 OID 53983)
-- Name: usuarios usuarios_usuario_key181; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key181 UNIQUE (usuario);


--
-- TOC entry 3928 (class 2606 OID 53985)
-- Name: usuarios usuarios_usuario_key182; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key182 UNIQUE (usuario);


--
-- TOC entry 3930 (class 2606 OID 53987)
-- Name: usuarios usuarios_usuario_key183; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key183 UNIQUE (usuario);


--
-- TOC entry 3932 (class 2606 OID 53989)
-- Name: usuarios usuarios_usuario_key184; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key184 UNIQUE (usuario);


--
-- TOC entry 3934 (class 2606 OID 53991)
-- Name: usuarios usuarios_usuario_key185; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key185 UNIQUE (usuario);


--
-- TOC entry 3936 (class 2606 OID 53993)
-- Name: usuarios usuarios_usuario_key186; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key186 UNIQUE (usuario);


--
-- TOC entry 3938 (class 2606 OID 53995)
-- Name: usuarios usuarios_usuario_key187; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key187 UNIQUE (usuario);


--
-- TOC entry 3940 (class 2606 OID 53997)
-- Name: usuarios usuarios_usuario_key188; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key188 UNIQUE (usuario);


--
-- TOC entry 3942 (class 2606 OID 53999)
-- Name: usuarios usuarios_usuario_key189; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key189 UNIQUE (usuario);


--
-- TOC entry 3944 (class 2606 OID 54001)
-- Name: usuarios usuarios_usuario_key19; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key19 UNIQUE (usuario);


--
-- TOC entry 3946 (class 2606 OID 54003)
-- Name: usuarios usuarios_usuario_key190; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key190 UNIQUE (usuario);


--
-- TOC entry 3948 (class 2606 OID 54005)
-- Name: usuarios usuarios_usuario_key191; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key191 UNIQUE (usuario);


--
-- TOC entry 3950 (class 2606 OID 54007)
-- Name: usuarios usuarios_usuario_key192; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key192 UNIQUE (usuario);


--
-- TOC entry 3952 (class 2606 OID 54009)
-- Name: usuarios usuarios_usuario_key193; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key193 UNIQUE (usuario);


--
-- TOC entry 3954 (class 2606 OID 54011)
-- Name: usuarios usuarios_usuario_key194; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key194 UNIQUE (usuario);


--
-- TOC entry 3956 (class 2606 OID 54013)
-- Name: usuarios usuarios_usuario_key195; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key195 UNIQUE (usuario);


--
-- TOC entry 3958 (class 2606 OID 54015)
-- Name: usuarios usuarios_usuario_key196; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key196 UNIQUE (usuario);


--
-- TOC entry 3960 (class 2606 OID 54017)
-- Name: usuarios usuarios_usuario_key197; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key197 UNIQUE (usuario);


--
-- TOC entry 3962 (class 2606 OID 54019)
-- Name: usuarios usuarios_usuario_key198; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key198 UNIQUE (usuario);


--
-- TOC entry 3964 (class 2606 OID 54021)
-- Name: usuarios usuarios_usuario_key199; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key199 UNIQUE (usuario);


--
-- TOC entry 3966 (class 2606 OID 54023)
-- Name: usuarios usuarios_usuario_key2; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key2 UNIQUE (usuario);


--
-- TOC entry 3968 (class 2606 OID 54025)
-- Name: usuarios usuarios_usuario_key20; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key20 UNIQUE (usuario);


--
-- TOC entry 3970 (class 2606 OID 53797)
-- Name: usuarios usuarios_usuario_key200; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key200 UNIQUE (usuario);


--
-- TOC entry 3972 (class 2606 OID 53793)
-- Name: usuarios usuarios_usuario_key201; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key201 UNIQUE (usuario);


--
-- TOC entry 3974 (class 2606 OID 54199)
-- Name: usuarios usuarios_usuario_key202; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key202 UNIQUE (usuario);


--
-- TOC entry 3976 (class 2606 OID 53791)
-- Name: usuarios usuarios_usuario_key203; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key203 UNIQUE (usuario);


--
-- TOC entry 3978 (class 2606 OID 53789)
-- Name: usuarios usuarios_usuario_key204; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key204 UNIQUE (usuario);


--
-- TOC entry 3980 (class 2606 OID 53787)
-- Name: usuarios usuarios_usuario_key205; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key205 UNIQUE (usuario);


--
-- TOC entry 3982 (class 2606 OID 53785)
-- Name: usuarios usuarios_usuario_key206; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key206 UNIQUE (usuario);


--
-- TOC entry 3984 (class 2606 OID 53783)
-- Name: usuarios usuarios_usuario_key207; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key207 UNIQUE (usuario);


--
-- TOC entry 3986 (class 2606 OID 54201)
-- Name: usuarios usuarios_usuario_key208; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key208 UNIQUE (usuario);


--
-- TOC entry 3988 (class 2606 OID 53781)
-- Name: usuarios usuarios_usuario_key209; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key209 UNIQUE (usuario);


--
-- TOC entry 3990 (class 2606 OID 54027)
-- Name: usuarios usuarios_usuario_key21; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key21 UNIQUE (usuario);


--
-- TOC entry 3992 (class 2606 OID 53779)
-- Name: usuarios usuarios_usuario_key210; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key210 UNIQUE (usuario);


--
-- TOC entry 3994 (class 2606 OID 53777)
-- Name: usuarios usuarios_usuario_key211; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key211 UNIQUE (usuario);


--
-- TOC entry 3996 (class 2606 OID 53775)
-- Name: usuarios usuarios_usuario_key212; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key212 UNIQUE (usuario);


--
-- TOC entry 3998 (class 2606 OID 53773)
-- Name: usuarios usuarios_usuario_key213; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key213 UNIQUE (usuario);


--
-- TOC entry 4000 (class 2606 OID 53771)
-- Name: usuarios usuarios_usuario_key214; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key214 UNIQUE (usuario);


--
-- TOC entry 4002 (class 2606 OID 53769)
-- Name: usuarios usuarios_usuario_key215; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key215 UNIQUE (usuario);


--
-- TOC entry 4004 (class 2606 OID 54203)
-- Name: usuarios usuarios_usuario_key216; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key216 UNIQUE (usuario);


--
-- TOC entry 4006 (class 2606 OID 53767)
-- Name: usuarios usuarios_usuario_key217; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key217 UNIQUE (usuario);


--
-- TOC entry 4008 (class 2606 OID 53765)
-- Name: usuarios usuarios_usuario_key218; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key218 UNIQUE (usuario);


--
-- TOC entry 4010 (class 2606 OID 53763)
-- Name: usuarios usuarios_usuario_key219; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key219 UNIQUE (usuario);


--
-- TOC entry 4012 (class 2606 OID 54029)
-- Name: usuarios usuarios_usuario_key22; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key22 UNIQUE (usuario);


--
-- TOC entry 4014 (class 2606 OID 54205)
-- Name: usuarios usuarios_usuario_key220; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key220 UNIQUE (usuario);


--
-- TOC entry 4016 (class 2606 OID 53761)
-- Name: usuarios usuarios_usuario_key221; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key221 UNIQUE (usuario);


--
-- TOC entry 4018 (class 2606 OID 53759)
-- Name: usuarios usuarios_usuario_key222; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key222 UNIQUE (usuario);


--
-- TOC entry 4020 (class 2606 OID 53757)
-- Name: usuarios usuarios_usuario_key223; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key223 UNIQUE (usuario);


--
-- TOC entry 4022 (class 2606 OID 54207)
-- Name: usuarios usuarios_usuario_key224; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key224 UNIQUE (usuario);


--
-- TOC entry 4024 (class 2606 OID 53755)
-- Name: usuarios usuarios_usuario_key225; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key225 UNIQUE (usuario);


--
-- TOC entry 4026 (class 2606 OID 53753)
-- Name: usuarios usuarios_usuario_key226; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key226 UNIQUE (usuario);


--
-- TOC entry 4028 (class 2606 OID 53929)
-- Name: usuarios usuarios_usuario_key227; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key227 UNIQUE (usuario);


--
-- TOC entry 4030 (class 2606 OID 54031)
-- Name: usuarios usuarios_usuario_key23; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key23 UNIQUE (usuario);


--
-- TOC entry 4032 (class 2606 OID 54033)
-- Name: usuarios usuarios_usuario_key24; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key24 UNIQUE (usuario);


--
-- TOC entry 4034 (class 2606 OID 54035)
-- Name: usuarios usuarios_usuario_key25; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key25 UNIQUE (usuario);


--
-- TOC entry 4036 (class 2606 OID 54037)
-- Name: usuarios usuarios_usuario_key26; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key26 UNIQUE (usuario);


--
-- TOC entry 4038 (class 2606 OID 54039)
-- Name: usuarios usuarios_usuario_key27; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key27 UNIQUE (usuario);


--
-- TOC entry 4040 (class 2606 OID 54041)
-- Name: usuarios usuarios_usuario_key28; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key28 UNIQUE (usuario);


--
-- TOC entry 4042 (class 2606 OID 54043)
-- Name: usuarios usuarios_usuario_key29; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key29 UNIQUE (usuario);


--
-- TOC entry 4044 (class 2606 OID 54045)
-- Name: usuarios usuarios_usuario_key3; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key3 UNIQUE (usuario);


--
-- TOC entry 4046 (class 2606 OID 54047)
-- Name: usuarios usuarios_usuario_key30; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key30 UNIQUE (usuario);


--
-- TOC entry 4048 (class 2606 OID 54049)
-- Name: usuarios usuarios_usuario_key31; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key31 UNIQUE (usuario);


--
-- TOC entry 4050 (class 2606 OID 54051)
-- Name: usuarios usuarios_usuario_key32; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key32 UNIQUE (usuario);


--
-- TOC entry 4052 (class 2606 OID 54053)
-- Name: usuarios usuarios_usuario_key33; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key33 UNIQUE (usuario);


--
-- TOC entry 4054 (class 2606 OID 54055)
-- Name: usuarios usuarios_usuario_key34; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key34 UNIQUE (usuario);


--
-- TOC entry 4056 (class 2606 OID 54057)
-- Name: usuarios usuarios_usuario_key35; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key35 UNIQUE (usuario);


--
-- TOC entry 4058 (class 2606 OID 54059)
-- Name: usuarios usuarios_usuario_key36; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key36 UNIQUE (usuario);


--
-- TOC entry 4060 (class 2606 OID 54061)
-- Name: usuarios usuarios_usuario_key37; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key37 UNIQUE (usuario);


--
-- TOC entry 4062 (class 2606 OID 54063)
-- Name: usuarios usuarios_usuario_key38; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key38 UNIQUE (usuario);


--
-- TOC entry 4064 (class 2606 OID 54065)
-- Name: usuarios usuarios_usuario_key39; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key39 UNIQUE (usuario);


--
-- TOC entry 4066 (class 2606 OID 54067)
-- Name: usuarios usuarios_usuario_key4; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key4 UNIQUE (usuario);


--
-- TOC entry 4068 (class 2606 OID 54069)
-- Name: usuarios usuarios_usuario_key40; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key40 UNIQUE (usuario);


--
-- TOC entry 4070 (class 2606 OID 54071)
-- Name: usuarios usuarios_usuario_key41; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key41 UNIQUE (usuario);


--
-- TOC entry 4072 (class 2606 OID 54073)
-- Name: usuarios usuarios_usuario_key42; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key42 UNIQUE (usuario);


--
-- TOC entry 4074 (class 2606 OID 54075)
-- Name: usuarios usuarios_usuario_key43; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key43 UNIQUE (usuario);


--
-- TOC entry 4076 (class 2606 OID 54077)
-- Name: usuarios usuarios_usuario_key44; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key44 UNIQUE (usuario);


--
-- TOC entry 4078 (class 2606 OID 54079)
-- Name: usuarios usuarios_usuario_key45; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key45 UNIQUE (usuario);


--
-- TOC entry 4080 (class 2606 OID 54081)
-- Name: usuarios usuarios_usuario_key46; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key46 UNIQUE (usuario);


--
-- TOC entry 4082 (class 2606 OID 54083)
-- Name: usuarios usuarios_usuario_key47; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key47 UNIQUE (usuario);


--
-- TOC entry 4084 (class 2606 OID 54085)
-- Name: usuarios usuarios_usuario_key48; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key48 UNIQUE (usuario);


--
-- TOC entry 4086 (class 2606 OID 54087)
-- Name: usuarios usuarios_usuario_key49; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key49 UNIQUE (usuario);


--
-- TOC entry 4088 (class 2606 OID 54089)
-- Name: usuarios usuarios_usuario_key5; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key5 UNIQUE (usuario);


--
-- TOC entry 4090 (class 2606 OID 54091)
-- Name: usuarios usuarios_usuario_key50; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key50 UNIQUE (usuario);


--
-- TOC entry 4092 (class 2606 OID 54093)
-- Name: usuarios usuarios_usuario_key51; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key51 UNIQUE (usuario);


--
-- TOC entry 4094 (class 2606 OID 54095)
-- Name: usuarios usuarios_usuario_key52; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key52 UNIQUE (usuario);


--
-- TOC entry 4096 (class 2606 OID 54097)
-- Name: usuarios usuarios_usuario_key53; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key53 UNIQUE (usuario);


--
-- TOC entry 4098 (class 2606 OID 54099)
-- Name: usuarios usuarios_usuario_key54; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key54 UNIQUE (usuario);


--
-- TOC entry 4100 (class 2606 OID 54101)
-- Name: usuarios usuarios_usuario_key55; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key55 UNIQUE (usuario);


--
-- TOC entry 4102 (class 2606 OID 54103)
-- Name: usuarios usuarios_usuario_key56; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key56 UNIQUE (usuario);


--
-- TOC entry 4104 (class 2606 OID 54105)
-- Name: usuarios usuarios_usuario_key57; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key57 UNIQUE (usuario);


--
-- TOC entry 4106 (class 2606 OID 54107)
-- Name: usuarios usuarios_usuario_key58; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key58 UNIQUE (usuario);


--
-- TOC entry 4108 (class 2606 OID 54109)
-- Name: usuarios usuarios_usuario_key59; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key59 UNIQUE (usuario);


--
-- TOC entry 4110 (class 2606 OID 54111)
-- Name: usuarios usuarios_usuario_key6; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key6 UNIQUE (usuario);


--
-- TOC entry 4112 (class 2606 OID 54113)
-- Name: usuarios usuarios_usuario_key60; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key60 UNIQUE (usuario);


--
-- TOC entry 4114 (class 2606 OID 54115)
-- Name: usuarios usuarios_usuario_key61; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key61 UNIQUE (usuario);


--
-- TOC entry 4116 (class 2606 OID 54117)
-- Name: usuarios usuarios_usuario_key62; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key62 UNIQUE (usuario);


--
-- TOC entry 4118 (class 2606 OID 54119)
-- Name: usuarios usuarios_usuario_key63; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key63 UNIQUE (usuario);


--
-- TOC entry 4120 (class 2606 OID 54121)
-- Name: usuarios usuarios_usuario_key64; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key64 UNIQUE (usuario);


--
-- TOC entry 4122 (class 2606 OID 54123)
-- Name: usuarios usuarios_usuario_key65; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key65 UNIQUE (usuario);


--
-- TOC entry 4124 (class 2606 OID 54125)
-- Name: usuarios usuarios_usuario_key66; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key66 UNIQUE (usuario);


--
-- TOC entry 4126 (class 2606 OID 54127)
-- Name: usuarios usuarios_usuario_key67; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key67 UNIQUE (usuario);


--
-- TOC entry 4128 (class 2606 OID 54129)
-- Name: usuarios usuarios_usuario_key68; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key68 UNIQUE (usuario);


--
-- TOC entry 4130 (class 2606 OID 54131)
-- Name: usuarios usuarios_usuario_key69; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key69 UNIQUE (usuario);


--
-- TOC entry 4132 (class 2606 OID 54133)
-- Name: usuarios usuarios_usuario_key7; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key7 UNIQUE (usuario);


--
-- TOC entry 4134 (class 2606 OID 54135)
-- Name: usuarios usuarios_usuario_key70; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key70 UNIQUE (usuario);


--
-- TOC entry 4136 (class 2606 OID 54137)
-- Name: usuarios usuarios_usuario_key71; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key71 UNIQUE (usuario);


--
-- TOC entry 4138 (class 2606 OID 54139)
-- Name: usuarios usuarios_usuario_key72; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key72 UNIQUE (usuario);


--
-- TOC entry 4140 (class 2606 OID 54141)
-- Name: usuarios usuarios_usuario_key73; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key73 UNIQUE (usuario);


--
-- TOC entry 4142 (class 2606 OID 54143)
-- Name: usuarios usuarios_usuario_key74; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key74 UNIQUE (usuario);


--
-- TOC entry 4144 (class 2606 OID 54145)
-- Name: usuarios usuarios_usuario_key75; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key75 UNIQUE (usuario);


--
-- TOC entry 4146 (class 2606 OID 54147)
-- Name: usuarios usuarios_usuario_key76; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key76 UNIQUE (usuario);


--
-- TOC entry 4148 (class 2606 OID 54149)
-- Name: usuarios usuarios_usuario_key77; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key77 UNIQUE (usuario);


--
-- TOC entry 4150 (class 2606 OID 54151)
-- Name: usuarios usuarios_usuario_key78; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key78 UNIQUE (usuario);


--
-- TOC entry 4152 (class 2606 OID 54153)
-- Name: usuarios usuarios_usuario_key79; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key79 UNIQUE (usuario);


--
-- TOC entry 4154 (class 2606 OID 54155)
-- Name: usuarios usuarios_usuario_key8; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key8 UNIQUE (usuario);


--
-- TOC entry 4156 (class 2606 OID 54157)
-- Name: usuarios usuarios_usuario_key80; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key80 UNIQUE (usuario);


--
-- TOC entry 4158 (class 2606 OID 54159)
-- Name: usuarios usuarios_usuario_key81; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key81 UNIQUE (usuario);


--
-- TOC entry 4160 (class 2606 OID 54161)
-- Name: usuarios usuarios_usuario_key82; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key82 UNIQUE (usuario);


--
-- TOC entry 4162 (class 2606 OID 54163)
-- Name: usuarios usuarios_usuario_key83; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key83 UNIQUE (usuario);


--
-- TOC entry 4164 (class 2606 OID 54165)
-- Name: usuarios usuarios_usuario_key84; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key84 UNIQUE (usuario);


--
-- TOC entry 4166 (class 2606 OID 54167)
-- Name: usuarios usuarios_usuario_key85; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key85 UNIQUE (usuario);


--
-- TOC entry 4168 (class 2606 OID 54169)
-- Name: usuarios usuarios_usuario_key86; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key86 UNIQUE (usuario);


--
-- TOC entry 4170 (class 2606 OID 54171)
-- Name: usuarios usuarios_usuario_key87; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key87 UNIQUE (usuario);


--
-- TOC entry 4172 (class 2606 OID 54173)
-- Name: usuarios usuarios_usuario_key88; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key88 UNIQUE (usuario);


--
-- TOC entry 4174 (class 2606 OID 54175)
-- Name: usuarios usuarios_usuario_key89; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key89 UNIQUE (usuario);


--
-- TOC entry 4176 (class 2606 OID 54177)
-- Name: usuarios usuarios_usuario_key9; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key9 UNIQUE (usuario);


--
-- TOC entry 4178 (class 2606 OID 54179)
-- Name: usuarios usuarios_usuario_key90; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key90 UNIQUE (usuario);


--
-- TOC entry 4180 (class 2606 OID 54181)
-- Name: usuarios usuarios_usuario_key91; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key91 UNIQUE (usuario);


--
-- TOC entry 4182 (class 2606 OID 54183)
-- Name: usuarios usuarios_usuario_key92; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key92 UNIQUE (usuario);


--
-- TOC entry 4184 (class 2606 OID 54185)
-- Name: usuarios usuarios_usuario_key93; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key93 UNIQUE (usuario);


--
-- TOC entry 4186 (class 2606 OID 54187)
-- Name: usuarios usuarios_usuario_key94; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key94 UNIQUE (usuario);


--
-- TOC entry 4188 (class 2606 OID 54189)
-- Name: usuarios usuarios_usuario_key95; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key95 UNIQUE (usuario);


--
-- TOC entry 4190 (class 2606 OID 54191)
-- Name: usuarios usuarios_usuario_key96; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key96 UNIQUE (usuario);


--
-- TOC entry 4192 (class 2606 OID 54193)
-- Name: usuarios usuarios_usuario_key97; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key97 UNIQUE (usuario);


--
-- TOC entry 4194 (class 2606 OID 54195)
-- Name: usuarios usuarios_usuario_key98; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key98 UNIQUE (usuario);


--
-- TOC entry 4196 (class 2606 OID 54197)
-- Name: usuarios usuarios_usuario_key99; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_usuario_key99 UNIQUE (usuario);


--
-- TOC entry 4644 (class 2606 OID 16497)
-- Name: valoraciones valoraciones_pkey; Type: CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.valoraciones
    ADD CONSTRAINT valoraciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4664 (class 2606 OID 16570)
-- Name: coleccion_publicacions coleccion_publicacions_ColeccionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.coleccion_publicacions
    ADD CONSTRAINT "coleccion_publicacions_ColeccionId_fkey" FOREIGN KEY ("ColeccionId") REFERENCES public.colecciones(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4665 (class 2606 OID 16575)
-- Name: coleccion_publicacions coleccion_publicacions_PublicacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.coleccion_publicacions
    ADD CONSTRAINT "coleccion_publicacions_PublicacionId_fkey" FOREIGN KEY ("PublicacionId") REFERENCES public.publicaciones(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4663 (class 2606 OID 55159)
-- Name: colecciones colecciones_usuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.colecciones
    ADD CONSTRAINT "colecciones_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4654 (class 2606 OID 54684)
-- Name: comentarios comentarios_publicacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT "comentarios_publicacionId_fkey" FOREIGN KEY ("publicacionId") REFERENCES public.publicaciones(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4655 (class 2606 OID 54679)
-- Name: comentarios comentarios_usuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT "comentarios_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4662 (class 2606 OID 55151)
-- Name: notificaciones notificaciones_usuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT "notificaciones_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4656 (class 2606 OID 16482)
-- Name: publicacion_etiqueta publicacion_etiqueta_etiquetaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.publicacion_etiqueta
    ADD CONSTRAINT "publicacion_etiqueta_etiquetaId_fkey" FOREIGN KEY ("etiquetaId") REFERENCES public.etiquetas(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4657 (class 2606 OID 16477)
-- Name: publicacion_etiqueta publicacion_etiqueta_publicacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.publicacion_etiqueta
    ADD CONSTRAINT "publicacion_etiqueta_publicacionId_fkey" FOREIGN KEY ("publicacionId") REFERENCES public.publicaciones(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4653 (class 2606 OID 54671)
-- Name: publicaciones publicaciones_usuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.publicaciones
    ADD CONSTRAINT "publicaciones_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4660 (class 2606 OID 16517)
-- Name: seguidores seguidores_seguidorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.seguidores
    ADD CONSTRAINT "seguidores_seguidorId_fkey" FOREIGN KEY ("seguidorId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 16522)
-- Name: seguidores seguidores_usuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.seguidores
    ADD CONSTRAINT "seguidores_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4658 (class 2606 OID 55138)
-- Name: valoraciones valoraciones_publicacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.valoraciones
    ADD CONSTRAINT "valoraciones_publicacionId_fkey" FOREIGN KEY ("publicacionId") REFERENCES public.publicaciones(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4659 (class 2606 OID 55133)
-- Name: valoraciones valoraciones_usuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: luliortiz222
--

ALTER TABLE ONLY public.valoraciones
    ADD CONSTRAINT "valoraciones_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2101 (class 826 OID 16391)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO luliortiz222;


--
-- TOC entry 2103 (class 826 OID 16393)
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO luliortiz222;


--
-- TOC entry 2102 (class 826 OID 16392)
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO luliortiz222;


--
-- TOC entry 2100 (class 826 OID 16390)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO luliortiz222;


-- Completed on 2026-06-10 17:42:32

--
-- PostgreSQL database dump complete
--

\unrestrict N0L1Rz6gu4sSNc1aZFVHw0iQMctIgxXagEhJzvh7LsYQ3BR9BKxg5odLD1RlLIA

