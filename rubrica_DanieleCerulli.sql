PGDMP     /    /                 z            rubrica    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    18164    rubrica    DATABASE     c   CREATE DATABASE rubrica WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE rubrica;
                postgres    false            ?            1259    18192    contatto    TABLE     ?   CREATE TABLE public.contatto (
    id_contatto integer NOT NULL,
    cognome character varying(255),
    email character varying(255),
    nome character varying(255)
);
    DROP TABLE public.contatto;
       public         heap    postgres    false            ?            1259    18187    numero    TABLE     m   CREATE TABLE public.numero (
    numero_telefono character varying(255) NOT NULL,
    id_contatto integer
);
    DROP TABLE public.numero;
       public         heap    postgres    false            ?            1259    18204    sequence    TABLE     k   CREATE TABLE public.sequence (
    seq_name character varying(50) NOT NULL,
    seq_count numeric(38,0)
);
    DROP TABLE public.sequence;
       public         heap    postgres    false            ?          0    18192    contatto 
   TABLE DATA           E   COPY public.contatto (id_contatto, cognome, email, nome) FROM stdin;
    public          postgres    false    210          ?          0    18187    numero 
   TABLE DATA           >   COPY public.numero (numero_telefono, id_contatto) FROM stdin;
    public          postgres    false    209          ?          0    18204    sequence 
   TABLE DATA           7   COPY public.sequence (seq_name, seq_count) FROM stdin;
    public          postgres    false    211   ?       f           2606    18198    contatto contatto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.contatto
    ADD CONSTRAINT contatto_pkey PRIMARY KEY (id_contatto);
 @   ALTER TABLE ONLY public.contatto DROP CONSTRAINT contatto_pkey;
       public            postgres    false    210            d           2606    18191    numero numero_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.numero
    ADD CONSTRAINT numero_pkey PRIMARY KEY (numero_telefono);
 <   ALTER TABLE ONLY public.numero DROP CONSTRAINT numero_pkey;
       public            postgres    false    209            h           2606    18208    sequence sequence_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sequence
    ADD CONSTRAINT sequence_pkey PRIMARY KEY (seq_name);
 @   ALTER TABLE ONLY public.sequence DROP CONSTRAINT sequence_pkey;
       public            postgres    false    211            i           2606    18199    numero fk_numero_id_contatto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.numero
    ADD CONSTRAINT fk_numero_id_contatto FOREIGN KEY (id_contatto) REFERENCES public.contatto(id_contatto);
 F   ALTER TABLE ONLY public.numero DROP CONSTRAINT fk_numero_id_contatto;
       public          postgres    false    3174    210    209            ?   ?   x?M??n?0?g?)?Q!=??=K?ԡ???+g)8(???kB???????SW\2?rI2?J2?"???aD??O#\?+???+? ?&??c????;?????FQ?T???????nW?Z?j?.<$aa?i?\?V?7?K?
S?~/~?}?p7u?hE???T?????????av??Ù-?Eظm'?-o???v??'?t?3???B?;8??9?E*?h^?OÉ2?ةߥG??%4_???ل?      ?   l   x?M??0?3??إ??QH?*?'cɓ3??"=??'?L+?#?@??j?i?#??7?N?&M?ڄS??pUӚ0?&?3?G?]???s9K?o?ư.?????J#I      ?      x?v?ww??415?????? &(w     