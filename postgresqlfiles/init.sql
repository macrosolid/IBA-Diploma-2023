PGDMP                         {            djangodb    15.2 (Debian 15.2-1.pgdg110+1)    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16384    djangodb    DATABASE     s   CREATE DATABASE djangodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE djangodb;
             
   macrosolid    false            �            1259    24586    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 
   macrosolid    false            �            1259    24585    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       
   macrosolid    false    215                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       
   macrosolid    false    214            �            1259    24604 	   polls_car    TABLE     �   CREATE TABLE public.polls_car (
    id bigint NOT NULL,
    make text NOT NULL,
    model text NOT NULL,
    year integer NOT NULL,
    vin text NOT NULL,
    owner_id bigint
);
    DROP TABLE public.polls_car;
       public         heap 
   macrosolid    false            �            1259    24603    polls_car_id_seq    SEQUENCE     y   CREATE SEQUENCE public.polls_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.polls_car_id_seq;
       public       
   macrosolid    false    219                       0    0    polls_car_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.polls_car_id_seq OWNED BY public.polls_car.id;
          public       
   macrosolid    false    218            �            1259    24595    polls_driver    TABLE     p   CREATE TABLE public.polls_driver (
    id bigint NOT NULL,
    name text NOT NULL,
    license text NOT NULL
);
     DROP TABLE public.polls_driver;
       public         heap 
   macrosolid    false            �            1259    24594    polls_driver_id_seq    SEQUENCE     |   CREATE SEQUENCE public.polls_driver_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.polls_driver_id_seq;
       public       
   macrosolid    false    217                       0    0    polls_driver_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.polls_driver_id_seq OWNED BY public.polls_driver.id;
          public       
   macrosolid    false    216            r           2604    24589    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       
   macrosolid    false    215    214    215            t           2604    24607    polls_car id    DEFAULT     l   ALTER TABLE ONLY public.polls_car ALTER COLUMN id SET DEFAULT nextval('public.polls_car_id_seq'::regclass);
 ;   ALTER TABLE public.polls_car ALTER COLUMN id DROP DEFAULT;
       public       
   macrosolid    false    218    219    219            s           2604    24598    polls_driver id    DEFAULT     r   ALTER TABLE ONLY public.polls_driver ALTER COLUMN id SET DEFAULT nextval('public.polls_driver_id_seq'::regclass);
 >   ALTER TABLE public.polls_driver ALTER COLUMN id DROP DEFAULT;
       public       
   macrosolid    false    217    216    217                      0    24586    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       
   macrosolid    false    215   �                 0    24604 	   polls_car 
   TABLE DATA           I   COPY public.polls_car (id, make, model, year, vin, owner_id) FROM stdin;
    public       
   macrosolid    false    219   '                 0    24595    polls_driver 
   TABLE DATA           9   COPY public.polls_driver (id, name, license) FROM stdin;
    public       
   macrosolid    false    217   �                  0    0    django_migrations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_migrations_id_seq', 1, true);
          public       
   macrosolid    false    214                       0    0    polls_car_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.polls_car_id_seq', 24, true);
          public       
   macrosolid    false    218                       0    0    polls_driver_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.polls_driver_id_seq', 20, true);
          public       
   macrosolid    false    216            v           2606    24593 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         
   macrosolid    false    215            {           2606    24611    polls_car polls_car_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.polls_car
    ADD CONSTRAINT polls_car_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.polls_car DROP CONSTRAINT polls_car_pkey;
       public         
   macrosolid    false    219            x           2606    24602    polls_driver polls_driver_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.polls_driver
    ADD CONSTRAINT polls_driver_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.polls_driver DROP CONSTRAINT polls_driver_pkey;
       public         
   macrosolid    false    217            y           1259    24617    polls_car_owner_id_e17d0bce    INDEX     U   CREATE INDEX polls_car_owner_id_e17d0bce ON public.polls_car USING btree (owner_id);
 /   DROP INDEX public.polls_car_owner_id_e17d0bce;
       public         
   macrosolid    false    219            |           2606    24612 8   polls_car polls_car_owner_id_e17d0bce_fk_polls_driver_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_car
    ADD CONSTRAINT polls_car_owner_id_e17d0bce_fk_polls_driver_id FOREIGN KEY (owner_id) REFERENCES public.polls_driver(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.polls_car DROP CONSTRAINT polls_car_owner_id_e17d0bce_fk_polls_driver_id;
       public       
   macrosolid    false    217    219    3192               ?   x�3�,���)�4000����,�L��4202�50�5�P02�21�26�36����60������ ���         �   x��ұj�0��Y�]t��ky8Y2�c����&��q�Z���9���楺��;�>:O�C-R����Ы0kd.�f��(�Z$�9�ͷ�c?Me����k�8��?���Q@6�0�u���-�3��#��*��_5X_�穖�=�7�CF|LUT#+�$�0�bk�%$
1 �����u,�h} �6         x   x�eν@0����ň���-&�I,$EB"��3Q��=��*�ES/���PHj6/u~FT�cz;������e�N�5�h�3d߻�*;������֛������D0#8?%�)��!B\M/N�     