PGDMP     '    -    
            w            Artemis    11.4 (Debian 11.4-1.pgdg90+1)    11.4 (Debian 11.4-1.pgdg90+1) j    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16384    Artemis    DATABASE     {   CREATE DATABASE "Artemis" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_VE.UTF-8' LC_CTYPE = 'es_VE.UTF-8';
    DROP DATABASE "Artemis";
             postgres    false            �            1259    16582 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16580    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16592    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16590    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16574    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16572    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16695    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    16693    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    213            �            1259    16564    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16562    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16553    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16551    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16717    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16642    usuario_tipo_usuario    TABLE     �   CREATE TABLE public.usuario_tipo_usuario (
    codigo character varying(8) NOT NULL,
    tipo_usuario character varying(10) NOT NULL,
    descripcion character varying(20) NOT NULL
);
 (   DROP TABLE public.usuario_tipo_usuario;
       public         postgres    false            �            1259    16623    usuario_user    TABLE     �  CREATE TABLE public.usuario_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    city text NOT NULL,
    location character varying(30) NOT NULL,
    birth_date date,
    phone character varying(20),
    last_access timestamp with time zone NOT NULL,
    type_u_id character varying(8)
);
     DROP TABLE public.usuario_user;
       public         postgres    false            �            1259    16636    usuario_user_groups    TABLE     �   CREATE TABLE public.usuario_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 '   DROP TABLE public.usuario_user_groups;
       public         postgres    false            �            1259    16634    usuario_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.usuario_user_groups_id_seq;
       public       postgres    false    209            �           0    0    usuario_user_groups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.usuario_user_groups_id_seq OWNED BY public.usuario_user_groups.id;
            public       postgres    false    208            �            1259    16621    usuario_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuario_user_id_seq;
       public       postgres    false    207            �           0    0    usuario_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuario_user_id_seq OWNED BY public.usuario_user.id;
            public       postgres    false    206            �            1259    16650    usuario_user_user_permissions    TABLE     �   CREATE TABLE public.usuario_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 1   DROP TABLE public.usuario_user_user_permissions;
       public         postgres    false            �            1259    16648 $   usuario_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.usuario_user_user_permissions_id_seq;
       public       postgres    false    212            �           0    0 $   usuario_user_user_permissions_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.usuario_user_user_permissions_id_seq OWNED BY public.usuario_user_user_permissions.id;
            public       postgres    false    211            �
           2604    16585    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    16595    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    16577    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    16698    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214            �
           2604    16567    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16556    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16626    usuario_user id    DEFAULT     r   ALTER TABLE ONLY public.usuario_user ALTER COLUMN id SET DEFAULT nextval('public.usuario_user_id_seq'::regclass);
 >   ALTER TABLE public.usuario_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    16639    usuario_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.usuario_user_groups ALTER COLUMN id SET DEFAULT nextval('public.usuario_user_groups_id_seq'::regclass);
 E   ALTER TABLE public.usuario_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16653     usuario_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.usuario_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuario_user_user_permissions_id_seq'::regclass);
 O   ALTER TABLE public.usuario_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212            �          0    16582 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       �          0    16592    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ԍ       �          0    16574    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   �       �          0    16695    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    214   6�       �          0    16564    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   �       �          0    16553    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    16717    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    215   S�       �          0    16642    usuario_tipo_usuario 
   TABLE DATA               Q   COPY public.usuario_tipo_usuario (codigo, tipo_usuario, descripcion) FROM stdin;
    public       postgres    false    210   q�       �          0    16623    usuario_user 
   TABLE DATA               �   COPY public.usuario_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, city, location, birth_date, phone, last_access, type_u_id) FROM stdin;
    public       postgres    false    207   �       �          0    16636    usuario_user_groups 
   TABLE DATA               D   COPY public.usuario_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    16650    usuario_user_user_permissions 
   TABLE DATA               S   COPY public.usuario_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    212   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
            public       postgres    false    200            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 17, true);
            public       postgres    false    213            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
            public       postgres    false    196            �           0    0    usuario_user_groups_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.usuario_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    usuario_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuario_user_id_seq', 8, true);
            public       postgres    false    206            �           0    0 $   usuario_user_user_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.usuario_user_user_permissions_id_seq', 1, false);
            public       postgres    false    211                       2606    16589    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203                       2606    16618 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205                       2606    16597 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            	           2606    16587    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203                       2606    16604 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201                       2606    16579 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            (           2606    16704 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    214            �
           2606    16571 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    16569 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    16561 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            ,           2606    16724 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    215                       2606    16646 .   usuario_tipo_usuario usuario_tipo_usuario_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.usuario_tipo_usuario
    ADD CONSTRAINT usuario_tipo_usuario_pkey PRIMARY KEY (codigo);
 X   ALTER TABLE ONLY public.usuario_tipo_usuario DROP CONSTRAINT usuario_tipo_usuario_pkey;
       public         postgres    false    210                       2606    16641 ,   usuario_user_groups usuario_user_groups_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.usuario_user_groups
    ADD CONSTRAINT usuario_user_groups_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.usuario_user_groups DROP CONSTRAINT usuario_user_groups_pkey;
       public         postgres    false    209                       2606    16668 F   usuario_user_groups usuario_user_groups_user_id_group_id_1b0807de_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user_groups
    ADD CONSTRAINT usuario_user_groups_user_id_group_id_1b0807de_uniq UNIQUE (user_id, group_id);
 p   ALTER TABLE ONLY public.usuario_user_groups DROP CONSTRAINT usuario_user_groups_user_id_group_id_1b0807de_uniq;
       public         postgres    false    209    209                       2606    16631    usuario_user usuario_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuario_user
    ADD CONSTRAINT usuario_user_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.usuario_user DROP CONSTRAINT usuario_user_pkey;
       public         postgres    false    207            !           2606    16690 Z   usuario_user_user_permissions usuario_user_user_permis_user_id_permission_id_d74a6945_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user_user_permissions
    ADD CONSTRAINT usuario_user_user_permis_user_id_permission_id_d74a6945_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.usuario_user_user_permissions DROP CONSTRAINT usuario_user_user_permis_user_id_permission_id_d74a6945_uniq;
       public         postgres    false    212    212            $           2606    16655 @   usuario_user_user_permissions usuario_user_user_permissions_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.usuario_user_user_permissions
    ADD CONSTRAINT usuario_user_user_permissions_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.usuario_user_user_permissions DROP CONSTRAINT usuario_user_user_permissions_pkey;
       public         postgres    false    212                       2606    16633 &   usuario_user usuario_user_username_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.usuario_user
    ADD CONSTRAINT usuario_user_username_key UNIQUE (username);
 P   ALTER TABLE ONLY public.usuario_user DROP CONSTRAINT usuario_user_username_key;
       public         postgres    false    207                       1259    16606    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            
           1259    16619 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205                       1259    16620 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205                        1259    16605 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            &           1259    16715 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    214            )           1259    16716 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    214            *           1259    16726 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    215            -           1259    16725 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    215                       1259    16671 )   usuario_tipo_usuario_codigo_d0447acb_like    INDEX     �   CREATE INDEX usuario_tipo_usuario_codigo_d0447acb_like ON public.usuario_tipo_usuario USING btree (codigo varchar_pattern_ops);
 =   DROP INDEX public.usuario_tipo_usuario_codigo_d0447acb_like;
       public         postgres    false    210                       1259    16670 %   usuario_user_groups_group_id_e313e18d    INDEX     i   CREATE INDEX usuario_user_groups_group_id_e313e18d ON public.usuario_user_groups USING btree (group_id);
 9   DROP INDEX public.usuario_user_groups_group_id_e313e18d;
       public         postgres    false    209                       1259    16669 $   usuario_user_groups_user_id_1df7a96d    INDEX     g   CREATE INDEX usuario_user_groups_user_id_1df7a96d ON public.usuario_user_groups USING btree (user_id);
 8   DROP INDEX public.usuario_user_groups_user_id_1df7a96d;
       public         postgres    false    209                       1259    16672    usuario_user_type_u_id_d03bca52    INDEX     ]   CREATE INDEX usuario_user_type_u_id_d03bca52 ON public.usuario_user USING btree (type_u_id);
 3   DROP INDEX public.usuario_user_type_u_id_d03bca52;
       public         postgres    false    207                       1259    16673 $   usuario_user_type_u_id_d03bca52_like    INDEX     v   CREATE INDEX usuario_user_type_u_id_d03bca52_like ON public.usuario_user USING btree (type_u_id varchar_pattern_ops);
 8   DROP INDEX public.usuario_user_type_u_id_d03bca52_like;
       public         postgres    false    207            "           1259    16692 4   usuario_user_user_permissions_permission_id_fae57acd    INDEX     �   CREATE INDEX usuario_user_user_permissions_permission_id_fae57acd ON public.usuario_user_user_permissions USING btree (permission_id);
 H   DROP INDEX public.usuario_user_user_permissions_permission_id_fae57acd;
       public         postgres    false    212            %           1259    16691 .   usuario_user_user_permissions_user_id_bfc8eb29    INDEX     {   CREATE INDEX usuario_user_user_permissions_user_id_bfc8eb29 ON public.usuario_user_user_permissions USING btree (user_id);
 B   DROP INDEX public.usuario_user_user_permissions_user_id_bfc8eb29;
       public         postgres    false    212                       1259    16656 #   usuario_user_username_53514836_like    INDEX     t   CREATE INDEX usuario_user_username_53514836_like ON public.usuario_user USING btree (username varchar_pattern_ops);
 7   DROP INDEX public.usuario_user_username_53514836_like;
       public         postgres    false    207            0           2606    16612 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2820    205    201            /           2606    16607 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    203    2825            .           2606    16598 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    2815    199            6           2606    16705 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2815    199    214            7           2606    16710 E   django_admin_log django_admin_log_user_id_c564eba6_fk_usuario_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuario_user_id FOREIGN KEY (user_id) REFERENCES public.usuario_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuario_user_id;
       public       postgres    false    207    214    2833            3           2606    16662 J   usuario_user_groups usuario_user_groups_group_id_e313e18d_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user_groups
    ADD CONSTRAINT usuario_user_groups_group_id_e313e18d_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.usuario_user_groups DROP CONSTRAINT usuario_user_groups_group_id_e313e18d_fk_auth_group_id;
       public       postgres    false    209    2825    203            2           2606    16657 K   usuario_user_groups usuario_user_groups_user_id_1df7a96d_fk_usuario_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user_groups
    ADD CONSTRAINT usuario_user_groups_user_id_1df7a96d_fk_usuario_user_id FOREIGN KEY (user_id) REFERENCES public.usuario_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.usuario_user_groups DROP CONSTRAINT usuario_user_groups_user_id_1df7a96d_fk_usuario_user_id;
       public       postgres    false    207    2833    209            1           2606    16728 K   usuario_user usuario_user_type_u_id_d03bca52_fk_usuario_tipo_usuario_codigo    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user
    ADD CONSTRAINT usuario_user_type_u_id_d03bca52_fk_usuario_tipo_usuario_codigo FOREIGN KEY (type_u_id) REFERENCES public.usuario_tipo_usuario(codigo) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.usuario_user DROP CONSTRAINT usuario_user_type_u_id_d03bca52_fk_usuario_tipo_usuario_codigo;
       public       postgres    false    207    210    2847            5           2606    16684 V   usuario_user_user_permissions usuario_user_user_pe_permission_id_fae57acd_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user_user_permissions
    ADD CONSTRAINT usuario_user_user_pe_permission_id_fae57acd_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.usuario_user_user_permissions DROP CONSTRAINT usuario_user_user_pe_permission_id_fae57acd_fk_auth_perm;
       public       postgres    false    212    201    2820            4           2606    16679 P   usuario_user_user_permissions usuario_user_user_pe_user_id_bfc8eb29_fk_usuario_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_user_user_permissions
    ADD CONSTRAINT usuario_user_user_pe_user_id_bfc8eb29_fk_usuario_u FOREIGN KEY (user_id) REFERENCES public.usuario_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.usuario_user_user_permissions DROP CONSTRAINT usuario_user_user_pe_user_id_bfc8eb29_fk_usuario_u;
       public       postgres    false    212    207    2833            �      x������ � �      �      x������ � �      �   5  x�]�]�� ��g8�'h
~��{�MS�5�Q�Mo�:��o2���6`�W7]�o?n
�G�����B�|u��DG������
������PT'ٰ�mVT�N:����[�����@ܽ���n��u��*�@m�"J���p���cK<����e�>�����٩
�8:&�T���}ͽY�b�7D�j@��M��şVW��8�t��΍�!���h�*%&���-��񨭸������b�N<n���&��0���[��^�@���'?��$�7!��v3�Ԣ��h���2ux      �   �  x������0�k�)��k���NW\,�qB�cK�dIB�N�@�<½�w��HH�������3E�Ps �@EM�e?Ԁd���_��0/Sۍ�����}n���[?7���9�>6���..�C����b[��3��Ne�š��.��궯o5M�ڮ���E��&,p��#�4�?/�Tw�m׷�q�`�5+w���u�2�A{���%HZ"�1��I�8�q��SL���w77n���V�	���v�0��tƖ������M�i\c)�P��)�i'n]�[�0! �\���_��Y��.��߂���� �4R@�ݦ�c.�.���+3fXQR@9�Da)ϫ������>]��q�B�P	��MҎCz'�R}N-0l'�&��H�M[��v�,��*MH�]� I�D)yDp�I�W��Ph�[Ff@)7��R��������G,'�%r�!����l�-cXU&O���;������	�FZ      �   e   x�M�Q
�@����a
�Z/#Ȣ�t7K�}��-VK�f>�{J�,������Pj1�d�*�;*[wт�^ZbKc��g�F����#5o�D�e��`H��xt >�/�      �   �  x����n� ������b��'ϲb6E�&�ھ��:Q�ʽ��p>�sf���R>..w�0~����Q���W�/����zI$]>~�OJj��3�Sw�dG��BRW��\��.�=E���
jl(.��K���ǩ�hF��7��S�(�
*	W���,n�>�A��J+�?R�Ҫ����Ti�rE�#"�\L�g��k۾0DF[(j��%���Ok-&S�f&AT�^�VȻ�dKL���ɸ�b2��ٞ�7�R�j/���6�ٱ��������A?B1��j(��y��ǽ��8Eh�Ҧ��O��\髆�5�Ƹ�>>�dyO��nCE��v��(�Pj��	�l����<��ڬ��ks�;�أ����|��^K�"�Ќ�#a���֙��ӂ�o�4<�%�H�WDi���?�]�J�      �     x�]�Mo�0 ��|�}MiA�d�E�YK`hi���BK���B?��e���?��z�dkT��u�Wh7�-����&BQ�Y�E��RM�d�2ϡ8KaT�q���0�Ɛ���گ�<�r�5"_w,���#����.��X�T��xN;�:�!qD���z����D��fT��C�����Y�H��q��_�[��n{��sܦg���~t���h��h�����I�1�lXqF/��>��	�?��/6X��ҁ3�yb;S�X_3˲~ ��h�      �   �   x�M��1�k{�L�ŵ�Q�X�E�ϑx)jF��0�?��~�9'8�$Ue��HLC;���^���*������41n��mݝ��l��'��������ڶ�0�PR��v��jt)�Q������0,�"g*m�����"� ��KS      �   �  x�}�Qo�0��o~Ex����PbiRV֪�Z��S��Lb�ؙ�J�_?����B)�����:��j�d�l�,�(#��m&t�,����l�N���}i��Xo&���������?�]��SR���#4듋>M�(��'l0�FY��$�h��9'i�n��^��3��8�t� ��=boϊb(j)���i�-�W�Jj�5F���U's������A�����#I�&����y<'T!��j/�d@{�,�����H��Xo�|!�UJ;�]�!W8��z���Ja�6�o��<%�K䃭�Vp��
�&�UW�e��>�Cy���٥]�����O1ӎf�Ӎ�p��i&����XT�[�ǰg����KJ�m������L�|-*X�Z�2��6�4�Z����%����٥E4���y�p��'#Jm�p����AUA�������mg�1�� ���� H      �      x������ � �      �      x������ � �     