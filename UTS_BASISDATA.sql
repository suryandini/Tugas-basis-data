PGDMP     $    (            
    z            retail    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24606    retail    DATABASE     }   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            �            1259    24612    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(100),
    harga_barang integer,
    stok_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    24627 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    24622    pembeli    TABLE     �   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30),
    jk character(1),
    no_telp character(15),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            �            1259    24607    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    no_telp character(13),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    24617 	   transaksi    TABLE     �   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    24612    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stok_barang, id_supplier) FROM stdin;
    public          postgres    false    215   �                 0    24627 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218                     0    24622    pembeli 
   TABLE DATA           P   COPY public.pembeli (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    217   v                 0    24607    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    214   �                 0    24617 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    216   �       w           2606    24616    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    24631    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            {           2606    24626    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    217            u           2606    24611    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            y           2606    24621    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    216            ~           2606    24637    barang fk_barang_transaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    215    3191    215            �           2606    24647    transaksi fk_barang_transaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3191    215    216                       2606    24632    barang fk_supplier_barang    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    215    214    3189            �           2606    24667 !   pembayaran fk_supplier_pembayaran    FK CONSTRAINT     �   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_supplier_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_supplier_pembayaran;
       public          postgres    false    3193    218    216               [   x�3�H-*I�M��44100�44  m�ed`��_����i��RF\�F��y)Ŝ�F 1#��1����s~rbr~N"X��&\1z\\\ ��         F   x�M���0Dѳ�K�,	K/�_� ������Qb^h0��ߡ?��m\ҿ�~7�}��\2��5         s   x�]�;�0 ��>EN��O�� �6	�����1�����\��,Q�@�u><�mד1��<�#rP����r����%��j8�t�����<�6��f�a?�.�0�D�6�$         |   x�U�9
�0@�Z:�O`f��R9r2��B���ȨH��?���.�Y;qʤ �u~�C��E���t���'P��֨
�����ӡ xkѸ[X�� 7��S���E�J.<��?�����"�         Q   x�325�4�42��FF����F��~��ީ%\F�F@Q��!��1Bژ�� ��Y� &maf�ibj�idi��6����� U��     