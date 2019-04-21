--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: audiences; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.audiences (
    id integer NOT NULL,
    name character varying(255),
    "numberOfSeats" integer,
    "numberOfComputers" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.audiences OWNER TO admin;

--
-- Name: audiences_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.audiences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audiences_id_seq OWNER TO admin;

--
-- Name: audiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.audiences_id_seq OWNED BY public.audiences.id;


--
-- Name: days; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.days (
    id integer NOT NULL,
    name character varying(255),
    "shortName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.days OWNER TO admin;

--
-- Name: days_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.days_id_seq OWNER TO admin;

--
-- Name: days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.days_id_seq OWNED BY public.days.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    name character varying(255),
    "shortName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "facultyId" integer
);


ALTER TABLE public.departments OWNER TO admin;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_id_seq OWNER TO admin;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: disciplines; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.disciplines (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.disciplines OWNER TO admin;

--
-- Name: disciplines_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.disciplines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disciplines_id_seq OWNER TO admin;

--
-- Name: disciplines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.disciplines_id_seq OWNED BY public.disciplines.id;


--
-- Name: faculties; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.faculties (
    id integer NOT NULL,
    name character varying(255),
    "shortName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.faculties OWNER TO admin;

--
-- Name: faculties_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.faculties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faculties_id_seq OWNER TO admin;

--
-- Name: faculties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.faculties_id_seq OWNED BY public.faculties.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "departmentId" integer
);


ALTER TABLE public.groups OWNER TO admin;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO admin;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: lessonForms; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."lessonForms" (
    id integer NOT NULL,
    name character varying(255),
    "shortName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."lessonForms" OWNER TO admin;

--
-- Name: lessonForms_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."lessonForms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."lessonForms_id_seq" OWNER TO admin;

--
-- Name: lessonForms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."lessonForms_id_seq" OWNED BY public."lessonForms".id;


--
-- Name: lessonNumbers; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."lessonNumbers" (
    id integer NOT NULL,
    number integer,
    "timeBegin" character varying(255),
    "timeEnd" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."lessonNumbers" OWNER TO admin;

--
-- Name: lessonNumbers_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."lessonNumbers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."lessonNumbers_id_seq" OWNER TO admin;

--
-- Name: lessonNumbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."lessonNumbers_id_seq" OWNED BY public."lessonNumbers".id;


--
-- Name: lessons; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.lessons (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "scheduleId" integer,
    "disciplineId" integer,
    "teacherId" integer,
    "groupId" integer,
    "lessonFormId" integer,
    "lessonNumberId" integer,
    "dayId" integer,
    "weekId" integer,
    "audienceId" integer
);


ALTER TABLE public.lessons OWNER TO admin;

--
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_id_seq OWNER TO admin;

--
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    name character varying(255),
    "shortName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO admin;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO admin;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO admin;

--
-- Name: schedules; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.schedules (
    id integer NOT NULL,
    name character varying(255),
    "usesFrom" timestamp with time zone,
    "usesTo" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "facultyId" integer
);


ALTER TABLE public.schedules OWNER TO admin;

--
-- Name: schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedules_id_seq OWNER TO admin;

--
-- Name: schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    surname character varying(255),
    name character varying(255),
    patronym character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "departmentId" integer,
    "postId" integer
);


ALTER TABLE public.teachers OWNER TO admin;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_id_seq OWNER TO admin;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: userRoles; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."userRoles" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleId" integer NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public."userRoles" OWNER TO admin;

--
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    surname character varying(255),
    username character varying(255),
    patronym character varying(255),
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "facultyId" integer
);


ALTER TABLE public.users OWNER TO admin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO admin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: weeks; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.weeks (
    id integer NOT NULL,
    letter character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.weeks OWNER TO admin;

--
-- Name: weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.weeks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weeks_id_seq OWNER TO admin;

--
-- Name: weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.weeks_id_seq OWNED BY public.weeks.id;


--
-- Name: audiences id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.audiences ALTER COLUMN id SET DEFAULT nextval('public.audiences_id_seq'::regclass);


--
-- Name: days id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.days ALTER COLUMN id SET DEFAULT nextval('public.days_id_seq'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: disciplines id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.disciplines ALTER COLUMN id SET DEFAULT nextval('public.disciplines_id_seq'::regclass);


--
-- Name: faculties id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.faculties ALTER COLUMN id SET DEFAULT nextval('public.faculties_id_seq'::regclass);


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: lessonForms id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."lessonForms" ALTER COLUMN id SET DEFAULT nextval('public."lessonForms_id_seq"'::regclass);


--
-- Name: lessonNumbers id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."lessonNumbers" ALTER COLUMN id SET DEFAULT nextval('public."lessonNumbers_id_seq"'::regclass);


--
-- Name: lessons id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: schedules id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: weeks id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.weeks ALTER COLUMN id SET DEFAULT nextval('public.weeks_id_seq'::regclass);


--
-- Data for Name: audiences; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.audiences (id, name, "numberOfSeats", "numberOfComputers", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: days; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.days (id, name, "shortName", "createdAt", "updatedAt") FROM stdin;
1	понеділок	пн	2019-04-21 22:23:43.665+03	2019-04-21 22:23:43.665+03
2	вівторок	вт	2019-04-21 22:23:43.665+03	2019-04-21 22:23:43.665+03
3	середа	ср	2019-04-21 22:23:43.666+03	2019-04-21 22:23:43.666+03
4	четверг	чт	2019-04-21 22:23:43.666+03	2019-04-21 22:23:43.666+03
5	п'ятниця	пт	2019-04-21 22:23:43.666+03	2019-04-21 22:23:43.666+03
6	субота	сб	2019-04-21 22:23:43.666+03	2019-04-21 22:23:43.666+03
7	неділя	нд	2019-04-21 22:23:43.666+03	2019-04-21 22:23:43.666+03
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.departments (id, name, "shortName", "createdAt", "updatedAt", "facultyId") FROM stdin;
\.


--
-- Data for Name: disciplines; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.disciplines (id, name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: faculties; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.faculties (id, name, "shortName", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.groups (id, name, "createdAt", "updatedAt", "departmentId") FROM stdin;
\.


--
-- Data for Name: lessonForms; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."lessonForms" (id, name, "shortName", "createdAt", "updatedAt") FROM stdin;
1	лекція	л	2019-04-21 22:23:43.664+03	2019-04-21 22:23:43.664+03
2	семінар	сем	2019-04-21 22:23:43.665+03	2019-04-21 22:23:43.665+03
3	практичне заняття	пр	2019-04-21 22:23:43.665+03	2019-04-21 22:23:43.665+03
4	лабораторна робота	лаб	2019-04-21 22:23:43.665+03	2019-04-21 22:23:43.665+03
\.


--
-- Data for Name: lessonNumbers; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."lessonNumbers" (id, number, "timeBegin", "timeEnd", "createdAt", "updatedAt") FROM stdin;
1	1	08:00:00	09:50:00	2019-04-21 22:23:43.667+03	2019-04-21 22:23:43.667+03
2	2	10:10:00	10:50:00	2019-04-21 22:23:43.668+03	2019-04-21 22:23:43.668+03
3	3	11:50:00	13:10:00	2019-04-21 22:23:43.668+03	2019-04-21 22:23:43.668+03
4	4	13:40:00	15:00:00	2019-04-21 22:23:43.668+03	2019-04-21 22:23:43.668+03
5	6	16:40:00	18:00:00	2019-04-21 22:23:43.668+03	2019-04-21 22:23:43.668+03
6	5	15:10:00	16:30:00	2019-04-21 22:23:43.668+03	2019-04-21 22:23:43.668+03
\.


--
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.lessons (id, "createdAt", "updatedAt", "scheduleId", "disciplineId", "teacherId", "groupId", "lessonFormId", "lessonNumberId", "dayId", "weekId", "audienceId") FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.posts (id, name, "shortName", "createdAt", "updatedAt") FROM stdin;
1	асистент	ас	2019-04-21 22:23:43.664+03	2019-04-21 22:23:43.664+03
2	викладач	викл	2019-04-21 22:23:43.664+03	2019-04-21 22:23:43.664+03
3	доцент	доц	2019-04-21 22:23:43.664+03	2019-04-21 22:23:43.664+03
4	старший викладач	ст викл	2019-04-21 22:23:43.664+03	2019-04-21 22:23:43.664+03
5	професор	проф	2019-04-21 22:23:43.664+03	2019-04-21 22:23:43.664+03
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
1	USER	2019-04-21 22:23:43.662+03	2019-04-21 22:23:43.662+03
2	ADMIN	2019-04-21 22:23:43.663+03	2019-04-21 22:23:43.663+03
\.


--
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.schedules (id, name, "usesFrom", "usesTo", "createdAt", "updatedAt", "facultyId") FROM stdin;
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.teachers (id, surname, name, patronym, "createdAt", "updatedAt", "departmentId", "postId") FROM stdin;
\.


--
-- Data for Name: userRoles; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."userRoles" ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (id, name, surname, username, patronym, email, password, "createdAt", "updatedAt", "facultyId") FROM stdin;
\.


--
-- Data for Name: weeks; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.weeks (id, letter, "createdAt", "updatedAt") FROM stdin;
1	а	2019-04-21 22:23:43.668+03	2019-04-21 22:23:43.668+03
2	б	2019-04-21 22:23:43.669+03	2019-04-21 22:23:43.669+03
\.


--
-- Name: audiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.audiences_id_seq', 1, false);


--
-- Name: days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.days_id_seq', 7, true);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.departments_id_seq', 1, false);


--
-- Name: disciplines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.disciplines_id_seq', 1, false);


--
-- Name: faculties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.faculties_id_seq', 1, false);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.groups_id_seq', 1, false);


--
-- Name: lessonForms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."lessonForms_id_seq"', 4, true);


--
-- Name: lessonNumbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."lessonNumbers_id_seq"', 6, true);


--
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.lessons_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.posts_id_seq', 5, true);


--
-- Name: schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.schedules_id_seq', 1, false);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.weeks_id_seq', 2, true);


--
-- Name: audiences audiences_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.audiences
    ADD CONSTRAINT audiences_pkey PRIMARY KEY (id);


--
-- Name: days days_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: disciplines disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (id);


--
-- Name: faculties faculties_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: lessonForms lessonForms_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."lessonForms"
    ADD CONSTRAINT "lessonForms_pkey" PRIMARY KEY (id);


--
-- Name: lessonNumbers lessonNumbers_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."lessonNumbers"
    ADD CONSTRAINT "lessonNumbers_pkey" PRIMARY KEY (id);


--
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schedules schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: userRoles userRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."userRoles"
    ADD CONSTRAINT "userRoles_pkey" PRIMARY KEY ("roleId", "userId");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: weeks weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.weeks
    ADD CONSTRAINT weeks_pkey PRIMARY KEY (id);


--
-- Name: departments departments_facultyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT "departments_facultyId_fkey" FOREIGN KEY ("facultyId") REFERENCES public.faculties(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: groups groups_departmentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT "groups_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES public.departments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_audienceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_audienceId_fkey" FOREIGN KEY ("audienceId") REFERENCES public.audiences(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_dayId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_dayId_fkey" FOREIGN KEY ("dayId") REFERENCES public.days(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_disciplineId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_disciplineId_fkey" FOREIGN KEY ("disciplineId") REFERENCES public.disciplines(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_groupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_lessonFormId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_lessonFormId_fkey" FOREIGN KEY ("lessonFormId") REFERENCES public."lessonForms"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_lessonNumberId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_lessonNumberId_fkey" FOREIGN KEY ("lessonNumberId") REFERENCES public."lessonNumbers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_scheduleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_scheduleId_fkey" FOREIGN KEY ("scheduleId") REFERENCES public.schedules(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_teacherId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_teacherId_fkey" FOREIGN KEY ("teacherId") REFERENCES public.teachers(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lessons lessons_weekId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_weekId_fkey" FOREIGN KEY ("weekId") REFERENCES public.weeks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: schedules schedules_facultyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT "schedules_facultyId_fkey" FOREIGN KEY ("facultyId") REFERENCES public.faculties(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: teachers teachers_departmentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT "teachers_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES public.departments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: teachers teachers_postId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT "teachers_postId_fkey" FOREIGN KEY ("postId") REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: userRoles userRoles_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."userRoles"
    ADD CONSTRAINT "userRoles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: userRoles userRoles_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."userRoles"
    ADD CONSTRAINT "userRoles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: users users_facultyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_facultyId_fkey" FOREIGN KEY ("facultyId") REFERENCES public.faculties(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

