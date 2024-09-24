PGDMP      7    
            |            postgres    12.20    16.4 7    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    13318    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE postgres;
                postgres    false            X           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    2903                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            Y           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    7                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            Z           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1            �            1259    16441 	   automovil    TABLE     �  CREATE TABLE public.automovil (
    id_automovil bigint NOT NULL,
    precio numeric(10,2) NOT NULL,
    descuento numeric(5,2) NOT NULL,
    num_chasis character varying(10) NOT NULL,
    stock integer NOT NULL,
    potencia integer NOT NULL,
    cilindrada integer NOT NULL,
    color character varying(20) NOT NULL,
    id_modelo bigint NOT NULL,
    id_vendedor bigint NOT NULL
);
    DROP TABLE public.automovil;
       public         heap    postgres    false    7            �            1259    16436    consecionario    TABLE     �   CREATE TABLE public.consecionario (
    id_consecionario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    cuit character varying(11) NOT NULL
);
 !   DROP TABLE public.consecionario;
       public         heap    postgres    false    7            �            1259    16406    equipamiento_serie    TABLE     �   CREATE TABLE public.equipamiento_serie (
    id_equipamiento bigint NOT NULL,
    descripcion character varying(100) NOT NULL,
    id_version bigint NOT NULL
);
 &   DROP TABLE public.equipamiento_serie;
       public         heap    postgres    false    7            �            1259    16426    extra    TABLE     �   CREATE TABLE public.extra (
    id_extra bigint NOT NULL,
    descripcion character varying(100) NOT NULL,
    precio numeric(10,2) NOT NULL,
    id_version bigint NOT NULL
);
    DROP TABLE public.extra;
       public         heap    postgres    false    7            �            1259    16411    marca    TABLE     i   CREATE TABLE public.marca (
    id_marca smallint NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.marca;
       public         heap    postgres    false    7            �            1259    16421    modelo    TABLE     �   CREATE TABLE public.modelo (
    id_modelo bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    id_marca bigint NOT NULL
);
    DROP TABLE public.modelo;
       public         heap    postgres    false    7            �            1259    16416    servicio_oficial    TABLE     �   CREATE TABLE public.servicio_oficial (
    id_servicio bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    domicilio character varying(100) NOT NULL,
    cuit character(11) NOT NULL,
    id_consecionario bigint NOT NULL
);
 $   DROP TABLE public.servicio_oficial;
       public         heap    postgres    false    7            �            1259    16446    vendedor    TABLE     �   CREATE TABLE public.vendedor (
    id_vendedor bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    dni character varying(10) NOT NULL,
    domicilio character varying(100) NOT NULL,
    id_consecionario bigint,
    id_servicio bigint
);
    DROP TABLE public.vendedor;
       public         heap    postgres    false    7            �            1259    16431    venta    TABLE     �   CREATE TABLE public.venta (
    id_venta bigint NOT NULL,
    matricula character varying(20) NOT NULL,
    precio numeric(10,2) NOT NULL,
    forma_pago character varying(20) NOT NULL,
    id_automovil bigint NOT NULL,
    id_vendedor bigint NOT NULL
);
    DROP TABLE public.venta;
       public         heap    postgres    false    7            �            1259    16401    venta_extra    TABLE     �   CREATE TABLE public.venta_extra (
    id_venta_extra bigint NOT NULL,
    precio numeric(10,2) NOT NULL,
    id_venta bigint NOT NULL,
    id_extra bigint NOT NULL
);
    DROP TABLE public.venta_extra;
       public         heap    postgres    false    7            �            1259    16396 	   versiones    TABLE     �   CREATE TABLE public.versiones (
    id_version bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    id_modelo bigint NOT NULL
);
    DROP TABLE public.versiones;
       public         heap    postgres    false    7            P          0    16441 	   automovil 
   TABLE DATA           �   COPY public.automovil (id_automovil, precio, descuento, num_chasis, stock, potencia, cilindrada, color, id_modelo, id_vendedor) FROM stdin;
    public          postgres    false    212   �D       O          0    16436    consecionario 
   TABLE DATA           R   COPY public.consecionario (id_consecionario, nombre, direccion, cuit) FROM stdin;
    public          postgres    false    211   �E       I          0    16406    equipamiento_serie 
   TABLE DATA           V   COPY public.equipamiento_serie (id_equipamiento, descripcion, id_version) FROM stdin;
    public          postgres    false    205   F       M          0    16426    extra 
   TABLE DATA           J   COPY public.extra (id_extra, descripcion, precio, id_version) FROM stdin;
    public          postgres    false    209   �F       J          0    16411    marca 
   TABLE DATA           1   COPY public.marca (id_marca, nombre) FROM stdin;
    public          postgres    false    206   G       L          0    16421    modelo 
   TABLE DATA           =   COPY public.modelo (id_modelo, nombre, id_marca) FROM stdin;
    public          postgres    false    208   NG       K          0    16416    servicio_oficial 
   TABLE DATA           b   COPY public.servicio_oficial (id_servicio, nombre, domicilio, cuit, id_consecionario) FROM stdin;
    public          postgres    false    207   �G       Q          0    16446    vendedor 
   TABLE DATA           f   COPY public.vendedor (id_vendedor, nombre, dni, domicilio, id_consecionario, id_servicio) FROM stdin;
    public          postgres    false    213   /H       N          0    16431    venta 
   TABLE DATA           c   COPY public.venta (id_venta, matricula, precio, forma_pago, id_automovil, id_vendedor) FROM stdin;
    public          postgres    false    210   �H       H          0    16401    venta_extra 
   TABLE DATA           Q   COPY public.venta_extra (id_venta_extra, precio, id_venta, id_extra) FROM stdin;
    public          postgres    false    204   tI       G          0    16396 	   versiones 
   TABLE DATA           B   COPY public.versiones (id_version, nombre, id_modelo) FROM stdin;
    public          postgres    false    203   �I       �
           2606    16445    automovil automovil_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.automovil
    ADD CONSTRAINT automovil_pkey PRIMARY KEY (id_automovil);
 B   ALTER TABLE ONLY public.automovil DROP CONSTRAINT automovil_pkey;
       public            postgres    false    212            �
           2606    17346     consecionario consecionario_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.consecionario
    ADD CONSTRAINT consecionario_pkey PRIMARY KEY (id_consecionario);
 J   ALTER TABLE ONLY public.consecionario DROP CONSTRAINT consecionario_pkey;
       public            postgres    false    211            �
           2606    16410 *   equipamiento_serie equipamiento_serie_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.equipamiento_serie
    ADD CONSTRAINT equipamiento_serie_pkey PRIMARY KEY (id_equipamiento);
 T   ALTER TABLE ONLY public.equipamiento_serie DROP CONSTRAINT equipamiento_serie_pkey;
       public            postgres    false    205            �
           2606    16430    extra extra_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (id_extra);
 :   ALTER TABLE ONLY public.extra DROP CONSTRAINT extra_pkey;
       public            postgres    false    209            �
           2606    17384    marca marca_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);
 :   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
       public            postgres    false    206            �
           2606    16425    modelo modelo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_pkey PRIMARY KEY (id_modelo);
 <   ALTER TABLE ONLY public.modelo DROP CONSTRAINT modelo_pkey;
       public            postgres    false    208            �
           2606    16420 &   servicio_oficial servicio_oficial_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.servicio_oficial
    ADD CONSTRAINT servicio_oficial_pkey PRIMARY KEY (id_servicio);
 P   ALTER TABLE ONLY public.servicio_oficial DROP CONSTRAINT servicio_oficial_pkey;
       public            postgres    false    207            �
           2606    16450    vendedor vendedor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (id_vendedor);
 @   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_pkey;
       public            postgres    false    213            �
           2606    16405    venta_extra venta_extra_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.venta_extra
    ADD CONSTRAINT venta_extra_pkey PRIMARY KEY (id_venta_extra);
 F   ALTER TABLE ONLY public.venta_extra DROP CONSTRAINT venta_extra_pkey;
       public            postgres    false    204            �
           2606    16435    venta venta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    210            �
           2606    16400    versiones version_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.versiones
    ADD CONSTRAINT version_pkey PRIMARY KEY (id_version);
 @   ALTER TABLE ONLY public.versiones DROP CONSTRAINT version_pkey;
       public            postgres    false    203            �
           2606    16501 %   automovil automovil_id_modelo_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.automovil
    ADD CONSTRAINT automovil_id_modelo_foreign FOREIGN KEY (id_modelo) REFERENCES public.modelo(id_modelo);
 O   ALTER TABLE ONLY public.automovil DROP CONSTRAINT automovil_id_modelo_foreign;
       public          postgres    false    208    212    2737            �
           2606    16491 '   automovil automovil_id_vendedor_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.automovil
    ADD CONSTRAINT automovil_id_vendedor_foreign FOREIGN KEY (id_vendedor) REFERENCES public.vendedor(id_vendedor);
 Q   ALTER TABLE ONLY public.automovil DROP CONSTRAINT automovil_id_vendedor_foreign;
       public          postgres    false    213    212    2747            �
           2606    16461 8   equipamiento_serie equipamiento_serie_id_version_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipamiento_serie
    ADD CONSTRAINT equipamiento_serie_id_version_foreign FOREIGN KEY (id_version) REFERENCES public.versiones(id_version);
 b   ALTER TABLE ONLY public.equipamiento_serie DROP CONSTRAINT equipamiento_serie_id_version_foreign;
       public          postgres    false    205    203    2727            �
           2606    16456    extra extra_id_version_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_id_version_foreign FOREIGN KEY (id_version) REFERENCES public.versiones(id_version);
 H   ALTER TABLE ONLY public.extra DROP CONSTRAINT extra_id_version_foreign;
       public          postgres    false    2727    203    209            �
           2606    17385    modelo modelo_id_marca_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_id_marca_foreign FOREIGN KEY (id_marca) REFERENCES public.marca(id_marca);
 H   ALTER TABLE ONLY public.modelo DROP CONSTRAINT modelo_id_marca_foreign;
       public          postgres    false    206    2733    208            �
           2606    17352 :   servicio_oficial servicio_oficial_id_consecionario_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicio_oficial
    ADD CONSTRAINT servicio_oficial_id_consecionario_foreign FOREIGN KEY (id_consecionario) REFERENCES public.consecionario(id_consecionario);
 d   ALTER TABLE ONLY public.servicio_oficial DROP CONSTRAINT servicio_oficial_id_consecionario_foreign;
       public          postgres    false    207    211    2743            �
           2606    17347 *   vendedor vendedor_id_consecionario_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_id_consecionario_foreign FOREIGN KEY (id_consecionario) REFERENCES public.consecionario(id_consecionario);
 T   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_id_consecionario_foreign;
       public          postgres    false    211    213    2743            �
           2606    16486 %   vendedor vendedor_id_servicio_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_id_servicio_foreign FOREIGN KEY (id_servicio) REFERENCES public.servicio_oficial(id_servicio);
 O   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_id_servicio_foreign;
       public          postgres    false    207    213    2735            �
           2606    16466 (   venta_extra venta_extra_id_extra_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_extra
    ADD CONSTRAINT venta_extra_id_extra_foreign FOREIGN KEY (id_extra) REFERENCES public.extra(id_extra);
 R   ALTER TABLE ONLY public.venta_extra DROP CONSTRAINT venta_extra_id_extra_foreign;
       public          postgres    false    209    2739    204            �
           2606    16471 (   venta_extra venta_extra_id_venta_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_extra
    ADD CONSTRAINT venta_extra_id_venta_foreign FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta);
 R   ALTER TABLE ONLY public.venta_extra DROP CONSTRAINT venta_extra_id_venta_foreign;
       public          postgres    false    2741    210    204            �
           2606    16481     venta venta_id_automovil_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_automovil_foreign FOREIGN KEY (id_automovil) REFERENCES public.automovil(id_automovil);
 J   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_automovil_foreign;
       public          postgres    false    210    2745    212            �
           2606    16511    venta venta_id_vendedor_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_vendedor_foreign FOREIGN KEY (id_vendedor) REFERENCES public.vendedor(id_vendedor);
 I   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_vendedor_foreign;
       public          postgres    false    210    2747    213            �
           2606    16496 #   versiones version_id_modelo_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.versiones
    ADD CONSTRAINT version_id_modelo_foreign FOREIGN KEY (id_modelo) REFERENCES public.modelo(id_modelo);
 M   ALTER TABLE ONLY public.versiones DROP CONSTRAINT version_id_modelo_foreign;
       public          postgres    false    208    2737    203            P   �   x�m��N�0D�ُ9ym��\CuT4!��,�D�׳kH)"e�v<;a�����^%���`�����""�ʲeŕ(����>-�����qfo�b���k3�H�w�#D�*w�$x��;4Exr�Y��e��T����wp�h�D��p�[�WU�2�����}�5��?mQ�k^d�LGi�V�����L; ����[��p��nJ21c�W�������X�y�7���p�5�~x�O�͝N�| �/�+`�      O   c   x�3�tw�v�t��KN-H����.#N�Ĕ�D�`=G=���<_������T������D�JS3�JcN�T��ĢbN����Ԣ�bNKC#c�L� qX'      I   T   x�3�t�,JUHL��K�L���KL��4�2�t
'��3�K2S9���9�3S���S�J�s2�@�͸L8��9�b���� f�      M   {   x�m�1�0�W��)HE)U�\a��!Lx�+���:<>e�\�f�Ȫ��`�EO=���Υr�Ix�.B3F�O�����T_�q��Ď�i1Ո9�;1\���'�����=9      J   3   x�3�ɯ�/I�2�H-MO�/�2�t�/J�2�t�H-+��I-����� �O      L   B   x�3�t-��/�4�2���ˬ�4�2�t�/���I
�pe�&�M9�9���8���+F��� �q�      K      x�3��utV���r�t��KN-H����46��0�4V NC.#��Ԣ�L���oiqnbQQ"�o~^IjQ~1�����	T�1�1�G~QfH��381O�73�45G!%U!�4�47b��X�W� 9$%=      Q   �   x�e��
�0Eד���$�]��P|�����%�f$~��/�ù��ɠ����ߡ���r�}:�]��-�Cl�@r8mTs
�\�lu�g�X�k�Wr)�y��G׷w��-��>7N|� Sj	�m�h���ߝpTV�q�E/eHj[��ޯ<a�*`�m��JI]U�~�ٸ�4QJ= `QI4      N   l   x�]�;�@��� {m'���(#R�A|$h��
�mg4#�5dg���2����SBD�yˮ��}����BH�4� ��E�Hdx���a�9B� 9{��(}+":��"�      H   )   x�3�440�30�4�4�2ⴄpL9͸�a2&��\1z\\\ �oH      G   ?   x�3��	��4�2ҜF\Ɯ>���\&�nE���%�9���\�@�`NC.3N�ON3�=... d�     