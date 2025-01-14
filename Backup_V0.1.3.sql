toc.dat                                                                                             0000600 0004000 0002000 00000105374 14720746056 0014464 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                    
    |            IStock    17.1    17.1 e    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         r           1262    28657    IStock    DATABASE     {   CREATE DATABASE "IStock" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.1252';
    DROP DATABASE "IStock";
                     postgres    false         �            1259    40079    accesses    TABLE     �   CREATE TABLE public.accesses (
    access_id integer NOT NULL,
    access_name character varying(50) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.accesses;
       public         heap r       postgres    false         �            1259    40078    accesses_access_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accesses_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.accesses_access_id_seq;
       public               postgres    false    218         s           0    0    accesses_access_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.accesses_access_id_seq OWNED BY public.accesses.access_id;
          public               postgres    false    217         �            1259    40197    booking_types    TABLE       CREATE TABLE public.booking_types (
    "booking_type_ID" integer NOT NULL,
    name_booking_type character varying(25) NOT NULL,
    note_booking_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.booking_types;
       public         heap r       postgres    false         �            1259    40196 !   booking_types_booking_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."booking_types_booking_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."booking_types_booking_type_ID_seq";
       public               postgres    false    240         t           0    0 !   booking_types_booking_type_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."booking_types_booking_type_ID_seq" OWNED BY public.booking_types."booking_type_ID";
          public               postgres    false    239         �            1259    40155 	   customers    TABLE     �  CREATE TABLE public.customers (
    "customer_ID" integer NOT NULL,
    code_customer character varying(25) NOT NULL,
    name_customer character varying(50) NOT NULL,
    dealer_customer character varying(25),
    address_customer character varying(25),
    phone_customer character varying(15),
    note_customer character varying(100),
    use_customer boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.customers;
       public         heap r       postgres    false         �            1259    40154    customers_customer_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."customers_customer_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."customers_customer_ID_seq";
       public               postgres    false    228         u           0    0    customers_customer_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."customers_customer_ID_seq" OWNED BY public.customers."customer_ID";
          public               postgres    false    227         �            1259    40086 	   employees    TABLE       CREATE TABLE public.employees (
    "employee_ID" integer NOT NULL,
    code_employee character varying(25) NOT NULL,
    username character varying(50) NOT NULL,
    firstname_employee character varying(50) NOT NULL,
    lastname_employee character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    phone_employee character varying(15),
    "accessRights" integer NOT NULL,
    use_employee boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.employees;
       public         heap r       postgres    false         �            1259    40085    employees_employee_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."employees_employee_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."employees_employee_ID_seq";
       public               postgres    false    220         v           0    0    employees_employee_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."employees_employee_ID_seq" OWNED BY public.employees."employee_ID";
          public               postgres    false    219         �            1259    40183    issue_types    TABLE       CREATE TABLE public.issue_types (
    "issue_type_ID" integer NOT NULL,
    name_issue_type character varying(25) NOT NULL,
    note_issue_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.issue_types;
       public         heap r       postgres    false         �            1259    40182    issue_types_issue_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."issue_types_issue_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."issue_types_issue_type_ID_seq";
       public               postgres    false    236         w           0    0    issue_types_issue_type_ID_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."issue_types_issue_type_ID_seq" OWNED BY public.issue_types."issue_type_ID";
          public               postgres    false    235         �            1259    40205    main_products    TABLE     �  CREATE TABLE public.main_products (
    "Product_ID" integer NOT NULL,
    code_product character varying(25) NOT NULL,
    name_product character varying(100) NOT NULL,
    brand_product character varying(25) NOT NULL,
    lot_dealer_product character varying(25),
    amount_product character varying(25) NOT NULL,
    amount_serial character varying(25),
    group_product character varying(25) NOT NULL,
    unit_product character varying(25) NOT NULL,
    buy_price integer DEFAULT 0 NOT NULL,
    sell_price integer DEFAULT 0 NOT NULL,
    storage_location character varying(25) NOT NULL,
    use_serial boolean NOT NULL,
    use_lot boolean NOT NULL,
    use_product boolean NOT NULL,
    "MFG_Date" timestamp with time zone,
    "EXP_Date" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "receiveId" integer
);
 !   DROP TABLE public.main_products;
       public         heap r       postgres    false         �            1259    40204    main_products_Product_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."main_products_Product_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."main_products_Product_ID_seq";
       public               postgres    false    242         x           0    0    main_products_Product_ID_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."main_products_Product_ID_seq" OWNED BY public.main_products."Product_ID";
          public               postgres    false    241         �            1259    40169    payment_types    TABLE       CREATE TABLE public.payment_types (
    "payment_type_ID" integer NOT NULL,
    name_payment_type character varying(25) NOT NULL,
    note_payment_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.payment_types;
       public         heap r       postgres    false         �            1259    40168 !   payment_types_payment_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."payment_types_payment_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."payment_types_payment_type_ID_seq";
       public               postgres    false    232         y           0    0 !   payment_types_payment_type_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."payment_types_payment_type_ID_seq" OWNED BY public.payment_types."payment_type_ID";
          public               postgres    false    231         �            1259    40098    receive_types    TABLE       CREATE TABLE public.receive_types (
    "receive_type_ID" integer NOT NULL,
    name_receive_type character varying(25) NOT NULL,
    note_receive_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.receive_types;
       public         heap r       postgres    false         �            1259    40097 !   receive_types_receive_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."receive_types_receive_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."receive_types_receive_type_ID_seq";
       public               postgres    false    222         z           0    0 !   receive_types_receive_type_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."receive_types_receive_type_ID_seq" OWNED BY public.receive_types."receive_type_ID";
          public               postgres    false    221         �            1259    40112    receives    TABLE     �  CREATE TABLE public.receives (
    "receive_ID" integer NOT NULL,
    "document_No_receive" character varying(50) NOT NULL,
    note_receive character varying(255),
    "ref_No_receive" character varying(50),
    "delivery_No_receive" character varying(50),
    create_receive_by character varying(50),
    edit_receive_by character varying(50),
    status_receive character varying(20) NOT NULL,
    date_receive timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "employeeId" integer,
    "receiveTypeId" integer,
    "vendorId" integer,
    "approvedById" integer
);
    DROP TABLE public.receives;
       public         heap r       postgres    false         �            1259    40111    receives_receive_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."receives_receive_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."receives_receive_ID_seq";
       public               postgres    false    226         {           0    0    receives_receive_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."receives_receive_ID_seq" OWNED BY public.receives."receive_ID";
          public               postgres    false    225         �            1259    40176    return_types    TABLE       CREATE TABLE public.return_types (
    "return_type_ID" integer NOT NULL,
    name_return_type character varying(50) NOT NULL,
    note_return_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public.return_types;
       public         heap r       postgres    false         �            1259    40175    return_types_return_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."return_types_return_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."return_types_return_type_ID_seq";
       public               postgres    false    234         |           0    0    return_types_return_type_ID_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."return_types_return_type_ID_seq" OWNED BY public.return_types."return_type_ID";
          public               postgres    false    233         �            1259    40162    storage_areas    TABLE       CREATE TABLE public.storage_areas (
    "storage_area_ID" integer NOT NULL,
    location_storage_area character varying(25) NOT NULL,
    use_storage_area boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.storage_areas;
       public         heap r       postgres    false         �            1259    40161 !   storage_areas_storage_area_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."storage_areas_storage_area_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."storage_areas_storage_area_ID_seq";
       public               postgres    false    230         }           0    0 !   storage_areas_storage_area_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."storage_areas_storage_area_ID_seq" OWNED BY public.storage_areas."storage_area_ID";
          public               postgres    false    229         �            1259    40190    transfer_types    TABLE     �   CREATE TABLE public.transfer_types (
    "transfer_type_ID" integer NOT NULL,
    name_transfer_type character varying(50) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public.transfer_types;
       public         heap r       postgres    false         �            1259    40189 #   transfer_types_transfer_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."transfer_types_transfer_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."transfer_types_transfer_type_ID_seq";
       public               postgres    false    238         ~           0    0 #   transfer_types_transfer_type_ID_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."transfer_types_transfer_type_ID_seq" OWNED BY public.transfer_types."transfer_type_ID";
          public               postgres    false    237         �            1259    40105    vendors    TABLE     �  CREATE TABLE public.vendors (
    "vendor_ID" integer NOT NULL,
    code_vendor character varying(25) NOT NULL,
    name_vendor character varying(50) NOT NULL,
    dealer_vendor character varying(25),
    address_vendor character varying(25),
    phone_vendor character varying(15),
    note_vendor character varying(100),
    use_vendor boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.vendors;
       public         heap r       postgres    false         �            1259    40104    vendors_vendor_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."vendors_vendor_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."vendors_vendor_ID_seq";
       public               postgres    false    224                    0    0    vendors_vendor_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."vendors_vendor_ID_seq" OWNED BY public.vendors."vendor_ID";
          public               postgres    false    223         �           2604    40082    accesses access_id    DEFAULT     x   ALTER TABLE ONLY public.accesses ALTER COLUMN access_id SET DEFAULT nextval('public.accesses_access_id_seq'::regclass);
 A   ALTER TABLE public.accesses ALTER COLUMN access_id DROP DEFAULT;
       public               postgres    false    218    217    218         �           2604    40200    booking_types booking_type_ID    DEFAULT     �   ALTER TABLE ONLY public.booking_types ALTER COLUMN "booking_type_ID" SET DEFAULT nextval('public."booking_types_booking_type_ID_seq"'::regclass);
 N   ALTER TABLE public.booking_types ALTER COLUMN "booking_type_ID" DROP DEFAULT;
       public               postgres    false    240    239    240         �           2604    40158    customers customer_ID    DEFAULT     �   ALTER TABLE ONLY public.customers ALTER COLUMN "customer_ID" SET DEFAULT nextval('public."customers_customer_ID_seq"'::regclass);
 F   ALTER TABLE public.customers ALTER COLUMN "customer_ID" DROP DEFAULT;
       public               postgres    false    228    227    228         �           2604    40089    employees employee_ID    DEFAULT     �   ALTER TABLE ONLY public.employees ALTER COLUMN "employee_ID" SET DEFAULT nextval('public."employees_employee_ID_seq"'::regclass);
 F   ALTER TABLE public.employees ALTER COLUMN "employee_ID" DROP DEFAULT;
       public               postgres    false    220    219    220         �           2604    40186    issue_types issue_type_ID    DEFAULT     �   ALTER TABLE ONLY public.issue_types ALTER COLUMN "issue_type_ID" SET DEFAULT nextval('public."issue_types_issue_type_ID_seq"'::regclass);
 J   ALTER TABLE public.issue_types ALTER COLUMN "issue_type_ID" DROP DEFAULT;
       public               postgres    false    235    236    236         �           2604    40208    main_products Product_ID    DEFAULT     �   ALTER TABLE ONLY public.main_products ALTER COLUMN "Product_ID" SET DEFAULT nextval('public."main_products_Product_ID_seq"'::regclass);
 I   ALTER TABLE public.main_products ALTER COLUMN "Product_ID" DROP DEFAULT;
       public               postgres    false    242    241    242         �           2604    40172    payment_types payment_type_ID    DEFAULT     �   ALTER TABLE ONLY public.payment_types ALTER COLUMN "payment_type_ID" SET DEFAULT nextval('public."payment_types_payment_type_ID_seq"'::regclass);
 N   ALTER TABLE public.payment_types ALTER COLUMN "payment_type_ID" DROP DEFAULT;
       public               postgres    false    232    231    232         �           2604    40101    receive_types receive_type_ID    DEFAULT     �   ALTER TABLE ONLY public.receive_types ALTER COLUMN "receive_type_ID" SET DEFAULT nextval('public."receive_types_receive_type_ID_seq"'::regclass);
 N   ALTER TABLE public.receive_types ALTER COLUMN "receive_type_ID" DROP DEFAULT;
       public               postgres    false    222    221    222         �           2604    40115    receives receive_ID    DEFAULT     ~   ALTER TABLE ONLY public.receives ALTER COLUMN "receive_ID" SET DEFAULT nextval('public."receives_receive_ID_seq"'::regclass);
 D   ALTER TABLE public.receives ALTER COLUMN "receive_ID" DROP DEFAULT;
       public               postgres    false    226    225    226         �           2604    40179    return_types return_type_ID    DEFAULT     �   ALTER TABLE ONLY public.return_types ALTER COLUMN "return_type_ID" SET DEFAULT nextval('public."return_types_return_type_ID_seq"'::regclass);
 L   ALTER TABLE public.return_types ALTER COLUMN "return_type_ID" DROP DEFAULT;
       public               postgres    false    234    233    234         �           2604    40165    storage_areas storage_area_ID    DEFAULT     �   ALTER TABLE ONLY public.storage_areas ALTER COLUMN "storage_area_ID" SET DEFAULT nextval('public."storage_areas_storage_area_ID_seq"'::regclass);
 N   ALTER TABLE public.storage_areas ALTER COLUMN "storage_area_ID" DROP DEFAULT;
       public               postgres    false    229    230    230         �           2604    40193    transfer_types transfer_type_ID    DEFAULT     �   ALTER TABLE ONLY public.transfer_types ALTER COLUMN "transfer_type_ID" SET DEFAULT nextval('public."transfer_types_transfer_type_ID_seq"'::regclass);
 P   ALTER TABLE public.transfer_types ALTER COLUMN "transfer_type_ID" DROP DEFAULT;
       public               postgres    false    237    238    238         �           2604    40108    vendors vendor_ID    DEFAULT     z   ALTER TABLE ONLY public.vendors ALTER COLUMN "vendor_ID" SET DEFAULT nextval('public."vendors_vendor_ID_seq"'::regclass);
 B   ALTER TABLE public.vendors ALTER COLUMN "vendor_ID" DROP DEFAULT;
       public               postgres    false    223    224    224         T          0    40079    accesses 
   TABLE DATA           T   COPY public.accesses (access_id, access_name, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    218       4948.dat j          0    40197    booking_types 
   TABLE DATA           z   COPY public.booking_types ("booking_type_ID", name_booking_type, note_booking_type, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    240       4970.dat ^          0    40155 	   customers 
   TABLE DATA           �   COPY public.customers ("customer_ID", code_customer, name_customer, dealer_customer, address_customer, phone_customer, note_customer, use_customer, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    228       4958.dat V          0    40086 	   employees 
   TABLE DATA           �   COPY public.employees ("employee_ID", code_employee, username, firstname_employee, lastname_employee, password, phone_employee, "accessRights", use_employee, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    220       4950.dat f          0    40183    issue_types 
   TABLE DATA           r   COPY public.issue_types ("issue_type_ID", name_issue_type, note_issue_type, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    236       4966.dat l          0    40205    main_products 
   TABLE DATA           :  COPY public.main_products ("Product_ID", code_product, name_product, brand_product, lot_dealer_product, amount_product, amount_serial, group_product, unit_product, buy_price, sell_price, storage_location, use_serial, use_lot, use_product, "MFG_Date", "EXP_Date", "createdAt", "updatedAt", "receiveId") FROM stdin;
    public               postgres    false    242       4972.dat b          0    40169    payment_types 
   TABLE DATA           z   COPY public.payment_types ("payment_type_ID", name_payment_type, note_payment_type, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    232       4962.dat X          0    40098    receive_types 
   TABLE DATA           z   COPY public.receive_types ("receive_type_ID", name_receive_type, note_receive_type, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    222       4952.dat \          0    40112    receives 
   TABLE DATA             COPY public.receives ("receive_ID", "document_No_receive", note_receive, "ref_No_receive", "delivery_No_receive", create_receive_by, edit_receive_by, status_receive, date_receive, "createdAt", "updatedAt", "employeeId", "receiveTypeId", "vendorId", "approvedById") FROM stdin;
    public               postgres    false    226       4956.dat d          0    40176    return_types 
   TABLE DATA           v   COPY public.return_types ("return_type_ID", name_return_type, note_return_type, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    234       4964.dat `          0    40162    storage_areas 
   TABLE DATA           }   COPY public.storage_areas ("storage_area_ID", location_storage_area, use_storage_area, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    230       4960.dat h          0    40190    transfer_types 
   TABLE DATA           j   COPY public.transfer_types ("transfer_type_ID", name_transfer_type, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    238       4968.dat Z          0    40105    vendors 
   TABLE DATA           �   COPY public.vendors ("vendor_ID", code_vendor, name_vendor, dealer_vendor, address_vendor, phone_vendor, note_vendor, use_vendor, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    224       4954.dat �           0    0    accesses_access_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.accesses_access_id_seq', 1, false);
          public               postgres    false    217         �           0    0 !   booking_types_booking_type_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."booking_types_booking_type_ID_seq"', 1, false);
          public               postgres    false    239         �           0    0    customers_customer_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."customers_customer_ID_seq"', 10, true);
          public               postgres    false    227         �           0    0    employees_employee_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."employees_employee_ID_seq"', 1, true);
          public               postgres    false    219         �           0    0    issue_types_issue_type_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."issue_types_issue_type_ID_seq"', 10, true);
          public               postgres    false    235         �           0    0    main_products_Product_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."main_products_Product_ID_seq"', 4, true);
          public               postgres    false    241         �           0    0 !   payment_types_payment_type_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."payment_types_payment_type_ID_seq"', 6, true);
          public               postgres    false    231         �           0    0 !   receive_types_receive_type_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."receive_types_receive_type_ID_seq"', 8, true);
          public               postgres    false    221         �           0    0    receives_receive_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."receives_receive_ID_seq"', 23, true);
          public               postgres    false    225         �           0    0    return_types_return_type_ID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."return_types_return_type_ID_seq"', 1, false);
          public               postgres    false    233         �           0    0 !   storage_areas_storage_area_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."storage_areas_storage_area_ID_seq"', 8, true);
          public               postgres    false    229         �           0    0 #   transfer_types_transfer_type_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."transfer_types_transfer_type_ID_seq"', 8, true);
          public               postgres    false    237         �           0    0    vendors_vendor_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."vendors_vendor_ID_seq"', 9, true);
          public               postgres    false    223         �           2606    40084    accesses accesses_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.accesses
    ADD CONSTRAINT accesses_pkey PRIMARY KEY (access_id);
 @   ALTER TABLE ONLY public.accesses DROP CONSTRAINT accesses_pkey;
       public                 postgres    false    218         �           2606    40202     booking_types booking_types_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.booking_types
    ADD CONSTRAINT booking_types_pkey PRIMARY KEY ("booking_type_ID");
 J   ALTER TABLE ONLY public.booking_types DROP CONSTRAINT booking_types_pkey;
       public                 postgres    false    240         �           2606    40160    customers customers_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY ("customer_ID");
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    228         �           2606    40091    employees employees_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY ("employee_ID");
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public                 postgres    false    220         �           2606    40188    issue_types issue_types_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.issue_types
    ADD CONSTRAINT issue_types_pkey PRIMARY KEY ("issue_type_ID");
 F   ALTER TABLE ONLY public.issue_types DROP CONSTRAINT issue_types_pkey;
       public                 postgres    false    236         �           2606    40212     main_products main_products_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.main_products
    ADD CONSTRAINT main_products_pkey PRIMARY KEY ("Product_ID");
 J   ALTER TABLE ONLY public.main_products DROP CONSTRAINT main_products_pkey;
       public                 postgres    false    242         �           2606    40174     payment_types payment_types_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY ("payment_type_ID");
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public                 postgres    false    232         �           2606    40103     receive_types receive_types_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.receive_types
    ADD CONSTRAINT receive_types_pkey PRIMARY KEY ("receive_type_ID");
 J   ALTER TABLE ONLY public.receive_types DROP CONSTRAINT receive_types_pkey;
       public                 postgres    false    222         �           2606    40119    receives receives_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.receives
    ADD CONSTRAINT receives_pkey PRIMARY KEY ("receive_ID");
 @   ALTER TABLE ONLY public.receives DROP CONSTRAINT receives_pkey;
       public                 postgres    false    226         �           2606    40181    return_types return_types_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.return_types
    ADD CONSTRAINT return_types_pkey PRIMARY KEY ("return_type_ID");
 H   ALTER TABLE ONLY public.return_types DROP CONSTRAINT return_types_pkey;
       public                 postgres    false    234         �           2606    40167     storage_areas storage_areas_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.storage_areas
    ADD CONSTRAINT storage_areas_pkey PRIMARY KEY ("storage_area_ID");
 J   ALTER TABLE ONLY public.storage_areas DROP CONSTRAINT storage_areas_pkey;
       public                 postgres    false    230         �           2606    40195 "   transfer_types transfer_types_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.transfer_types
    ADD CONSTRAINT transfer_types_pkey PRIMARY KEY ("transfer_type_ID");
 L   ALTER TABLE ONLY public.transfer_types DROP CONSTRAINT transfer_types_pkey;
       public                 postgres    false    238         �           2606    40110    vendors vendors_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY ("vendor_ID");
 >   ALTER TABLE ONLY public.vendors DROP CONSTRAINT vendors_pkey;
       public                 postgres    false    224         �           2606    40092 %   employees employees_accessRights_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "employees_accessRights_fkey" FOREIGN KEY ("accessRights") REFERENCES public.accesses(access_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.employees DROP CONSTRAINT "employees_accessRights_fkey";
       public               postgres    false    218    4771    220         �           2606    40213 *   main_products main_products_receiveId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_products
    ADD CONSTRAINT "main_products_receiveId_fkey" FOREIGN KEY ("receiveId") REFERENCES public.receives("receive_ID") ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.main_products DROP CONSTRAINT "main_products_receiveId_fkey";
       public               postgres    false    242    4779    226         �           2606    40135 #   receives receives_approvedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_approvedById_fkey" FOREIGN KEY ("approvedById") REFERENCES public.employees("employee_ID") ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.receives DROP CONSTRAINT "receives_approvedById_fkey";
       public               postgres    false    4773    226    220         �           2606    40120 !   receives receives_employeeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES public.employees("employee_ID") ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.receives DROP CONSTRAINT "receives_employeeId_fkey";
       public               postgres    false    4773    226    220         �           2606    40125 $   receives receives_receiveTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_receiveTypeId_fkey" FOREIGN KEY ("receiveTypeId") REFERENCES public.receive_types("receive_type_ID") ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.receives DROP CONSTRAINT "receives_receiveTypeId_fkey";
       public               postgres    false    226    222    4775         �           2606    40130    receives receives_vendorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_vendorId_fkey" FOREIGN KEY ("vendorId") REFERENCES public.vendors("vendor_ID") ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.receives DROP CONSTRAINT "receives_vendorId_fkey";
       public               postgres    false    4777    226    224                                                                                                                                                                                                                                                                            4948.dat                                                                                            0000600 0004000 0002000 00000000174 14720746056 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	2024-04-08 00:00:00+07	2024-04-08 18:19:29.531+07
2	user	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
\.


                                                                                                                                                                                                                                                                                                                                                                                                    4970.dat                                                                                            0000600 0004000 0002000 00000000361 14720746056 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	จอง\n	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
2	จองแล้ว	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
3	กำลังจอง	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
\.


                                                                                                                                                                                                                                                                               4958.dat                                                                                            0000600 0004000 0002000 00000001604 14720746056 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	10	jo	jojo	oj30	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
2	01	mo	jojo	oj30	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
3	02	po	jojo	50	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
4	03	io	jojo	ppppp80	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
5	04	uo	jojo	iiiiii70	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
6	05	ko	jojo	tttttt44	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
7	06	yo	jojo	60k70	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
8	07	to	jojo	ertyui10	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
9	08	ro	jojo	oj30	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
10	09	eo	jojo	oj30	0625369755	\N	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
\.


                                                                                                                            4950.dat                                                                                            0000600 0004000 0002000 00000000500 14720746056 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0111	earth	narongchai	chobarsa	$2a$10$Jy47CtwYFRz3OTGzl3Zw7evbApm1r9TX1VGYmsHffGlf0WZqS5ep2	0624636047	1	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
2	0222	test	test	test	$2a$10$uZef/QoKXblU71qALYA7M.ZIl8w55f/33X97aLfjVqLG4FMt27zaq	0526253591	1	t	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
\.


                                                                                                                                                                                                4966.dat                                                                                            0000600 0004000 0002000 00000001377 14720746056 0014305 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ปัญหา1	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
2	ปัญหา2	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
3	ปัญหา3	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
4	ปัญหา4	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
5	ปัญหา5	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
6	ปัญหา6	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
7	ปัญหา7	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
8	ปัญหา8	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
9	ปัญหา9	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
10	ปัญหา10	\N	2024-04-08 18:19:29.531+07	2024-04-08 18:19:29.531+07
\.


                                                                                                                                                                                                                                                                 4972.dat                                                                                            0000600 0004000 0002000 00000001102 14720746056 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	01110	ระเบิด	m4a1	ak47	op89	kimson8	ระเบิด	อัน	10	999999	1	t	t	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2
3	01110	ระเบิด	m4a1	ak47	op89	kimson8	ระเบิด	อัน	10	999999	1	t	t	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	3
4	01110	ระเบิด	m4a1	ak47	op89	kimson8	ระเบิด	อัน	10	999999	1	t	t	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                              4962.dat                                                                                            0000600 0004000 0002000 00000000612 14720746056 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	จ่าย6	\N	2024-04-08 07:00:00+07	2024-04-08 07:00:00+07
2	จ่าย	\N	2024-04-08 07:00:00+07	2024-04-08 07:00:00+07
3	จ่าย2	\N	2024-04-08 07:00:00+07	2024-04-08 07:00:00+07
4	จ่าย3	\N	2024-04-08 07:00:00+07	2024-04-08 07:00:00+07
5	จ่าย4	\N	2024-04-08 07:00:00+07	2024-04-08 07:00:00+07
6	จ่าย5	\N	2024-04-08 07:00:00+07	2024-04-08 07:00:00+07
\.


                                                                                                                      4952.dat                                                                                            0000600 0004000 0002000 00000001076 14720746056 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	คืนนนนนนน	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
2	คืนแล้ว	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
3	คืนเลย	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
4	คืนยัง	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
5	คืนดี	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
6	คืนเหรอ	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
7	คือๆ	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
8	คืนบ้าง	\N	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                  4956.dat                                                                                            0000600 0004000 0002000 00000007017 14720746056 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:01.5+07	2024-11-22 16:51:01.5+07	1	1	1	1
3	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:02.648+07	2024-11-22 16:51:02.648+07	1	1	1	1
4	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:03.219+07	2024-11-22 16:51:03.219+07	1	1	1	1
5	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:03.649+07	2024-11-22 16:51:03.649+07	1	1	1	1
6	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:04.987+07	2024-11-22 16:51:04.987+07	1	1	1	1
7	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:05.403+07	2024-11-22 16:51:05.403+07	1	1	1	1
8	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:07.724+07	2024-11-22 16:51:07.724+07	1	1	1	1
9	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:08.238+07	2024-11-22 16:51:08.238+07	1	1	1	1
10	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:08.816+07	2024-11-22 16:51:08.816+07	1	1	1	1
11	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:09.452+07	2024-11-22 16:51:09.452+07	1	1	1	1
12	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:10.112+07	2024-11-22 16:51:10.112+07	1	1	1	1
13	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:10.762+07	2024-11-22 16:51:10.762+07	1	1	1	1
14	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:11.38+07	2024-11-22 16:51:11.38+07	1	1	1	1
15	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:11.972+07	2024-11-22 16:51:11.972+07	1	1	1	1
16	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:12.484+07	2024-11-22 16:51:12.484+07	1	1	1	1
17	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:12.985+07	2024-11-22 16:51:12.985+07	1	1	1	1
18	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:13.482+07	2024-11-22 16:51:13.482+07	1	1	1	1
19	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:13.967+07	2024-11-22 16:51:13.967+07	1	1	1	1
20	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:14.404+07	2024-11-22 16:51:14.404+07	1	1	1	1
21	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 16:51:15.137+07	2024-11-22 16:51:15.137+07	1	1	1	1
22	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 17:00:14.319+07	2024-11-22 17:00:14.319+07	1	1	1	1
23	DOC-12345	This is a sample note	REF-98765	DEL-54321	Unknown	Unknown	Pending	2024-04-08 07:00:00+07	2024-11-22 17:00:15.842+07	2024-11-22 17:00:15.842+07	1	1	1	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 4964.dat                                                                                            0000600 0004000 0002000 00000000005 14720746056 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4960.dat                                                                                            0000600 0004000 0002000 00000000645 14720746056 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
2	2	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
3	3	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
4	4	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
5	5	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
6	6	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
7	7	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
8	8	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
\.


                                                                                           4968.dat                                                                                            0000600 0004000 0002000 00000001241 14720746056 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ระหว่างคลัง	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
2	ระหว่างภาค	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
3	ระหว่างนคร	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
4	ระหว่างตำบล	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
5	ระหว่างเมือง	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
6	ระหว่างทวีป	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
7	ระหว่างจังหวัด	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
8	ระหว่างประเทศ	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
\.


                                                                                                                                                                                                                                                                                                                                                               4954.dat                                                                                            0000600 0004000 0002000 00000001754 14720746056 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
2	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
3	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
4	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
5	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
6	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
7	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
8	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
9	01112	รจนา	เมรี	20นครา	9999999999	\N	t	2024-04-08 00:00:00+07	2024-04-08 00:00:00+07
\.


                    restore.sql                                                                                         0000600 0004000 0002000 00000072722 14720746056 0015411 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1
-- Dumped by pg_dump version 17.1

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

DROP DATABASE "IStock";
--
-- Name: IStock; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "IStock" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.1252';


ALTER DATABASE "IStock" OWNER TO postgres;

\connect "IStock"

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accesses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accesses (
    access_id integer NOT NULL,
    access_name character varying(50) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.accesses OWNER TO postgres;

--
-- Name: accesses_access_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accesses_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accesses_access_id_seq OWNER TO postgres;

--
-- Name: accesses_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accesses_access_id_seq OWNED BY public.accesses.access_id;


--
-- Name: booking_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_types (
    "booking_type_ID" integer NOT NULL,
    name_booking_type character varying(25) NOT NULL,
    note_booking_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.booking_types OWNER TO postgres;

--
-- Name: booking_types_booking_type_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."booking_types_booking_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."booking_types_booking_type_ID_seq" OWNER TO postgres;

--
-- Name: booking_types_booking_type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."booking_types_booking_type_ID_seq" OWNED BY public.booking_types."booking_type_ID";


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    "customer_ID" integer NOT NULL,
    code_customer character varying(25) NOT NULL,
    name_customer character varying(50) NOT NULL,
    dealer_customer character varying(25),
    address_customer character varying(25),
    phone_customer character varying(15),
    note_customer character varying(100),
    use_customer boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."customers_customer_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."customers_customer_ID_seq" OWNER TO postgres;

--
-- Name: customers_customer_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."customers_customer_ID_seq" OWNED BY public.customers."customer_ID";


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    "employee_ID" integer NOT NULL,
    code_employee character varying(25) NOT NULL,
    username character varying(50) NOT NULL,
    firstname_employee character varying(50) NOT NULL,
    lastname_employee character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    phone_employee character varying(15),
    "accessRights" integer NOT NULL,
    use_employee boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."employees_employee_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."employees_employee_ID_seq" OWNER TO postgres;

--
-- Name: employees_employee_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."employees_employee_ID_seq" OWNED BY public.employees."employee_ID";


--
-- Name: issue_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue_types (
    "issue_type_ID" integer NOT NULL,
    name_issue_type character varying(25) NOT NULL,
    note_issue_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.issue_types OWNER TO postgres;

--
-- Name: issue_types_issue_type_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."issue_types_issue_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."issue_types_issue_type_ID_seq" OWNER TO postgres;

--
-- Name: issue_types_issue_type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."issue_types_issue_type_ID_seq" OWNED BY public.issue_types."issue_type_ID";


--
-- Name: main_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_products (
    "Product_ID" integer NOT NULL,
    code_product character varying(25) NOT NULL,
    name_product character varying(100) NOT NULL,
    brand_product character varying(25) NOT NULL,
    lot_dealer_product character varying(25),
    amount_product character varying(25) NOT NULL,
    amount_serial character varying(25),
    group_product character varying(25) NOT NULL,
    unit_product character varying(25) NOT NULL,
    buy_price integer DEFAULT 0 NOT NULL,
    sell_price integer DEFAULT 0 NOT NULL,
    storage_location character varying(25) NOT NULL,
    use_serial boolean NOT NULL,
    use_lot boolean NOT NULL,
    use_product boolean NOT NULL,
    "MFG_Date" timestamp with time zone,
    "EXP_Date" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "receiveId" integer
);


ALTER TABLE public.main_products OWNER TO postgres;

--
-- Name: main_products_Product_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."main_products_Product_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."main_products_Product_ID_seq" OWNER TO postgres;

--
-- Name: main_products_Product_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."main_products_Product_ID_seq" OWNED BY public.main_products."Product_ID";


--
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    "payment_type_ID" integer NOT NULL,
    name_payment_type character varying(25) NOT NULL,
    note_payment_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- Name: payment_types_payment_type_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."payment_types_payment_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."payment_types_payment_type_ID_seq" OWNER TO postgres;

--
-- Name: payment_types_payment_type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."payment_types_payment_type_ID_seq" OWNED BY public.payment_types."payment_type_ID";


--
-- Name: receive_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receive_types (
    "receive_type_ID" integer NOT NULL,
    name_receive_type character varying(25) NOT NULL,
    note_receive_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.receive_types OWNER TO postgres;

--
-- Name: receive_types_receive_type_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."receive_types_receive_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."receive_types_receive_type_ID_seq" OWNER TO postgres;

--
-- Name: receive_types_receive_type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."receive_types_receive_type_ID_seq" OWNED BY public.receive_types."receive_type_ID";


--
-- Name: receives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receives (
    "receive_ID" integer NOT NULL,
    "document_No_receive" character varying(50) NOT NULL,
    note_receive character varying(255),
    "ref_No_receive" character varying(50),
    "delivery_No_receive" character varying(50),
    create_receive_by character varying(50),
    edit_receive_by character varying(50),
    status_receive character varying(20) NOT NULL,
    date_receive timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "employeeId" integer,
    "receiveTypeId" integer,
    "vendorId" integer,
    "approvedById" integer
);


ALTER TABLE public.receives OWNER TO postgres;

--
-- Name: receives_receive_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."receives_receive_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."receives_receive_ID_seq" OWNER TO postgres;

--
-- Name: receives_receive_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."receives_receive_ID_seq" OWNED BY public.receives."receive_ID";


--
-- Name: return_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.return_types (
    "return_type_ID" integer NOT NULL,
    name_return_type character varying(50) NOT NULL,
    note_return_type character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.return_types OWNER TO postgres;

--
-- Name: return_types_return_type_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."return_types_return_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."return_types_return_type_ID_seq" OWNER TO postgres;

--
-- Name: return_types_return_type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."return_types_return_type_ID_seq" OWNED BY public.return_types."return_type_ID";


--
-- Name: storage_areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.storage_areas (
    "storage_area_ID" integer NOT NULL,
    location_storage_area character varying(25) NOT NULL,
    use_storage_area boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.storage_areas OWNER TO postgres;

--
-- Name: storage_areas_storage_area_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."storage_areas_storage_area_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."storage_areas_storage_area_ID_seq" OWNER TO postgres;

--
-- Name: storage_areas_storage_area_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."storage_areas_storage_area_ID_seq" OWNED BY public.storage_areas."storage_area_ID";


--
-- Name: transfer_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transfer_types (
    "transfer_type_ID" integer NOT NULL,
    name_transfer_type character varying(50) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.transfer_types OWNER TO postgres;

--
-- Name: transfer_types_transfer_type_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."transfer_types_transfer_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."transfer_types_transfer_type_ID_seq" OWNER TO postgres;

--
-- Name: transfer_types_transfer_type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."transfer_types_transfer_type_ID_seq" OWNED BY public.transfer_types."transfer_type_ID";


--
-- Name: vendors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendors (
    "vendor_ID" integer NOT NULL,
    code_vendor character varying(25) NOT NULL,
    name_vendor character varying(50) NOT NULL,
    dealer_vendor character varying(25),
    address_vendor character varying(25),
    phone_vendor character varying(15),
    note_vendor character varying(100),
    use_vendor boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.vendors OWNER TO postgres;

--
-- Name: vendors_vendor_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."vendors_vendor_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."vendors_vendor_ID_seq" OWNER TO postgres;

--
-- Name: vendors_vendor_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."vendors_vendor_ID_seq" OWNED BY public.vendors."vendor_ID";


--
-- Name: accesses access_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accesses ALTER COLUMN access_id SET DEFAULT nextval('public.accesses_access_id_seq'::regclass);


--
-- Name: booking_types booking_type_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_types ALTER COLUMN "booking_type_ID" SET DEFAULT nextval('public."booking_types_booking_type_ID_seq"'::regclass);


--
-- Name: customers customer_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN "customer_ID" SET DEFAULT nextval('public."customers_customer_ID_seq"'::regclass);


--
-- Name: employees employee_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN "employee_ID" SET DEFAULT nextval('public."employees_employee_ID_seq"'::regclass);


--
-- Name: issue_types issue_type_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_types ALTER COLUMN "issue_type_ID" SET DEFAULT nextval('public."issue_types_issue_type_ID_seq"'::regclass);


--
-- Name: main_products Product_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_products ALTER COLUMN "Product_ID" SET DEFAULT nextval('public."main_products_Product_ID_seq"'::regclass);


--
-- Name: payment_types payment_type_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types ALTER COLUMN "payment_type_ID" SET DEFAULT nextval('public."payment_types_payment_type_ID_seq"'::regclass);


--
-- Name: receive_types receive_type_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receive_types ALTER COLUMN "receive_type_ID" SET DEFAULT nextval('public."receive_types_receive_type_ID_seq"'::regclass);


--
-- Name: receives receive_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receives ALTER COLUMN "receive_ID" SET DEFAULT nextval('public."receives_receive_ID_seq"'::regclass);


--
-- Name: return_types return_type_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_types ALTER COLUMN "return_type_ID" SET DEFAULT nextval('public."return_types_return_type_ID_seq"'::regclass);


--
-- Name: storage_areas storage_area_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage_areas ALTER COLUMN "storage_area_ID" SET DEFAULT nextval('public."storage_areas_storage_area_ID_seq"'::regclass);


--
-- Name: transfer_types transfer_type_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer_types ALTER COLUMN "transfer_type_ID" SET DEFAULT nextval('public."transfer_types_transfer_type_ID_seq"'::regclass);


--
-- Name: vendors vendor_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendors ALTER COLUMN "vendor_ID" SET DEFAULT nextval('public."vendors_vendor_ID_seq"'::regclass);


--
-- Data for Name: accesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accesses (access_id, access_name, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.accesses (access_id, access_name, "createdAt", "updatedAt") FROM '$$PATH$$/4948.dat';

--
-- Data for Name: booking_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_types ("booking_type_ID", name_booking_type, note_booking_type, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.booking_types ("booking_type_ID", name_booking_type, note_booking_type, "createdAt", "updatedAt") FROM '$$PATH$$/4970.dat';

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers ("customer_ID", code_customer, name_customer, dealer_customer, address_customer, phone_customer, note_customer, use_customer, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.customers ("customer_ID", code_customer, name_customer, dealer_customer, address_customer, phone_customer, note_customer, use_customer, "createdAt", "updatedAt") FROM '$$PATH$$/4958.dat';

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees ("employee_ID", code_employee, username, firstname_employee, lastname_employee, password, phone_employee, "accessRights", use_employee, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.employees ("employee_ID", code_employee, username, firstname_employee, lastname_employee, password, phone_employee, "accessRights", use_employee, "createdAt", "updatedAt") FROM '$$PATH$$/4950.dat';

--
-- Data for Name: issue_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue_types ("issue_type_ID", name_issue_type, note_issue_type, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.issue_types ("issue_type_ID", name_issue_type, note_issue_type, "createdAt", "updatedAt") FROM '$$PATH$$/4966.dat';

--
-- Data for Name: main_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_products ("Product_ID", code_product, name_product, brand_product, lot_dealer_product, amount_product, amount_serial, group_product, unit_product, buy_price, sell_price, storage_location, use_serial, use_lot, use_product, "MFG_Date", "EXP_Date", "createdAt", "updatedAt", "receiveId") FROM stdin;
\.
COPY public.main_products ("Product_ID", code_product, name_product, brand_product, lot_dealer_product, amount_product, amount_serial, group_product, unit_product, buy_price, sell_price, storage_location, use_serial, use_lot, use_product, "MFG_Date", "EXP_Date", "createdAt", "updatedAt", "receiveId") FROM '$$PATH$$/4972.dat';

--
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_types ("payment_type_ID", name_payment_type, note_payment_type, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.payment_types ("payment_type_ID", name_payment_type, note_payment_type, "createdAt", "updatedAt") FROM '$$PATH$$/4962.dat';

--
-- Data for Name: receive_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receive_types ("receive_type_ID", name_receive_type, note_receive_type, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.receive_types ("receive_type_ID", name_receive_type, note_receive_type, "createdAt", "updatedAt") FROM '$$PATH$$/4952.dat';

--
-- Data for Name: receives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receives ("receive_ID", "document_No_receive", note_receive, "ref_No_receive", "delivery_No_receive", create_receive_by, edit_receive_by, status_receive, date_receive, "createdAt", "updatedAt", "employeeId", "receiveTypeId", "vendorId", "approvedById") FROM stdin;
\.
COPY public.receives ("receive_ID", "document_No_receive", note_receive, "ref_No_receive", "delivery_No_receive", create_receive_by, edit_receive_by, status_receive, date_receive, "createdAt", "updatedAt", "employeeId", "receiveTypeId", "vendorId", "approvedById") FROM '$$PATH$$/4956.dat';

--
-- Data for Name: return_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.return_types ("return_type_ID", name_return_type, note_return_type, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.return_types ("return_type_ID", name_return_type, note_return_type, "createdAt", "updatedAt") FROM '$$PATH$$/4964.dat';

--
-- Data for Name: storage_areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storage_areas ("storage_area_ID", location_storage_area, use_storage_area, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.storage_areas ("storage_area_ID", location_storage_area, use_storage_area, "createdAt", "updatedAt") FROM '$$PATH$$/4960.dat';

--
-- Data for Name: transfer_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transfer_types ("transfer_type_ID", name_transfer_type, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.transfer_types ("transfer_type_ID", name_transfer_type, "createdAt", "updatedAt") FROM '$$PATH$$/4968.dat';

--
-- Data for Name: vendors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendors ("vendor_ID", code_vendor, name_vendor, dealer_vendor, address_vendor, phone_vendor, note_vendor, use_vendor, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.vendors ("vendor_ID", code_vendor, name_vendor, dealer_vendor, address_vendor, phone_vendor, note_vendor, use_vendor, "createdAt", "updatedAt") FROM '$$PATH$$/4954.dat';

--
-- Name: accesses_access_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accesses_access_id_seq', 1, false);


--
-- Name: booking_types_booking_type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."booking_types_booking_type_ID_seq"', 1, false);


--
-- Name: customers_customer_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."customers_customer_ID_seq"', 10, true);


--
-- Name: employees_employee_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."employees_employee_ID_seq"', 1, true);


--
-- Name: issue_types_issue_type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."issue_types_issue_type_ID_seq"', 10, true);


--
-- Name: main_products_Product_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."main_products_Product_ID_seq"', 4, true);


--
-- Name: payment_types_payment_type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."payment_types_payment_type_ID_seq"', 6, true);


--
-- Name: receive_types_receive_type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."receive_types_receive_type_ID_seq"', 8, true);


--
-- Name: receives_receive_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."receives_receive_ID_seq"', 23, true);


--
-- Name: return_types_return_type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."return_types_return_type_ID_seq"', 1, false);


--
-- Name: storage_areas_storage_area_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."storage_areas_storage_area_ID_seq"', 8, true);


--
-- Name: transfer_types_transfer_type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."transfer_types_transfer_type_ID_seq"', 8, true);


--
-- Name: vendors_vendor_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."vendors_vendor_ID_seq"', 9, true);


--
-- Name: accesses accesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accesses
    ADD CONSTRAINT accesses_pkey PRIMARY KEY (access_id);


--
-- Name: booking_types booking_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_types
    ADD CONSTRAINT booking_types_pkey PRIMARY KEY ("booking_type_ID");


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY ("customer_ID");


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY ("employee_ID");


--
-- Name: issue_types issue_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_types
    ADD CONSTRAINT issue_types_pkey PRIMARY KEY ("issue_type_ID");


--
-- Name: main_products main_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_products
    ADD CONSTRAINT main_products_pkey PRIMARY KEY ("Product_ID");


--
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY ("payment_type_ID");


--
-- Name: receive_types receive_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receive_types
    ADD CONSTRAINT receive_types_pkey PRIMARY KEY ("receive_type_ID");


--
-- Name: receives receives_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receives
    ADD CONSTRAINT receives_pkey PRIMARY KEY ("receive_ID");


--
-- Name: return_types return_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_types
    ADD CONSTRAINT return_types_pkey PRIMARY KEY ("return_type_ID");


--
-- Name: storage_areas storage_areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage_areas
    ADD CONSTRAINT storage_areas_pkey PRIMARY KEY ("storage_area_ID");


--
-- Name: transfer_types transfer_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer_types
    ADD CONSTRAINT transfer_types_pkey PRIMARY KEY ("transfer_type_ID");


--
-- Name: vendors vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY ("vendor_ID");


--
-- Name: employees employees_accessRights_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "employees_accessRights_fkey" FOREIGN KEY ("accessRights") REFERENCES public.accesses(access_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: main_products main_products_receiveId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_products
    ADD CONSTRAINT "main_products_receiveId_fkey" FOREIGN KEY ("receiveId") REFERENCES public.receives("receive_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: receives receives_approvedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_approvedById_fkey" FOREIGN KEY ("approvedById") REFERENCES public.employees("employee_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: receives receives_employeeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES public.employees("employee_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: receives receives_receiveTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_receiveTypeId_fkey" FOREIGN KEY ("receiveTypeId") REFERENCES public.receive_types("receive_type_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: receives receives_vendorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receives
    ADD CONSTRAINT "receives_vendorId_fkey" FOREIGN KEY ("vendorId") REFERENCES public.vendors("vendor_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              