--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: animals_animal; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.animals_animal (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code integer NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    animal_type_id integer NOT NULL,
    is_caught boolean NOT NULL,
    CONSTRAINT animals_animal_code_check CHECK ((code >= 0))
);


ALTER TABLE public.animals_animal OWNER TO rabbits;

--
-- Name: animals_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.animals_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_animal_id_seq OWNER TO rabbits;

--
-- Name: animals_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.animals_animal_id_seq OWNED BY public.animals_animal.id;


--
-- Name: animals_animaltype; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.animals_animaltype (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_predator boolean NOT NULL
);


ALTER TABLE public.animals_animaltype OWNER TO rabbits;

--
-- Name: animals_animaltype_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.animals_animaltype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_animaltype_id_seq OWNER TO rabbits;

--
-- Name: animals_animaltype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.animals_animaltype_id_seq OWNED BY public.animals_animaltype.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO rabbits;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO rabbits;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO rabbits;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO rabbits;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO rabbits;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO rabbits;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO rabbits;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO rabbits;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO rabbits;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO rabbits;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO rabbits;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO rabbits;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO rabbits;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO rabbits;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO rabbits;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO rabbits;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO rabbits;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: rabbits
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO rabbits;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rabbits
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: rabbits
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO rabbits;

--
-- Name: animals_animal id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animal ALTER COLUMN id SET DEFAULT nextval('public.animals_animal_id_seq'::regclass);


--
-- Name: animals_animaltype id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animaltype ALTER COLUMN id SET DEFAULT nextval('public.animals_animaltype_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: animals_animal; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.animals_animal (id, name, code, latitude, longitude, animal_type_id, is_caught) FROM stdin;
4	Grey Wolf	1	14	-4	2	f
3	Krolik	432	14	-4	1	t
2	Pushistik	321	-1	11	1	f
1	Pushock	12345	3	-1	1	f
\.


--
-- Data for Name: animals_animaltype; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.animals_animaltype (id, name, is_predator) FROM stdin;
1	Rabbit	f
2	Wolf	t
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add animal types	7	add_animaltypes
26	Can change animal types	7	change_animaltypes
27	Can delete animal types	7	delete_animaltypes
28	Can view animal types	7	view_animaltypes
29	Can add animals	8	add_animals
30	Can change animals	8	change_animals
31	Can delete animals	8	delete_animals
32	Can view animals	8	view_animals
33	Can add animal type	9	add_animaltype
34	Can change animal type	9	change_animaltype
35	Can delete animal type	9	delete_animaltype
36	Can view animal type	9	view_animaltype
37	Can add animal	10	add_animal
38	Can change animal	10	change_animal
39	Can delete animal	10	delete_animal
40	Can view animal	10	view_animal
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$tV0uXkRYPRqg$mXWK+YyMzbVBvERqfZQeFRNmpFqG+fi8q2bCU9h6f8E=	2021-02-26 10:58:22.762133+03	t	admin				t	t	2021-02-26 10:57:56.069348+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-02-26 11:25:38.750555+03	1	Rabbit	1	[{"added": {}}]	9	1
2	2021-02-26 11:26:02.19636+03	2	Wolf	1	[{"added": {}}]	9	1
3	2021-02-26 11:27:21.476716+03	1	#12345 Pushock (Rabbit)	1	[{"added": {}}]	10	1
4	2021-02-26 11:27:41.17107+03	2	#321 Pushistik (Rabbit)	1	[{"added": {}}]	10	1
5	2021-02-26 11:29:48.222644+03	3	#432 Krolik (Rabbit)	1	[{"added": {}}]	10	1
6	2021-02-26 11:30:12.726363+03	4	#1 Grey Wolf (Wolf)	1	[{"added": {}}]	10	1
7	2021-02-26 13:05:51.257047+03	1	#12345 Pushock (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
8	2021-02-26 13:36:22.877192+03	3	#432 Krolik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
9	2021-02-26 13:36:26.373759+03	3	#432 Krolik (Rabbit)	2	[]	10	1
10	2021-02-26 13:36:31.199859+03	2	#321 Pushistik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
11	2021-02-26 13:36:35.309476+03	1	#12345 Pushock (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
12	2021-02-26 13:37:16.310652+03	3	#432 Krolik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
13	2021-02-26 13:38:03.881717+03	3	#432 Krolik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
14	2021-02-26 13:40:27.587005+03	3	#432 Krolik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
15	2021-02-26 13:42:09.351292+03	3	#432 Krolik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
16	2021-02-26 13:55:52.381982+03	3	#432 Krolik (Rabbit)	2	[{"changed": {"fields": ["Is caught?"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	animals	animaltypes
8	animals	animals
9	animals	animaltype
10	animals	animal
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-02-26 10:28:29.589407+03
2	auth	0001_initial	2021-02-26 10:28:29.617247+03
3	admin	0001_initial	2021-02-26 10:28:29.646846+03
4	admin	0002_logentry_remove_auto_add	2021-02-26 10:28:29.657259+03
5	admin	0003_logentry_add_action_flag_choices	2021-02-26 10:28:29.673683+03
6	contenttypes	0002_remove_content_type_name	2021-02-26 10:28:29.687031+03
7	auth	0002_alter_permission_name_max_length	2021-02-26 10:28:29.693782+03
8	auth	0003_alter_user_email_max_length	2021-02-26 10:28:29.700242+03
9	auth	0004_alter_user_username_opts	2021-02-26 10:28:29.706477+03
10	auth	0005_alter_user_last_login_null	2021-02-26 10:28:29.712868+03
11	auth	0006_require_contenttypes_0002	2021-02-26 10:28:29.714055+03
12	auth	0007_alter_validators_add_error_messages	2021-02-26 10:28:29.720961+03
13	auth	0008_alter_user_username_max_length	2021-02-26 10:28:29.729251+03
14	auth	0009_alter_user_last_name_max_length	2021-02-26 10:28:29.73541+03
15	auth	0010_alter_group_name_max_length	2021-02-26 10:28:29.742236+03
16	auth	0011_update_proxy_permissions	2021-02-26 10:28:29.748283+03
17	auth	0012_alter_user_first_name_max_length	2021-02-26 10:28:29.754554+03
18	sessions	0001_initial	2021-02-26 10:28:29.75878+03
21	animals	0001_initial	2021-02-26 11:25:11.237171+03
22	animals	0002_auto_20210226_0830	2021-02-26 11:30:54.446497+03
23	animals	0003_animaltype_is_caught	2021-02-26 12:59:50.557978+03
24	animals	0004_auto_20210226_1003	2021-02-26 13:03:42.877047+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: rabbits
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
670dbbjji0k9hmxf0w5dah7xfowmkpeb	.eJxVjDsOwjAQRO_iGllOHH-Wkj5nsNbeDQ4gR4qTCnF3HCkFNFPMezNvEXDfctgrr2EmcRWduPx2EdOTywHogeW-yLSUbZ2jPBR50irHhfh1O92_g4w1tzUwa4iQBtsSyBnlECaPwMpo7XtSprM-aRtb9BSjcopd0gYsDhOR-HwB2N83wg:1lFY10:LShHcRfSZUjydeptNErLdvaLU5NG-x9ImlsQ3bl4DiY	2021-03-12 10:58:22.764335+03
\.


--
-- Name: animals_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.animals_animal_id_seq', 4, true);


--
-- Name: animals_animaltype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.animals_animaltype_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rabbits
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: animals_animal animals_animal_code_36e846a3_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animal
    ADD CONSTRAINT animals_animal_code_36e846a3_uniq UNIQUE (code);


--
-- Name: animals_animal animals_animal_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animal
    ADD CONSTRAINT animals_animal_pkey PRIMARY KEY (id);


--
-- Name: animals_animaltype animals_animaltype_name_2d841443_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animaltype
    ADD CONSTRAINT animals_animaltype_name_2d841443_uniq UNIQUE (name);


--
-- Name: animals_animaltype animals_animaltype_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animaltype
    ADD CONSTRAINT animals_animaltype_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: animals_animal_animal_type_id_4fa321c3; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX animals_animal_animal_type_id_4fa321c3 ON public.animals_animal USING btree (animal_type_id);


--
-- Name: animals_animaltype_name_2d841443_like; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX animals_animaltype_name_2d841443_like ON public.animals_animaltype USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: rabbits
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: animals_animal animals_animal_animal_type_id_4fa321c3_fk_animals_animaltype_id; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.animals_animal
    ADD CONSTRAINT animals_animal_animal_type_id_4fa321c3_fk_animals_animaltype_id FOREIGN KEY (animal_type_id) REFERENCES public.animals_animaltype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rabbits
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

