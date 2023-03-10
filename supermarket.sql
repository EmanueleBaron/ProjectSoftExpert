PGDMP     
    7                {            supermarket    15.2    15.1 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    supermarket    DATABASE     ?   CREATE DATABASE supermarket WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE supermarket;
                softExpMarket    false            ?            1259    16469 	   itenssale    TABLE     ?   CREATE TABLE public.itenssale (
    cditemsale integer NOT NULL,
    fkcdsale integer NOT NULL,
    fkcdproduct integer NOT NULL,
    amount integer NOT NULL,
    valuetotal numeric NOT NULL,
    taxtotal numeric(10,2)
);
    DROP TABLE public.itenssale;
       public         heap    postgres    false            ?            1259    16468    itemsale_cditemsale_seq    SEQUENCE     ?   CREATE SEQUENCE public.itemsale_cditemsale_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.itemsale_cditemsale_seq;
       public          postgres    false    221                       0    0    itemsale_cditemsale_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.itemsale_cditemsale_seq OWNED BY public.itenssale.cditemsale;
          public          postgres    false    220            ?            1259    16422    product    TABLE     ?   CREATE TABLE public.product (
    cdproduct integer NOT NULL,
    nmproduct character varying(255) NOT NULL,
    price numeric NOT NULL,
    descproduct text,
    fkcdtypeproduct integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            ?            1259    16421    product_cdproduct_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_cdproduct_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_cdproduct_seq;
       public          postgres    false    217                        0    0    product_cdproduct_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_cdproduct_seq OWNED BY public.product.cdproduct;
          public          postgres    false    216            ?            1259    16462    sales    TABLE     ?   CREATE TABLE public.sales (
    cdsale integer NOT NULL,
    amounttotal numeric(10,2) NOT NULL,
    dtsale date NOT NULL,
    taxtotal numeric(10,2)
);
    DROP TABLE public.sales;
       public         heap    postgres    false            ?            1259    16461    sales_cdsale_seq    SEQUENCE     ?   CREATE SEQUENCE public.sales_cdsale_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sales_cdsale_seq;
       public          postgres    false    219            !           0    0    sales_cdsale_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sales_cdsale_seq OWNED BY public.sales.cdsale;
          public          postgres    false    218            ?            1259    16415    typeproduct    TABLE     ?   CREATE TABLE public.typeproduct (
    cdtypeproduct integer NOT NULL,
    nmtypeproduct character varying(255) NOT NULL,
    tax numeric(5,2) NOT NULL
);
    DROP TABLE public.typeproduct;
       public         heap    postgres    false            ?            1259    16414    typeproduct_cdtypeproduct_seq    SEQUENCE     ?   CREATE SEQUENCE public.typeproduct_cdtypeproduct_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.typeproduct_cdtypeproduct_seq;
       public          postgres    false    215            "           0    0    typeproduct_cdtypeproduct_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.typeproduct_cdtypeproduct_seq OWNED BY public.typeproduct.cdtypeproduct;
          public          postgres    false    214            w           2604    16472    itenssale cditemsale    DEFAULT     {   ALTER TABLE ONLY public.itenssale ALTER COLUMN cditemsale SET DEFAULT nextval('public.itemsale_cditemsale_seq'::regclass);
 C   ALTER TABLE public.itenssale ALTER COLUMN cditemsale DROP DEFAULT;
       public          postgres    false    221    220    221            u           2604    16425    product cdproduct    DEFAULT     v   ALTER TABLE ONLY public.product ALTER COLUMN cdproduct SET DEFAULT nextval('public.product_cdproduct_seq'::regclass);
 @   ALTER TABLE public.product ALTER COLUMN cdproduct DROP DEFAULT;
       public          postgres    false    217    216    217            v           2604    16465    sales cdsale    DEFAULT     l   ALTER TABLE ONLY public.sales ALTER COLUMN cdsale SET DEFAULT nextval('public.sales_cdsale_seq'::regclass);
 ;   ALTER TABLE public.sales ALTER COLUMN cdsale DROP DEFAULT;
       public          postgres    false    218    219    219            t           2604    16418    typeproduct cdtypeproduct    DEFAULT     ?   ALTER TABLE ONLY public.typeproduct ALTER COLUMN cdtypeproduct SET DEFAULT nextval('public.typeproduct_cdtypeproduct_seq'::regclass);
 H   ALTER TABLE public.typeproduct ALTER COLUMN cdtypeproduct DROP DEFAULT;
       public          postgres    false    215    214    215                      0    16469 	   itenssale 
   TABLE DATA           d   COPY public.itenssale (cditemsale, fkcdsale, fkcdproduct, amount, valuetotal, taxtotal) FROM stdin;
    public          postgres    false    221   ?'                 0    16422    product 
   TABLE DATA           \   COPY public.product (cdproduct, nmproduct, price, descproduct, fkcdtypeproduct) FROM stdin;
    public          postgres    false    217   (                 0    16462    sales 
   TABLE DATA           F   COPY public.sales (cdsale, amounttotal, dtsale, taxtotal) FROM stdin;
    public          postgres    false    219   N(                 0    16415    typeproduct 
   TABLE DATA           H   COPY public.typeproduct (cdtypeproduct, nmtypeproduct, tax) FROM stdin;
    public          postgres    false    215   k(       #           0    0    itemsale_cditemsale_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.itemsale_cditemsale_seq', 49, true);
          public          postgres    false    220            $           0    0    product_cdproduct_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_cdproduct_seq', 28, true);
          public          postgres    false    216            %           0    0    sales_cdsale_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sales_cdsale_seq', 102, true);
          public          postgres    false    218            &           0    0    typeproduct_cdtypeproduct_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.typeproduct_cdtypeproduct_seq', 31, true);
          public          postgres    false    214                       2606    16474    itenssale itemsale_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.itenssale
    ADD CONSTRAINT itemsale_pkey PRIMARY KEY (cditemsale);
 A   ALTER TABLE ONLY public.itenssale DROP CONSTRAINT itemsale_pkey;
       public            postgres    false    221            {           2606    16429    product product_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (cdproduct);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    217            }           2606    16467    sales sales_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (cdsale);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    219            y           2606    16420    typeproduct typeproduct_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.typeproduct
    ADD CONSTRAINT typeproduct_pkey PRIMARY KEY (cdtypeproduct);
 F   ALTER TABLE ONLY public.typeproduct DROP CONSTRAINT typeproduct_pkey;
       public            postgres    false    215            ?           2606    16480 #   itenssale itemsale_fkcdproduct_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.itenssale
    ADD CONSTRAINT itemsale_fkcdproduct_fkey FOREIGN KEY (fkcdproduct) REFERENCES public.product(cdproduct);
 M   ALTER TABLE ONLY public.itenssale DROP CONSTRAINT itemsale_fkcdproduct_fkey;
       public          postgres    false    221    217    3195            ?           2606    16475     itenssale itemsale_fkcdsale_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.itenssale
    ADD CONSTRAINT itemsale_fkcdsale_fkey FOREIGN KEY (fkcdsale) REFERENCES public.sales(cdsale);
 J   ALTER TABLE ONLY public.itenssale DROP CONSTRAINT itemsale_fkcdsale_fkey;
       public          postgres    false    221    3197    219            ?           2606    16430 $   product product_fkcdtypeproduct_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_fkcdtypeproduct_fkey FOREIGN KEY (fkcdtypeproduct) REFERENCES public.typeproduct(cdtypeproduct);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT product_fkcdtypeproduct_fkey;
       public          postgres    false    215    217    3193                  x?????? ? ?         3   x?32?tI-I-JO?+I?4?30????46?22?tL/M?4?	r??qqq 7?
?            x?????? ? ?         )   x?36????-H?J?4?30?26?tJM?Lr@?=... ?Ta     