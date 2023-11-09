PGDMP                  	    {           firma    16.0    16.0 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    24576    firma    DATABASE     g   CREATE DATABASE firma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE firma;
                postgres    false                        2615    24577    rozliczenia    SCHEMA        CREATE SCHEMA rozliczenia;
    DROP SCHEMA rozliczenia;
                postgres    false            �            1259    24744    godziny    TABLE     �   CREATE TABLE public.godziny (
    id_godziny integer NOT NULL,
    data date,
    liczba_godzin integer,
    id_pracownika integer
);
    DROP TABLE public.godziny;
       public         heap    postgres    false            �            1259    24743    godziny_id_godziny_seq    SEQUENCE     �   CREATE SEQUENCE public.godziny_id_godziny_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.godziny_id_godziny_seq;
       public          postgres    false    219                       0    0    godziny_id_godziny_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.godziny_id_godziny_seq OWNED BY public.godziny.id_godziny;
          public          postgres    false    218            �            1259    24751    pensje    TABLE     �   CREATE TABLE public.pensje (
    id_pensji integer NOT NULL,
    stanowisko character varying(20),
    kwota_brutto integer,
    id_premii integer,
    kwota_netto double precision
);
    DROP TABLE public.pensje;
       public         heap    postgres    false            �            1259    24750    pensje_id_pensji_seq    SEQUENCE     �   CREATE SEQUENCE public.pensje_id_pensji_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pensje_id_pensji_seq;
       public          postgres    false    221                       0    0    pensje_id_pensji_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pensje_id_pensji_seq OWNED BY public.pensje.id_pensji;
          public          postgres    false    220            �            1259    24737 
   pracownicy    TABLE     �   CREATE TABLE public.pracownicy (
    id_pracownika integer NOT NULL,
    imie character varying(20),
    nazwisko character varying(20),
    adres integer,
    telefon character varying(10)
);
    DROP TABLE public.pracownicy;
       public         heap    postgres    false            �            1259    24736    pracownicy_id_pracownika_seq    SEQUENCE     �   CREATE SEQUENCE public.pracownicy_id_pracownika_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pracownicy_id_pracownika_seq;
       public          postgres    false    217                       0    0    pracownicy_id_pracownika_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pracownicy_id_pracownika_seq OWNED BY public.pracownicy.id_pracownika;
          public          postgres    false    216            �            1259    24758    premie    TABLE     t   CREATE TABLE public.premie (
    id_premii integer NOT NULL,
    rodzaj character varying(20),
    kwota integer
);
    DROP TABLE public.premie;
       public         heap    postgres    false            �            1259    24757    premie_id_premii_seq    SEQUENCE     �   CREATE SEQUENCE public.premie_id_premii_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.premie_id_premii_seq;
       public          postgres    false    223                       0    0    premie_id_premii_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.premie_id_premii_seq OWNED BY public.premie.id_premii;
          public          postgres    false    222            a           2604    24747    godziny id_godziny    DEFAULT     x   ALTER TABLE ONLY public.godziny ALTER COLUMN id_godziny SET DEFAULT nextval('public.godziny_id_godziny_seq'::regclass);
 A   ALTER TABLE public.godziny ALTER COLUMN id_godziny DROP DEFAULT;
       public          postgres    false    219    218    219            b           2604    24754    pensje id_pensji    DEFAULT     t   ALTER TABLE ONLY public.pensje ALTER COLUMN id_pensji SET DEFAULT nextval('public.pensje_id_pensji_seq'::regclass);
 ?   ALTER TABLE public.pensje ALTER COLUMN id_pensji DROP DEFAULT;
       public          postgres    false    221    220    221            `           2604    24740    pracownicy id_pracownika    DEFAULT     �   ALTER TABLE ONLY public.pracownicy ALTER COLUMN id_pracownika SET DEFAULT nextval('public.pracownicy_id_pracownika_seq'::regclass);
 G   ALTER TABLE public.pracownicy ALTER COLUMN id_pracownika DROP DEFAULT;
       public          postgres    false    216    217    217            c           2604    24761    premie id_premii    DEFAULT     t   ALTER TABLE ONLY public.premie ALTER COLUMN id_premii SET DEFAULT nextval('public.premie_id_premii_seq'::regclass);
 ?   ALTER TABLE public.premie ALTER COLUMN id_premii DROP DEFAULT;
       public          postgres    false    223    222    223                       0    24744    godziny 
   TABLE DATA           Q   COPY public.godziny (id_godziny, data, liczba_godzin, id_pracownika) FROM stdin;
    public          postgres    false    219   &                 0    24751    pensje 
   TABLE DATA           ]   COPY public.pensje (id_pensji, stanowisko, kwota_brutto, id_premii, kwota_netto) FROM stdin;
    public          postgres    false    221   �&       �          0    24737 
   pracownicy 
   TABLE DATA           S   COPY public.pracownicy (id_pracownika, imie, nazwisko, adres, telefon) FROM stdin;
    public          postgres    false    217   -'                 0    24758    premie 
   TABLE DATA           :   COPY public.premie (id_premii, rodzaj, kwota) FROM stdin;
    public          postgres    false    223   (                  0    0    godziny_id_godziny_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.godziny_id_godziny_seq', 10, true);
          public          postgres    false    218                       0    0    pensje_id_pensji_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pensje_id_pensji_seq', 10, true);
          public          postgres    false    220                       0    0    pracownicy_id_pracownika_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pracownicy_id_pracownika_seq', 10, true);
          public          postgres    false    216                       0    0    premie_id_premii_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.premie_id_premii_seq', 10, true);
          public          postgres    false    222            g           2606    24749    godziny godziny_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.godziny
    ADD CONSTRAINT godziny_pkey PRIMARY KEY (id_godziny);
 >   ALTER TABLE ONLY public.godziny DROP CONSTRAINT godziny_pkey;
       public            postgres    false    219            i           2606    24756    pensje pensje_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pensje
    ADD CONSTRAINT pensje_pkey PRIMARY KEY (id_pensji);
 <   ALTER TABLE ONLY public.pensje DROP CONSTRAINT pensje_pkey;
       public            postgres    false    221            e           2606    24742    pracownicy pracownicy_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pracownicy
    ADD CONSTRAINT pracownicy_pkey PRIMARY KEY (id_pracownika);
 D   ALTER TABLE ONLY public.pracownicy DROP CONSTRAINT pracownicy_pkey;
       public            postgres    false    217            k           2606    24763    premie premie_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.premie
    ADD CONSTRAINT premie_pkey PRIMARY KEY (id_premii);
 <   ALTER TABLE ONLY public.premie DROP CONSTRAINT premie_pkey;
       public            postgres    false    223            l           2606    24764    godziny fk_godziny_pracownicy    FK CONSTRAINT     �   ALTER TABLE ONLY public.godziny
    ADD CONSTRAINT fk_godziny_pracownicy FOREIGN KEY (id_pracownika) REFERENCES public.pracownicy(id_pracownika);
 G   ALTER TABLE ONLY public.godziny DROP CONSTRAINT fk_godziny_pracownicy;
       public          postgres    false    219    217    4709            m           2606    24769    pensje fk_pensje_premie    FK CONSTRAINT     �   ALTER TABLE ONLY public.pensje
    ADD CONSTRAINT fk_pensje_premie FOREIGN KEY (id_premii) REFERENCES public.premie(id_premii);
 A   ALTER TABLE ONLY public.pensje DROP CONSTRAINT fk_pensje_premie;
       public          postgres    false    223    221    4715                S   x�Eʹ� C�x��=��^�Vdeқ��5�� �-Q�bQ���bb	��-�,6Z�,G�kWpY\��������*�         �   x�m��!E뙏!Û-����Q
Ԡ�%��o���7@s���3w8B��;���8M�Q���a~�)��Ԑ �cT��F	�g8_�=.ك�1	U���T�[^K)�e�(�BF�P�*=P���Բ�v�������>�s�]e��N�AkX�      �   �   x�=�Mj�0��oS�?KZv�Mӆ@�����VQl�0Ѻ7�J�U%}˙7o>�G��I+�rRi�[�;���gƶ.#$����J��v!����C�P0�x�%0�B��m��.�x+�3נ+c�C�n��A���2�R.�~]]-D�\==�R.Ux���8|�5G��l��k�8������j���ǁOc�y�5�¨Cݠ�;"�R�         X   x�3�(J��LT(�O��K�4400�2�	f�'�$� �M���0������#3���&�՛�Ro��Rs�X�2��!�����qqq <J�     