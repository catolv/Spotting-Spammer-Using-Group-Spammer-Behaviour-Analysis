PGDMP     !                     x            fyp    11.5    11.2 s    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16575    fyp    DATABASE     �   CREATE DATABASE fyp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Pakistan.1252' LC_CTYPE = 'English_Pakistan.1252';
    DROP DATABASE fyp;
             postgres    false            �            1259    16828 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16826    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16838    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16836    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16820    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16818    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16846 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    16856    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    16854    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    16844    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16864    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    16862 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    16924    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false            �            1259    16922    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    16810    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16808    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16799    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16797    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16955    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16967    store_product    TABLE       CREATE TABLE public.store_product (
    id integer NOT NULL,
    "ProductName" character varying(100) NOT NULL,
    "Category" character varying(100) NOT NULL,
    "Price" integer NOT NULL,
    img character varying(100) NOT NULL,
    "Description" character varying(300) NOT NULL
);
 !   DROP TABLE public.store_product;
       public         postgres    false            �            1259    16965    store_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_product_id_seq;
       public       postgres    false    216            �           0    0    store_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_product_id_seq OWNED BY public.store_product.id;
            public       postgres    false    215            �            1259    16975    store_review    TABLE     V  CREATE TABLE public.store_review (
    id integer NOT NULL,
    "ReviewerID_id" integer NOT NULL,
    date character varying(50) NOT NULL,
    prod_id integer NOT NULL,
    rating integer NOT NULL,
    "ReviewDesc" character varying(1000) NOT NULL,
    "Spam" character varying(1000) NOT NULL,
    "Stats" character varying(1000) NOT NULL
);
     DROP TABLE public.store_review;
       public         postgres    false            �            1259    16973    store_review_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.store_review_id_seq;
       public       postgres    false    218            �           0    0    store_review_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.store_review_id_seq OWNED BY public.store_review.id;
            public       postgres    false    217            �
           2604    16831    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16841    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    16823    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16849    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    16859    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16867    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    16927    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    16813    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16802    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    17004    store_product id    DEFAULT     t   ALTER TABLE ONLY public.store_product ALTER COLUMN id SET DEFAULT nextval('public.store_product_id_seq'::regclass);
 ?   ALTER TABLE public.store_product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    16978    store_review id    DEFAULT     r   ALTER TABLE ONLY public.store_review ALTER COLUMN id SET DEFAULT nextval('public.store_review_id_seq'::regclass);
 >   ALTER TABLE public.store_review ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            �          0    16828 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   V�       �          0    16838    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   s�       �          0    16820    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       �          0    16846 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   �       �          0    16856    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ^�       �          0    16864    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   {�       �          0    16924    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ��       �          0    16810    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   8�       �          0    16799    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    16955    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   �       �          0    16967    store_product 
   TABLE DATA               c   COPY public.store_product (id, "ProductName", "Category", "Price", img, "Description") FROM stdin;
    public       postgres    false    216   �       �          0    16975    store_review 
   TABLE DATA               q   COPY public.store_review (id, "ReviewerID_id", date, prod_id, rating, "ReviewDesc", "Spam", "Stats") FROM stdin;
    public       postgres    false    218   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 22, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
            public       postgres    false    196            �           0    0    store_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_product_id_seq', 4, true);
            public       postgres    false    215            �           0    0    store_review_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.store_review_id_seq', 148, true);
            public       postgres    false    217            �
           2606    16953    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    16890 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    16843 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    16833    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    16876 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    16825 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �
           2606    16861 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �
           2606    16905 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    16851    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �
           2606    16869 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            �
           2606    16919 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    16947     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �
           2606    16933 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    16817 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    16815 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    16807 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            �
           2606    16962 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214            �
           2606    17006     store_product store_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_pkey;
       public         postgres    false    216                       2606    16983    store_review store_review_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.store_review
    ADD CONSTRAINT store_review_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.store_review DROP CONSTRAINT store_review_pkey;
       public         postgres    false    218            �
           1259    16954    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    16891 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    16892 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    16877 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    16907 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �
           1259    16906 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �
           1259    16921 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            �
           1259    16920 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    16948     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �
           1259    16944 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            �
           1259    16945 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            �
           1259    16964 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214            �
           1259    16963 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214                        1259    16998 #   store_review_ReviewerID_id_87bb0124    INDEX     i   CREATE INDEX "store_review_ReviewerID_id_87bb0124" ON public.store_review USING btree ("ReviewerID_id");
 9   DROP INDEX public."store_review_ReviewerID_id_87bb0124";
       public         postgres    false    218                       2606    16884 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    2777    205                       2606    16879 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    205    2782                       2606    16870 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2772    199    201                       2606    16899 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2782    203    209                       2606    16894 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    2790    207            	           2606    16913 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2777    201    211                       2606    16908 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2790    207    211            
           2606    16934 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    2772    213                       2606    16939 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    207    2790    213                       2606    16999 @   store_review store_review_ReviewerID_id_87bb0124_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_review
    ADD CONSTRAINT "store_review_ReviewerID_id_87bb0124_fk_auth_user_id" FOREIGN KEY ("ReviewerID_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.store_review DROP CONSTRAINT "store_review_ReviewerID_id_87bb0124_fk_auth_user_id";
       public       postgres    false    207    2790    218            �      x������ � �      �      x������ � �      �   h  x�e�Kn�0@��)8A5�?�^c�
AD�����ۗ8Nl3�8~R��g�g7g�0d�[��ߕQ���a�w�h.U 5ا�9.U�;�?��1U�q�/T2a�5wI � �p�Ġ2-y$4p�XX�
�a�6�w���ͻ��ȃ�U
0��"�=�1���^��s�Q���q݈��'Q�Ț�8vD5Ԓu?ӶMˬ��S�ЦIq2V��(��1.�����1�d:��XU�pֹH>�Q�{DP{@�T���?݀�?�\d�[|> �q�� ��qO�%��/�~~]��V�Z0�+��F!���/<�	�%�AW�T�f÷�A']��Aτ��	C����	��<>������]      �   F  x�}�[��H���O�o���P$���-�w[��$TTn
�>��v��v;K����� yJ�j��>l]D� )(/��rMC]>���oc�,�ݑ1e�@�}�������1�n1�<��O?O�'����O��� ��Xr�pb`�\�Yz\��*��u�so�
)n�[<Ȝ���Y�Pjʋ���L�N����mﰾ4?���ڵ��P U �Ld�*���E��
����bcR]�b8f�ķ��b7�Og5B��n9S��fbG�[?ge����>�DE�e�@��e��dB��#L��9�҂{��槲��W�F��8;��ﯬ��a
> [/���p_20����B����;v�"
��q	�<;��nX��(w���_g���0���������PI��K�}}���Ų���3�#����SOP��nm�x�j��D|s��1"���1W�Yh��^���B
�
 "g2�w������E����
a���0h���W��d>ǯhe�<Z�����s���g����W=^�l|C�Fh�~)��])��_tPV0U(2�7�Fe�.33$��
��j`�;���n��v�[h�׶�s�/�y㠁w򡃰��PIC
�"��;n��Kb�sw�g\�k�~$.��[��(r���o`����9r[x������qk��,yј�[���Ӟ�]�[�2o��I��n>��� 
 
f"`0~/��[><�(�$�t��Ǵ��L�#e�U�ɴ�pi���)�٭/z��
���l�L3+l���i�9HUk#�1��+9�*���o�oǘyBJ
�
�L�G�=�n��قLq�.�1���\�4[*�X�UD���q1�M��O�4lWV^@�;��-y{(�]I%��h�˰��r���_��]r*K�8�éΚ~�����OF�_����c�����T�Ggʼ����%���M�})8�ߤ��B�*p�1�x�s�C]�ˣ�����m�"��ۤ#���n8M�N��_�<A"*�t�Q�z��3�7�%/������M?&��q̂t��RZv�$2�$��R�;�������{�������	�����)>??���      �      x������ � �      �      x������ � �      �   �  x����n�@�k�)V	-���!#��B1i[>_)�{��!\Q� ,v��+�K�K�5QNB�P��Њ���Ƕ�ӽ�Ͽﺫ����Z}6����&՟__��4eiubA$�,����{8�s4��94�wQ�����}���c�`F��?A��z$�#�j�Ē �J$�٤�G]�n�nFXs������j��7�zO����j�I$at�z�0�?���G�)*�]DUܓ%s��C��LH	�S�0feP��`�q���`�~d�%�l�SXHhN�@+���2'�������11-i:K�	� �w�| =A;5+�����03ȥże |�u��ɗ�M N��|!�
��yt��A�J!���~�h�R�"�Z9�7���3��-����Gl      �   o   x�U�Q
�@����a
�ֶw�E4�n�$[��J��o����2%�.���a�o�公xP�M!�(=G�Oj��X�`$�ڟ^%'�vd��7�}�|Ilg�Cƿ����
��65      �   X  x���I��0E��)�,Tg�% A،���hpڷIْ���h#����"�8w���i��~,  mh�\]�9�9�<�� +!J���@���������L��]�оCd�5p��7�l�]c��n�t7o��;�.�]���@'��lsDκ������՞?�p���%��R=�<^��ƶ��*-��dRk}d]=���~h�8�D	�����o��]���ҫ�=T��q�~g1DB&�Y%�U�9M�O��	�DR ����8��C\�\�o�1��\1�j����s�rs�6u�#Qe�+��(�t�G�����M�0�������讻�u����V��-�%�Q1�[F��̗����q�U�Bx��C7���hd���A;��!o�������~=�H��C�|��p��	MbY�.Ƹ�=#�Tza���r$ I�J�p�����;I��,��2�'��Ʃ#���bq �Q�p�q|�-�IG.Ă#�@�ǁ�@ǳ���3M���G�Ȟ�#�tD�RS��e��m�\S_�xB����'���A�P�S)��{��*��[��ػf��D)v�/q�*_,$6N?cS��[`:���9��*edA���gy8�� ��      �   �  x��O��8��Ϋ��FӖ�dA3��V��^�P����&s��ﺧMhHʷ��~�?ݥ���F�e�ss�uͳ��i#�4M'|̈X�+΂^���n��LS���C1�A�vC�:^��}:^�b��6A �S��,@�g6qm��ȋ�j���nn�W��G^~f2���O}1�2 �������{�r���Wt,��������HrK)��Կ8a��a���(��l��
u�o����R��.��m�rN5�)" SM���0_��?�ߣ;K�Z$Â'�*R�U_�SW��6Y��@�P���ͽ���☳�ci�rM"���+�l��j����kװC`
�ٯ���,g� �A��]?�٣�2ܡ+R��9�n�O�{ܔ[N8�I�hcV���~�2�1f~YMO�@�ܚX"B�/�����q��#Fk��+�J�[b�V�5�82ʖ����x�,oD����{��p=�f��:����Ug]��VW��ϻ����y�u��vS���zE�a�ݙ��9��;U�B.�Y:��랁GY��'�䖏��DȐбQB���E���c�2���~���4��
��J.k��_���Տ�g�.e��Ǉ������$����G�iBS�m�`]r�դjS},L���3��T�:=��B���m8�Oc����wX0�s�L��I�q�.c��q���;4�Î����"��������_�z      �   �  x�]SK��F]�N��J��cG�.�7N%����CB$�f7�)��
9Rʗ2���NVD�<����N�����/SX�K�ʺV#7ᇏSB�8��F�A[:i�����j��󤋻��նڔ���.�G�.�B�c��z<�P=��f��o2A���N�UQ��y�K2ܰK�N{�'c`$n��f ��qQU�m{⦇��؝�k���rs����]QW{]Ѷ����*�5�o˺���ݠ�Щ����:� D4fC2����w�4/�pD��yρ0�4=Q 	�g[�ư�WN�� �p��{��	[i�F�=���83�=ɬ���;��
N���=}J�h���$)�((D< ���e�R��^T/���p󛳂��B���ƥ�F�׻����@V����4�C]nn'1/�^�x��G����c�~���p�>��?��Ο���g)/�y�خ���C�\�!�$����dE����
�G����8����Z��������n���ٵ�4'���٬����� g'�mӻ#�>�t��l�
(6�,q�GY��H�HbH��K�:a�E��o�+>.շXm�b���?���z��*!�̕h�0�Ef:�����?D�a�+��,x!#+w^N%I
�wn�T܁&v��bJj���^,_h)��      �     x��=o�8�k�W�V�8�$kw�"���H�ĥJI�)R��_/��cFp��R�B��<��������E�����E��n��h��eGFS_�R?���G&��>$aR�88���W�0����'͏l�Γ�&��9�}
aY8(�QxjEp�y"oH�$�yac���:L���<-B���0�įOM���
�:�f%ZFZx�Qj�;Oْ���d�g1ew�E_����n�	��O�����B�����E�!Y˒��uM8*ţ���f�J��X�"���-1��(e��x�;�
o�[K2��T|��G�K,#RxN�F�%*X�{}�2���l��v��x���u>-X����S�G�[�~K�t'��kv��7̳��>��n@g����hϰ}��T�J���YY��1wYP蝒��5˧'�Y���b%�V;Ϣ�M��[co����s��[ ��>�g^��O�g���v�h������g�ϕk���@kY�C<�%*�d��e�
�� l���8MЉ��z��'		ڑ���5!l��a:��b�/Żh�/~G]�j8��O��S:����ȋ�<�Rp�Ǜ0���)�4P\m<.�`�ۨz�.���,ٽ`�^���-�
gt{��d_+u�۬*O���%�� �Ѧ��6].�̄�p-��4d@�?A����J֝:�D�"��[v#56N���X���]~��˹8ь�Q'$��n�͆��|�D<>T��cq��Z�z�q+�2�w=�xJ�j��ggg�귫     