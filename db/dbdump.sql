--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

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
-- Name: Audience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Audience" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "NumberOfSeats" integer NOT NULL,
    "NumberOfComputers" integer NOT NULL
);


ALTER TABLE public."Audience" OWNER TO postgres;

--
-- Name: AudienceCalendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AudienceCalendar" (
    "AudienceID" integer NOT NULL,
    "CalendarID" integer NOT NULL
);


ALTER TABLE public."AudienceCalendar" OWNER TO postgres;

--
-- Name: Audience_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Audience_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Audience_ID_seq" OWNER TO postgres;

--
-- Name: Audience_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Audience_ID_seq" OWNED BY public."Audience"."ID";


--
-- Name: Calendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Calendar" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "Link" character varying(255) NOT NULL,
    "Colour" character varying(255) NOT NULL
);


ALTER TABLE public."Calendar" OWNER TO postgres;

--
-- Name: Calendar_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Calendar_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Calendar_ID_seq" OWNER TO postgres;

--
-- Name: Calendar_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Calendar_ID_seq" OWNED BY public."Calendar"."ID";


--
-- Name: Chair; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Chair" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "FacultyID" integer NOT NULL
);


ALTER TABLE public."Chair" OWNER TO postgres;

--
-- Name: Chair_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Chair_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Chair_ID_seq" OWNER TO postgres;

--
-- Name: Chair_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Chair_ID_seq" OWNED BY public."Chair"."ID";


--
-- Name: Checkpoint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Checkpoint" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "UsableForLesson" boolean NOT NULL,
    "UsableForSubject" boolean NOT NULL,
    "UsableForTeachers" boolean NOT NULL
);


ALTER TABLE public."Checkpoint" OWNER TO postgres;

--
-- Name: Checkpoint_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Checkpoint_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Checkpoint_ID_seq" OWNER TO postgres;

--
-- Name: Checkpoint_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Checkpoint_ID_seq" OWNED BY public."Checkpoint"."ID";


--
-- Name: ControlForm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ControlForm" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."ControlForm" OWNER TO postgres;

--
-- Name: ControlForm_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ControlForm_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ControlForm_ID_seq" OWNER TO postgres;

--
-- Name: ControlForm_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ControlForm_ID_seq" OWNED BY public."ControlForm"."ID";


--
-- Name: Cource; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cource" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Cource" OWNER TO postgres;

--
-- Name: Cource_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cource_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cource_ID_seq" OWNER TO postgres;

--
-- Name: Cource_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cource_ID_seq" OWNED BY public."Cource"."ID";


--
-- Name: Day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Day" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "ShortName" character varying(255) NOT NULL
);


ALTER TABLE public."Day" OWNER TO postgres;

--
-- Name: Day_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Day_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Day_ID_seq" OWNER TO postgres;

--
-- Name: Day_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Day_ID_seq" OWNED BY public."Day"."ID";


--
-- Name: Faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Faculty" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Faculty" OWNER TO postgres;

--
-- Name: Faculty_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Faculty_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Faculty_ID_seq" OWNER TO postgres;

--
-- Name: Faculty_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Faculty_ID_seq" OWNED BY public."Faculty"."ID";


--
-- Name: Flow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Flow" (
    "ID" integer NOT NULL,
    "Comment" character varying(255) NOT NULL
);


ALTER TABLE public."Flow" OWNER TO postgres;

--
-- Name: Flow_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Flow_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Flow_ID_seq" OWNER TO postgres;

--
-- Name: Flow_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Flow_ID_seq" OWNED BY public."Flow"."ID";


--
-- Name: Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Group" (
    "ID" integer NOT NULL,
    "LevelID" integer NOT NULL,
    "CourceID" integer NOT NULL,
    "SpecialityID" integer NOT NULL,
    "Number" character varying(255) NOT NULL
);


ALTER TABLE public."Group" OWNER TO postgres;

--
-- Name: GroupCalendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GroupCalendar" (
    "GroupID" integer NOT NULL,
    "CalendarID" integer NOT NULL
);


ALTER TABLE public."GroupCalendar" OWNER TO postgres;

--
-- Name: Group_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Group_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Group_ID_seq" OWNER TO postgres;

--
-- Name: Group_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Group_ID_seq" OWNED BY public."Group"."ID";


--
-- Name: Lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lesson" (
    "ID" integer NOT NULL,
    "AudienceID" integer NOT NULL,
    "FlowID" integer NOT NULL,
    "SubjectLessonTypeTeacherPostID" integer NOT NULL,
    "TimeID" integer NOT NULL
);


ALTER TABLE public."Lesson" OWNER TO postgres;

--
-- Name: LessonCheckpoint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LessonCheckpoint" (
    "LessonID" integer NOT NULL,
    "CheckpointID" integer NOT NULL,
    "Note" character varying(255)
);


ALTER TABLE public."LessonCheckpoint" OWNER TO postgres;

--
-- Name: LessonType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LessonType" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "ShortName" character varying(255) NOT NULL
);


ALTER TABLE public."LessonType" OWNER TO postgres;

--
-- Name: LessonType_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LessonType_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LessonType_ID_seq" OWNER TO postgres;

--
-- Name: LessonType_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LessonType_ID_seq" OWNED BY public."LessonType"."ID";


--
-- Name: Lesson_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Lesson_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Lesson_ID_seq" OWNER TO postgres;

--
-- Name: Lesson_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Lesson_ID_seq" OWNED BY public."Lesson"."ID";


--
-- Name: Level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Level" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Level" OWNER TO postgres;

--
-- Name: Level_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Level_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Level_ID_seq" OWNER TO postgres;

--
-- Name: Level_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Level_ID_seq" OWNED BY public."Level"."ID";


--
-- Name: Number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Number" (
    "ID" integer NOT NULL,
    "Number" integer NOT NULL,
    "TimeBegin" time without time zone NOT NULL,
    "TimeEnd" time without time zone NOT NULL
);


ALTER TABLE public."Number" OWNER TO postgres;

--
-- Name: Number_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Number_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Number_ID_seq" OWNER TO postgres;

--
-- Name: Number_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Number_ID_seq" OWNED BY public."Number"."ID";


--
-- Name: Permision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Permision" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Permision" OWNER TO postgres;

--
-- Name: Permision_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Permision_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Permision_ID_seq" OWNER TO postgres;

--
-- Name: Permision_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Permision_ID_seq" OWNED BY public."Permision"."ID";


--
-- Name: Post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Post" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "ShortName" character varying(255) NOT NULL
);


ALTER TABLE public."Post" OWNER TO postgres;

--
-- Name: Post_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Post_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Post_ID_seq" OWNER TO postgres;

--
-- Name: Post_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Post_ID_seq" OWNED BY public."Post"."ID";


--
-- Name: Shedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shedule" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL,
    "UsesFrom" date NOT NULL,
    "UsesTo" date NOT NULL
);


ALTER TABLE public."Shedule" OWNER TO postgres;

--
-- Name: SheduleLesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SheduleLesson" (
    "LessonID" integer NOT NULL,
    "SheduleID" integer NOT NULL
);


ALTER TABLE public."SheduleLesson" OWNER TO postgres;

--
-- Name: SheduleWorkerPermision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SheduleWorkerPermision" (
    "SheduleID" integer NOT NULL,
    "WorkerID" integer NOT NULL,
    "PermisionID" integer NOT NULL
);


ALTER TABLE public."SheduleWorkerPermision" OWNER TO postgres;

--
-- Name: SheduleWorkerPermision_PermisionID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SheduleWorkerPermision_PermisionID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SheduleWorkerPermision_PermisionID_seq" OWNER TO postgres;

--
-- Name: SheduleWorkerPermision_PermisionID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SheduleWorkerPermision_PermisionID_seq" OWNED BY public."SheduleWorkerPermision"."PermisionID";


--
-- Name: SheduleWorkerPermision_WorkerID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SheduleWorkerPermision_WorkerID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SheduleWorkerPermision_WorkerID_seq" OWNER TO postgres;

--
-- Name: SheduleWorkerPermision_WorkerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SheduleWorkerPermision_WorkerID_seq" OWNED BY public."SheduleWorkerPermision"."WorkerID";


--
-- Name: Shedule_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shedule_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Shedule_ID_seq" OWNER TO postgres;

--
-- Name: Shedule_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shedule_ID_seq" OWNED BY public."Shedule"."ID";


--
-- Name: Speciality; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Speciality" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Speciality" OWNER TO postgres;

--
-- Name: Speciality_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Speciality_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Speciality_ID_seq" OWNER TO postgres;

--
-- Name: Speciality_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Speciality_ID_seq" OWNED BY public."Speciality"."ID";


--
-- Name: Specialization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Specialization" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Specialization" OWNER TO postgres;

--
-- Name: Specialization_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Specialization_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Specialization_ID_seq" OWNER TO postgres;

--
-- Name: Specialization_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Specialization_ID_seq" OWNED BY public."Specialization"."ID";


--
-- Name: Subgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subgroup" (
    "ID" integer NOT NULL,
    "GroupID" integer NOT NULL,
    "SpecializationID" integer NOT NULL,
    "StudentCount" integer NOT NULL
);


ALTER TABLE public."Subgroup" OWNER TO postgres;

--
-- Name: SubgroupFlow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SubgroupFlow" (
    "SubgroupID" integer NOT NULL,
    "FlowID" integer NOT NULL
);


ALTER TABLE public."SubgroupFlow" OWNER TO postgres;

--
-- Name: Subgroup_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Subgroup_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Subgroup_ID_seq" OWNER TO postgres;

--
-- Name: Subgroup_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Subgroup_ID_seq" OWNED BY public."Subgroup"."ID";


--
-- Name: Subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subject" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Subject" OWNER TO postgres;

--
-- Name: SubjectControlForm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SubjectControlForm" (
    "ID" integer NOT NULL,
    "SubjectID" integer NOT NULL,
    "ControlFormID" integer NOT NULL
);


ALTER TABLE public."SubjectControlForm" OWNER TO postgres;

--
-- Name: SubjectControlFormTeacherPost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SubjectControlFormTeacherPost" (
    "ID" integer NOT NULL,
    "SubjectControlFormID" integer NOT NULL,
    "TeacherPostID" integer NOT NULL
);


ALTER TABLE public."SubjectControlFormTeacherPost" OWNER TO postgres;

--
-- Name: SubjectControlFormTeacherPost_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SubjectControlFormTeacherPost_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SubjectControlFormTeacherPost_ID_seq" OWNER TO postgres;

--
-- Name: SubjectControlFormTeacherPost_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SubjectControlFormTeacherPost_ID_seq" OWNED BY public."SubjectControlFormTeacherPost"."ID";


--
-- Name: SubjectControlForm_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SubjectControlForm_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SubjectControlForm_ID_seq" OWNER TO postgres;

--
-- Name: SubjectControlForm_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SubjectControlForm_ID_seq" OWNED BY public."SubjectControlForm"."ID";


--
-- Name: SubjectLessonType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SubjectLessonType" (
    "ID" integer NOT NULL,
    "SubjectID" integer NOT NULL,
    "LessonTypeID" integer NOT NULL
);


ALTER TABLE public."SubjectLessonType" OWNER TO postgres;

--
-- Name: SubjectLessonTypeTeacherPost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SubjectLessonTypeTeacherPost" (
    "ID" integer NOT NULL,
    "SubjectLessonTypeID" integer NOT NULL,
    "TeacherPostID" integer NOT NULL
);


ALTER TABLE public."SubjectLessonTypeTeacherPost" OWNER TO postgres;

--
-- Name: SubjectLessonTypeTeacherPost_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SubjectLessonTypeTeacherPost_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SubjectLessonTypeTeacherPost_ID_seq" OWNER TO postgres;

--
-- Name: SubjectLessonTypeTeacherPost_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SubjectLessonTypeTeacherPost_ID_seq" OWNED BY public."SubjectLessonTypeTeacherPost"."ID";


--
-- Name: SubjectLessonType_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SubjectLessonType_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SubjectLessonType_ID_seq" OWNER TO postgres;

--
-- Name: SubjectLessonType_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SubjectLessonType_ID_seq" OWNED BY public."SubjectLessonType"."ID";


--
-- Name: Subject_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Subject_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Subject_ID_seq" OWNER TO postgres;

--
-- Name: Subject_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Subject_ID_seq" OWNED BY public."Subject"."ID";


--
-- Name: Teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Teacher" (
    "ID" integer NOT NULL,
    "Surname" character varying(255) NOT NULL,
    "Name" character varying(255) NOT NULL,
    "Patronym" character varying(255)
);


ALTER TABLE public."Teacher" OWNER TO postgres;

--
-- Name: TeacherChair; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TeacherChair" (
    "TeacherID" integer NOT NULL,
    "ChairID" integer NOT NULL
);


ALTER TABLE public."TeacherChair" OWNER TO postgres;

--
-- Name: TeacherPost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TeacherPost" (
    "ID" integer NOT NULL,
    "TeacherID" integer NOT NULL,
    "PostID" integer NOT NULL
);


ALTER TABLE public."TeacherPost" OWNER TO postgres;

--
-- Name: TeacherPost_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TeacherPost_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TeacherPost_ID_seq" OWNER TO postgres;

--
-- Name: TeacherPost_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TeacherPost_ID_seq" OWNED BY public."TeacherPost"."ID";


--
-- Name: Teacher_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Teacher_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Teacher_ID_seq" OWNER TO postgres;

--
-- Name: Teacher_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Teacher_ID_seq" OWNED BY public."Teacher"."ID";


--
-- Name: TecherCalendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TecherCalendar" (
    "TecherID" integer NOT NULL,
    "CalendarID" integer NOT NULL
);


ALTER TABLE public."TecherCalendar" OWNER TO postgres;

--
-- Name: Time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Time" (
    "ID" integer NOT NULL,
    "WeekID" integer NOT NULL,
    "DayID" integer NOT NULL,
    "NumberID" integer NOT NULL
);


ALTER TABLE public."Time" OWNER TO postgres;

--
-- Name: Time_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Time_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Time_ID_seq" OWNER TO postgres;

--
-- Name: Time_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Time_ID_seq" OWNED BY public."Time"."ID";


--
-- Name: Week; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Week" (
    "ID" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


ALTER TABLE public."Week" OWNER TO postgres;

--
-- Name: Week_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Week_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Week_ID_seq" OWNER TO postgres;

--
-- Name: Week_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Week_ID_seq" OWNED BY public."Week"."ID";


--
-- Name: Worker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Worker" (
    "ID" integer NOT NULL,
    "Surname" character varying(255) NOT NULL,
    "Name" character varying(255) NOT NULL,
    "Patronym" character varying(255),
    email character varying(255) NOT NULL,
    pw character varying(255) NOT NULL
);


ALTER TABLE public."Worker" OWNER TO postgres;

--
-- Name: Worker_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Worker_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Worker_ID_seq" OWNER TO postgres;

--
-- Name: Worker_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Worker_ID_seq" OWNED BY public."Worker"."ID";


--
-- Name: Audience ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Audience" ALTER COLUMN "ID" SET DEFAULT nextval('public."Audience_ID_seq"'::regclass);


--
-- Name: Calendar ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calendar" ALTER COLUMN "ID" SET DEFAULT nextval('public."Calendar_ID_seq"'::regclass);


--
-- Name: Chair ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Chair" ALTER COLUMN "ID" SET DEFAULT nextval('public."Chair_ID_seq"'::regclass);


--
-- Name: Checkpoint ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Checkpoint" ALTER COLUMN "ID" SET DEFAULT nextval('public."Checkpoint_ID_seq"'::regclass);


--
-- Name: ControlForm ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ControlForm" ALTER COLUMN "ID" SET DEFAULT nextval('public."ControlForm_ID_seq"'::regclass);


--
-- Name: Cource ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cource" ALTER COLUMN "ID" SET DEFAULT nextval('public."Cource_ID_seq"'::regclass);


--
-- Name: Day ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Day" ALTER COLUMN "ID" SET DEFAULT nextval('public."Day_ID_seq"'::regclass);


--
-- Name: Faculty ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Faculty" ALTER COLUMN "ID" SET DEFAULT nextval('public."Faculty_ID_seq"'::regclass);


--
-- Name: Flow ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Flow" ALTER COLUMN "ID" SET DEFAULT nextval('public."Flow_ID_seq"'::regclass);


--
-- Name: Group ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group" ALTER COLUMN "ID" SET DEFAULT nextval('public."Group_ID_seq"'::regclass);


--
-- Name: Lesson ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lesson" ALTER COLUMN "ID" SET DEFAULT nextval('public."Lesson_ID_seq"'::regclass);


--
-- Name: LessonType ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LessonType" ALTER COLUMN "ID" SET DEFAULT nextval('public."LessonType_ID_seq"'::regclass);


--
-- Name: Level ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Level" ALTER COLUMN "ID" SET DEFAULT nextval('public."Level_ID_seq"'::regclass);


--
-- Name: Number ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Number" ALTER COLUMN "ID" SET DEFAULT nextval('public."Number_ID_seq"'::regclass);


--
-- Name: Permision ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permision" ALTER COLUMN "ID" SET DEFAULT nextval('public."Permision_ID_seq"'::regclass);


--
-- Name: Post ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Post" ALTER COLUMN "ID" SET DEFAULT nextval('public."Post_ID_seq"'::regclass);


--
-- Name: Shedule ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shedule" ALTER COLUMN "ID" SET DEFAULT nextval('public."Shedule_ID_seq"'::regclass);


--
-- Name: SheduleWorkerPermision WorkerID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleWorkerPermision" ALTER COLUMN "WorkerID" SET DEFAULT nextval('public."SheduleWorkerPermision_WorkerID_seq"'::regclass);


--
-- Name: SheduleWorkerPermision PermisionID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleWorkerPermision" ALTER COLUMN "PermisionID" SET DEFAULT nextval('public."SheduleWorkerPermision_PermisionID_seq"'::regclass);


--
-- Name: Speciality ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Speciality" ALTER COLUMN "ID" SET DEFAULT nextval('public."Speciality_ID_seq"'::regclass);


--
-- Name: Specialization ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Specialization" ALTER COLUMN "ID" SET DEFAULT nextval('public."Specialization_ID_seq"'::regclass);


--
-- Name: Subgroup ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subgroup" ALTER COLUMN "ID" SET DEFAULT nextval('public."Subgroup_ID_seq"'::regclass);


--
-- Name: Subject ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject" ALTER COLUMN "ID" SET DEFAULT nextval('public."Subject_ID_seq"'::regclass);


--
-- Name: SubjectControlForm ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlForm" ALTER COLUMN "ID" SET DEFAULT nextval('public."SubjectControlForm_ID_seq"'::regclass);


--
-- Name: SubjectControlFormTeacherPost ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlFormTeacherPost" ALTER COLUMN "ID" SET DEFAULT nextval('public."SubjectControlFormTeacherPost_ID_seq"'::regclass);


--
-- Name: SubjectLessonType ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonType" ALTER COLUMN "ID" SET DEFAULT nextval('public."SubjectLessonType_ID_seq"'::regclass);


--
-- Name: SubjectLessonTypeTeacherPost ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonTypeTeacherPost" ALTER COLUMN "ID" SET DEFAULT nextval('public."SubjectLessonTypeTeacherPost_ID_seq"'::regclass);


--
-- Name: Teacher ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teacher" ALTER COLUMN "ID" SET DEFAULT nextval('public."Teacher_ID_seq"'::regclass);


--
-- Name: TeacherPost ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeacherPost" ALTER COLUMN "ID" SET DEFAULT nextval('public."TeacherPost_ID_seq"'::regclass);


--
-- Name: Time ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Time" ALTER COLUMN "ID" SET DEFAULT nextval('public."Time_ID_seq"'::regclass);


--
-- Name: Week ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Week" ALTER COLUMN "ID" SET DEFAULT nextval('public."Week_ID_seq"'::regclass);


--
-- Name: Worker ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Worker" ALTER COLUMN "ID" SET DEFAULT nextval('public."Worker_ID_seq"'::regclass);


--
-- Data for Name: Audience; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Audience" ("ID", "Name", "NumberOfSeats", "NumberOfComputers") FROM stdin;
\.


--
-- Data for Name: AudienceCalendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AudienceCalendar" ("AudienceID", "CalendarID") FROM stdin;
\.


--
-- Name: Audience_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Audience_ID_seq"', 1, false);


--
-- Data for Name: Calendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Calendar" ("ID", "Name", "Link", "Colour") FROM stdin;
\.


--
-- Name: Calendar_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Calendar_ID_seq"', 1, false);


--
-- Data for Name: Chair; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Chair" ("ID", "Name", "FacultyID") FROM stdin;
\.


--
-- Name: Chair_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Chair_ID_seq"', 1, false);


--
-- Data for Name: Checkpoint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Checkpoint" ("ID", "Name", "UsableForLesson", "UsableForSubject", "UsableForTeachers") FROM stdin;
\.


--
-- Name: Checkpoint_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Checkpoint_ID_seq"', 1, false);


--
-- Data for Name: ControlForm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ControlForm" ("ID", "Name") FROM stdin;
\.


--
-- Name: ControlForm_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ControlForm_ID_seq"', 1, false);


--
-- Data for Name: Cource; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Cource" ("ID", "Name") FROM stdin;
\.


--
-- Name: Cource_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cource_ID_seq"', 1, false);


--
-- Data for Name: Day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Day" ("ID", "Name", "ShortName") FROM stdin;
\.


--
-- Name: Day_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Day_ID_seq"', 1, false);


--
-- Data for Name: Faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Faculty" ("ID", "Name") FROM stdin;
\.


--
-- Name: Faculty_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Faculty_ID_seq"', 1, false);


--
-- Data for Name: Flow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Flow" ("ID", "Comment") FROM stdin;
\.


--
-- Name: Flow_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Flow_ID_seq"', 1, false);


--
-- Data for Name: Group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Group" ("ID", "LevelID", "CourceID", "SpecialityID", "Number") FROM stdin;
\.


--
-- Data for Name: GroupCalendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GroupCalendar" ("GroupID", "CalendarID") FROM stdin;
\.


--
-- Name: Group_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Group_ID_seq"', 1, false);


--
-- Data for Name: Lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Lesson" ("ID", "AudienceID", "FlowID", "SubjectLessonTypeTeacherPostID", "TimeID") FROM stdin;
\.


--
-- Data for Name: LessonCheckpoint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LessonCheckpoint" ("LessonID", "CheckpointID", "Note") FROM stdin;
\.


--
-- Data for Name: LessonType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LessonType" ("ID", "Name", "ShortName") FROM stdin;
\.


--
-- Name: LessonType_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."LessonType_ID_seq"', 1, false);


--
-- Name: Lesson_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Lesson_ID_seq"', 1, false);


--
-- Data for Name: Level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Level" ("ID", "Name") FROM stdin;
\.


--
-- Name: Level_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Level_ID_seq"', 1, false);


--
-- Data for Name: Number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Number" ("ID", "Number", "TimeBegin", "TimeEnd") FROM stdin;
\.


--
-- Name: Number_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Number_ID_seq"', 1, false);


--
-- Data for Name: Permision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Permision" ("ID", "Name") FROM stdin;
\.


--
-- Name: Permision_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Permision_ID_seq"', 1, false);


--
-- Data for Name: Post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Post" ("ID", "Name", "ShortName") FROM stdin;
\.


--
-- Name: Post_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Post_ID_seq"', 1, false);


--
-- Data for Name: Shedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shedule" ("ID", "Name", "UsesFrom", "UsesTo") FROM stdin;
\.


--
-- Data for Name: SheduleLesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SheduleLesson" ("LessonID", "SheduleID") FROM stdin;
\.


--
-- Data for Name: SheduleWorkerPermision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SheduleWorkerPermision" ("SheduleID", "WorkerID", "PermisionID") FROM stdin;
\.


--
-- Name: SheduleWorkerPermision_PermisionID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SheduleWorkerPermision_PermisionID_seq"', 1, false);


--
-- Name: SheduleWorkerPermision_WorkerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SheduleWorkerPermision_WorkerID_seq"', 1, false);


--
-- Name: Shedule_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shedule_ID_seq"', 1, false);


--
-- Data for Name: Speciality; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Speciality" ("ID", "Name") FROM stdin;
\.


--
-- Name: Speciality_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Speciality_ID_seq"', 1, false);


--
-- Data for Name: Specialization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Specialization" ("ID", "Name") FROM stdin;
\.


--
-- Name: Specialization_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Specialization_ID_seq"', 1, false);


--
-- Data for Name: Subgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subgroup" ("ID", "GroupID", "SpecializationID", "StudentCount") FROM stdin;
\.


--
-- Data for Name: SubgroupFlow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SubgroupFlow" ("SubgroupID", "FlowID") FROM stdin;
\.


--
-- Name: Subgroup_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Subgroup_ID_seq"', 1, false);


--
-- Data for Name: Subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subject" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: SubjectControlForm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SubjectControlForm" ("ID", "SubjectID", "ControlFormID") FROM stdin;
\.


--
-- Data for Name: SubjectControlFormTeacherPost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SubjectControlFormTeacherPost" ("ID", "SubjectControlFormID", "TeacherPostID") FROM stdin;
\.


--
-- Name: SubjectControlFormTeacherPost_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SubjectControlFormTeacherPost_ID_seq"', 1, false);


--
-- Name: SubjectControlForm_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SubjectControlForm_ID_seq"', 1, false);


--
-- Data for Name: SubjectLessonType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SubjectLessonType" ("ID", "SubjectID", "LessonTypeID") FROM stdin;
\.


--
-- Data for Name: SubjectLessonTypeTeacherPost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SubjectLessonTypeTeacherPost" ("ID", "SubjectLessonTypeID", "TeacherPostID") FROM stdin;
\.


--
-- Name: SubjectLessonTypeTeacherPost_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SubjectLessonTypeTeacherPost_ID_seq"', 1, false);


--
-- Name: SubjectLessonType_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SubjectLessonType_ID_seq"', 1, false);


--
-- Name: Subject_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Subject_ID_seq"', 1, false);


--
-- Data for Name: Teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Teacher" ("ID", "Surname", "Name", "Patronym") FROM stdin;
\.


--
-- Data for Name: TeacherChair; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TeacherChair" ("TeacherID", "ChairID") FROM stdin;
\.


--
-- Data for Name: TeacherPost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TeacherPost" ("ID", "TeacherID", "PostID") FROM stdin;
\.


--
-- Name: TeacherPost_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TeacherPost_ID_seq"', 1, false);


--
-- Name: Teacher_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Teacher_ID_seq"', 1, false);


--
-- Data for Name: TecherCalendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TecherCalendar" ("TecherID", "CalendarID") FROM stdin;
\.


--
-- Data for Name: Time; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Time" ("ID", "WeekID", "DayID", "NumberID") FROM stdin;
\.


--
-- Name: Time_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Time_ID_seq"', 1, false);


--
-- Data for Name: Week; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Week" ("ID", "Name") FROM stdin;
\.


--
-- Name: Week_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Week_ID_seq"', 1, false);


--
-- Data for Name: Worker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Worker" ("ID", "Surname", "Name", "Patronym", email, pw) FROM stdin;
\.


--
-- Name: Worker_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Worker_ID_seq"', 1, false);


--
-- Name: Audience audience_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Audience"
    ADD CONSTRAINT audience_pk PRIMARY KEY ("ID");


--
-- Name: AudienceCalendar audiencecalendar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AudienceCalendar"
    ADD CONSTRAINT audiencecalendar_pk PRIMARY KEY ("AudienceID", "CalendarID");


--
-- Name: Calendar calendar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calendar"
    ADD CONSTRAINT calendar_pk PRIMARY KEY ("ID");


--
-- Name: Chair chair_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Chair"
    ADD CONSTRAINT chair_pk PRIMARY KEY ("ID", "FacultyID");


--
-- Name: Checkpoint checkpoint_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Checkpoint"
    ADD CONSTRAINT checkpoint_pk PRIMARY KEY ("ID");


--
-- Name: ControlForm controlform_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ControlForm"
    ADD CONSTRAINT controlform_pk PRIMARY KEY ("ID");


--
-- Name: Cource cource_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cource"
    ADD CONSTRAINT cource_pk PRIMARY KEY ("ID");


--
-- Name: Day day_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Day"
    ADD CONSTRAINT day_pk PRIMARY KEY ("ID");


--
-- Name: Faculty faculty_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT faculty_pk PRIMARY KEY ("ID");


--
-- Name: Flow flow_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Flow"
    ADD CONSTRAINT flow_pk PRIMARY KEY ("ID");


--
-- Name: Group group_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT group_pk PRIMARY KEY ("ID");


--
-- Name: GroupCalendar groupcalendar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GroupCalendar"
    ADD CONSTRAINT groupcalendar_pk PRIMARY KEY ("GroupID", "CalendarID");


--
-- Name: Lesson lesson_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lesson"
    ADD CONSTRAINT lesson_pk PRIMARY KEY ("ID");


--
-- Name: LessonCheckpoint lessoncheckpoint_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LessonCheckpoint"
    ADD CONSTRAINT lessoncheckpoint_pk PRIMARY KEY ("LessonID", "CheckpointID");


--
-- Name: LessonType lessontype_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LessonType"
    ADD CONSTRAINT lessontype_pk PRIMARY KEY ("ID");


--
-- Name: Level level_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Level"
    ADD CONSTRAINT level_pk PRIMARY KEY ("ID");


--
-- Name: Number number_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Number"
    ADD CONSTRAINT number_pk PRIMARY KEY ("ID");


--
-- Name: Permision permision_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permision"
    ADD CONSTRAINT permision_pk PRIMARY KEY ("ID");


--
-- Name: Post post_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_pk PRIMARY KEY ("ID");


--
-- Name: Shedule shedule_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shedule"
    ADD CONSTRAINT shedule_pk PRIMARY KEY ("ID");


--
-- Name: SheduleLesson shedulelesson_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleLesson"
    ADD CONSTRAINT shedulelesson_pk PRIMARY KEY ("LessonID", "SheduleID");


--
-- Name: SheduleWorkerPermision sheduleworkerpermision_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleWorkerPermision"
    ADD CONSTRAINT sheduleworkerpermision_pk PRIMARY KEY ("SheduleID", "WorkerID", "PermisionID");


--
-- Name: Speciality speciality_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Speciality"
    ADD CONSTRAINT speciality_pk PRIMARY KEY ("ID");


--
-- Name: Specialization specialization_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Specialization"
    ADD CONSTRAINT specialization_pk PRIMARY KEY ("ID");


--
-- Name: Subgroup subgroup_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subgroup"
    ADD CONSTRAINT subgroup_pk PRIMARY KEY ("ID");


--
-- Name: SubgroupFlow subgroupflow_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubgroupFlow"
    ADD CONSTRAINT subgroupflow_pk PRIMARY KEY ("SubgroupID", "FlowID");


--
-- Name: Subject subject_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT subject_pk PRIMARY KEY ("ID");


--
-- Name: SubjectControlForm subjectcontrolform_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlForm"
    ADD CONSTRAINT subjectcontrolform_pk PRIMARY KEY ("ID");


--
-- Name: SubjectControlFormTeacherPost subjectcontrolformteacherpost_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlFormTeacherPost"
    ADD CONSTRAINT subjectcontrolformteacherpost_pk PRIMARY KEY ("ID");


--
-- Name: SubjectLessonType subjectlessontype_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonType"
    ADD CONSTRAINT subjectlessontype_pk PRIMARY KEY ("ID");


--
-- Name: SubjectLessonTypeTeacherPost subjectlessontypeteacherpost_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonTypeTeacherPost"
    ADD CONSTRAINT subjectlessontypeteacherpost_pk PRIMARY KEY ("ID");


--
-- Name: Teacher teacher_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT teacher_pk PRIMARY KEY ("ID");


--
-- Name: TeacherChair teacherchair_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeacherChair"
    ADD CONSTRAINT teacherchair_pk PRIMARY KEY ("TeacherID", "ChairID");


--
-- Name: TeacherPost teacherpost_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeacherPost"
    ADD CONSTRAINT teacherpost_pk PRIMARY KEY ("ID");


--
-- Name: TecherCalendar techercalendar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TecherCalendar"
    ADD CONSTRAINT techercalendar_pk PRIMARY KEY ("TecherID", "CalendarID");


--
-- Name: Time time_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Time"
    ADD CONSTRAINT time_pk PRIMARY KEY ("ID");


--
-- Name: Week week_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Week"
    ADD CONSTRAINT week_pk PRIMARY KEY ("ID");


--
-- Name: Worker worker_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Worker"
    ADD CONSTRAINT worker_pk PRIMARY KEY ("ID");


--
-- Name: AudienceCalendar AudienceCalendar_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AudienceCalendar"
    ADD CONSTRAINT "AudienceCalendar_fk0" FOREIGN KEY ("AudienceID") REFERENCES public."Audience"("ID");


--
-- Name: AudienceCalendar AudienceCalendar_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AudienceCalendar"
    ADD CONSTRAINT "AudienceCalendar_fk1" FOREIGN KEY ("CalendarID") REFERENCES public."Calendar"("ID");


--
-- Name: Chair Chair_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Chair"
    ADD CONSTRAINT "Chair_fk0" FOREIGN KEY ("FacultyID") REFERENCES public."Faculty"("ID");


--
-- Name: GroupCalendar GroupCalendar_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GroupCalendar"
    ADD CONSTRAINT "GroupCalendar_fk0" FOREIGN KEY ("GroupID") REFERENCES public."Group"("ID");


--
-- Name: GroupCalendar GroupCalendar_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GroupCalendar"
    ADD CONSTRAINT "GroupCalendar_fk1" FOREIGN KEY ("CalendarID") REFERENCES public."Calendar"("ID");


--
-- Name: Group Group_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "Group_fk0" FOREIGN KEY ("LevelID") REFERENCES public."Level"("ID");


--
-- Name: Group Group_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "Group_fk1" FOREIGN KEY ("CourceID") REFERENCES public."Cource"("ID");


--
-- Name: Group Group_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "Group_fk2" FOREIGN KEY ("SpecialityID") REFERENCES public."Speciality"("ID");


--
-- Name: LessonCheckpoint LessonCheckpoint_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LessonCheckpoint"
    ADD CONSTRAINT "LessonCheckpoint_fk0" FOREIGN KEY ("LessonID") REFERENCES public."Lesson"("ID");


--
-- Name: LessonCheckpoint LessonCheckpoint_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LessonCheckpoint"
    ADD CONSTRAINT "LessonCheckpoint_fk1" FOREIGN KEY ("CheckpointID") REFERENCES public."Checkpoint"("ID");


--
-- Name: Lesson Lesson_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lesson"
    ADD CONSTRAINT "Lesson_fk0" FOREIGN KEY ("AudienceID") REFERENCES public."Audience"("ID");


--
-- Name: Lesson Lesson_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lesson"
    ADD CONSTRAINT "Lesson_fk1" FOREIGN KEY ("FlowID") REFERENCES public."Flow"("ID");


--
-- Name: Lesson Lesson_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lesson"
    ADD CONSTRAINT "Lesson_fk2" FOREIGN KEY ("SubjectLessonTypeTeacherPostID") REFERENCES public."SubjectLessonTypeTeacherPost"("ID");


--
-- Name: Lesson Lesson_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lesson"
    ADD CONSTRAINT "Lesson_fk3" FOREIGN KEY ("TimeID") REFERENCES public."Time"("ID");


--
-- Name: SheduleLesson SheduleLesson_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleLesson"
    ADD CONSTRAINT "SheduleLesson_fk0" FOREIGN KEY ("LessonID") REFERENCES public."Lesson"("ID");


--
-- Name: SheduleLesson SheduleLesson_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleLesson"
    ADD CONSTRAINT "SheduleLesson_fk1" FOREIGN KEY ("SheduleID") REFERENCES public."Shedule"("ID");


--
-- Name: SheduleWorkerPermision SheduleWorkerPermision_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleWorkerPermision"
    ADD CONSTRAINT "SheduleWorkerPermision_fk0" FOREIGN KEY ("SheduleID") REFERENCES public."Shedule"("ID");


--
-- Name: SheduleWorkerPermision SheduleWorkerPermision_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleWorkerPermision"
    ADD CONSTRAINT "SheduleWorkerPermision_fk1" FOREIGN KEY ("WorkerID") REFERENCES public."Worker"("ID");


--
-- Name: SheduleWorkerPermision SheduleWorkerPermision_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SheduleWorkerPermision"
    ADD CONSTRAINT "SheduleWorkerPermision_fk2" FOREIGN KEY ("PermisionID") REFERENCES public."Permision"("ID");


--
-- Name: SubgroupFlow SubgroupFlow_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubgroupFlow"
    ADD CONSTRAINT "SubgroupFlow_fk0" FOREIGN KEY ("SubgroupID") REFERENCES public."Subgroup"("ID");


--
-- Name: SubgroupFlow SubgroupFlow_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubgroupFlow"
    ADD CONSTRAINT "SubgroupFlow_fk1" FOREIGN KEY ("FlowID") REFERENCES public."Flow"("ID");


--
-- Name: Subgroup Subgroup_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subgroup"
    ADD CONSTRAINT "Subgroup_fk0" FOREIGN KEY ("GroupID") REFERENCES public."Group"("ID");


--
-- Name: Subgroup Subgroup_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subgroup"
    ADD CONSTRAINT "Subgroup_fk1" FOREIGN KEY ("SpecializationID") REFERENCES public."Specialization"("ID");


--
-- Name: SubjectControlFormTeacherPost SubjectControlFormTeacherPost_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlFormTeacherPost"
    ADD CONSTRAINT "SubjectControlFormTeacherPost_fk0" FOREIGN KEY ("SubjectControlFormID") REFERENCES public."SubjectControlForm"("ID");


--
-- Name: SubjectControlFormTeacherPost SubjectControlFormTeacherPost_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlFormTeacherPost"
    ADD CONSTRAINT "SubjectControlFormTeacherPost_fk1" FOREIGN KEY ("TeacherPostID") REFERENCES public."TeacherPost"("ID");


--
-- Name: SubjectControlForm SubjectControlForm_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlForm"
    ADD CONSTRAINT "SubjectControlForm_fk0" FOREIGN KEY ("SubjectID") REFERENCES public."Subject"("ID");


--
-- Name: SubjectControlForm SubjectControlForm_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectControlForm"
    ADD CONSTRAINT "SubjectControlForm_fk1" FOREIGN KEY ("ControlFormID") REFERENCES public."ControlForm"("ID");


--
-- Name: SubjectLessonTypeTeacherPost SubjectLessonTypeTeacherPost_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonTypeTeacherPost"
    ADD CONSTRAINT "SubjectLessonTypeTeacherPost_fk0" FOREIGN KEY ("SubjectLessonTypeID") REFERENCES public."SubjectLessonType"("ID");


--
-- Name: SubjectLessonTypeTeacherPost SubjectLessonTypeTeacherPost_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonTypeTeacherPost"
    ADD CONSTRAINT "SubjectLessonTypeTeacherPost_fk1" FOREIGN KEY ("TeacherPostID") REFERENCES public."TeacherPost"("ID");


--
-- Name: SubjectLessonType SubjectLessonType_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonType"
    ADD CONSTRAINT "SubjectLessonType_fk0" FOREIGN KEY ("SubjectID") REFERENCES public."Subject"("ID");


--
-- Name: SubjectLessonType SubjectLessonType_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubjectLessonType"
    ADD CONSTRAINT "SubjectLessonType_fk1" FOREIGN KEY ("LessonTypeID") REFERENCES public."LessonType"("ID");


--
-- Name: TeacherChair TeacherChair_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeacherChair"
    ADD CONSTRAINT "TeacherChair_fk0" FOREIGN KEY ("TeacherID") REFERENCES public."Teacher"("ID");


--
-- Name: TeacherPost TeacherPost_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeacherPost"
    ADD CONSTRAINT "TeacherPost_fk0" FOREIGN KEY ("TeacherID") REFERENCES public."Teacher"("ID");


--
-- Name: TeacherPost TeacherPost_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TeacherPost"
    ADD CONSTRAINT "TeacherPost_fk1" FOREIGN KEY ("PostID") REFERENCES public."Post"("ID");


--
-- Name: TecherCalendar TecherCalendar_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TecherCalendar"
    ADD CONSTRAINT "TecherCalendar_fk0" FOREIGN KEY ("TecherID") REFERENCES public."Teacher"("ID");


--
-- Name: TecherCalendar TecherCalendar_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TecherCalendar"
    ADD CONSTRAINT "TecherCalendar_fk1" FOREIGN KEY ("CalendarID") REFERENCES public."Calendar"("ID");


--
-- Name: Time Time_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Time"
    ADD CONSTRAINT "Time_fk0" FOREIGN KEY ("WeekID") REFERENCES public."Week"("ID");


--
-- Name: Time Time_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Time"
    ADD CONSTRAINT "Time_fk1" FOREIGN KEY ("DayID") REFERENCES public."Day"("ID");


--
-- Name: Time Time_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Time"
    ADD CONSTRAINT "Time_fk2" FOREIGN KEY ("NumberID") REFERENCES public."Number"("ID");


--
-- PostgreSQL database dump complete
--

