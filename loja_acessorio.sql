PGDMP         :            
    {            loja_acessorio    14.9    14.9 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16532    loja_acessorio    DATABASE     n   CREATE DATABASE loja_acessorio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE loja_acessorio;
                postgres    false            �            1259    16563    cliente    TABLE       CREATE TABLE public.cliente (
    id integer NOT NULL,
    cpf character varying(20),
    nome character varying(100) NOT NULL,
    email character varying(50) NOT NULL,
    telefone character varying(50) NOT NULL,
    endereco character varying(100) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16562    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    212                       0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    211            �            1259    16554    funcionario    TABLE     4  CREATE TABLE public.funcionario (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cargo character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    telefone character varying(50) NOT NULL,
    endereco character varying(100) NOT NULL,
    salario integer NOT NULL
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    16553    funcionario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.funcionario_id_seq;
       public          postgres    false    210                       0    0    funcionario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.funcionario_id_seq OWNED BY public.funcionario.id;
          public          postgres    false    209            �            1259    16601    pedido    TABLE     �   CREATE TABLE public.pedido (
    id integer NOT NULL,
    id_funcionario integer NOT NULL,
    id_cliente integer NOT NULL,
    id_produto integer NOT NULL,
    preco numeric(10,2) NOT NULL
);
    DROP TABLE public.pedido;
       public         heap    postgres    false            �            1259    16600    pedido_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pedido_id_seq;
       public          postgres    false    216                       0    0    pedido_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.pedido_id_seq OWNED BY public.pedido.id;
          public          postgres    false    215            �            1259    16594    produto    TABLE     �   CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    preco numeric(10,2) NOT NULL,
    descricao character varying(100) NOT NULL,
    categoria integer NOT NULL,
    estoque integer
);
    DROP TABLE public.produto;
       public         heap    postgres    false            �            1259    16593    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          postgres    false    214                       0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          postgres    false    213            l           2604    16566 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            k           2604    16557    funcionario id    DEFAULT     p   ALTER TABLE ONLY public.funcionario ALTER COLUMN id SET DEFAULT nextval('public.funcionario_id_seq'::regclass);
 =   ALTER TABLE public.funcionario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            n           2604    16604 	   pedido id    DEFAULT     f   ALTER TABLE ONLY public.pedido ALTER COLUMN id SET DEFAULT nextval('public.pedido_id_seq'::regclass);
 8   ALTER TABLE public.pedido ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            m           2604    16597 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214                      0    16563    cliente 
   TABLE DATA                 public          postgres    false    212   X(       
          0    16554    funcionario 
   TABLE DATA                 public          postgres    false    210   �)                 0    16601    pedido 
   TABLE DATA                 public          postgres    false    216   �*                 0    16594    produto 
   TABLE DATA                 public          postgres    false    214   b+                  0    0    cliente_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cliente_id_seq', 4, true);
          public          postgres    false    211                       0    0    funcionario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.funcionario_id_seq', 4, true);
          public          postgres    false    209                       0    0    pedido_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pedido_id_seq', 4, true);
          public          postgres    false    215                       0    0    produto_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.produto_id_seq', 4, true);
          public          postgres    false    213            t           2606    16570    cliente cliente_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_email_key;
       public            postgres    false    212            v           2606    16568    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    212            p           2606    16561 !   funcionario funcionario_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_email_key UNIQUE (email);
 K   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_email_key;
       public            postgres    false    210            r           2606    16559    funcionario funcionario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    210            z           2606    16606    pedido pedido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public            postgres    false    216            x           2606    16599    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    214            |           2606    16612    pedido pedido_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_cliente_fkey;
       public          postgres    false    3190    212    216            {           2606    16607 !   pedido pedido_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id);
 K   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_funcionario_fkey;
       public          postgres    false    216    3186    210            }           2606    16617    pedido pedido_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES public.produto(id);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_produto_fkey;
       public          postgres    false    3192    214    216               #  x���Ok�0�{?�{�B�?m�.綎��v��6b�I�������t�����//�Gxr�Y�+�yU��mU=�[%M/a����.c��@j��z�ʝ5~a���N�cQ��60�#MX����8�Bt�9�Ϗ{��wf��~�%4c��$@�mg���U'L#��y8��ò��E���^V�9y���Q�hJb��Ѵ�^�Цq�~ʆ���F8hl'� 'w�cO!��(�`ޤs��K���9F�v�@���vv7;?#�R'�c��8;z~u�Qz�6V}E!%� !�V      
     x�Œ_K�0���)��6(c����2���\�=&YI��6��&��P�My��$����d�}i�$M'��$[�f�hj����hӉ���@tT����h�ͅ�_�T�OKx��^�{X�̟�m�����`������Y`�P�p�u���z'��j��<V妁�H��J�t;+�� �(G5�M0�*���I�s􍠌c#Bv5�4 H���B|���y��<O�md~��l/��Iس�/��i�|�R��?���]��/���L��k         �   x�ŏ�
�0��>ō-��1��Ij�@I�FW�$�AIBh��qu�������w���E�R���	U�F��D]��+Z��>��Մ��&�>8���(W�m?\��u)$s�jH[���	~X'� �yf��+�_��zb�����Oh�4�O��-Po��         �   x���͊�0�{�bn*�u� O�g@X��i4�&5m�id_l'�O{[o��?���y�����+J��u�k=�f�|e��(�@�F���
[s��"Ӵ�љ\ק���	�A�S~�`9N�g�;�ا�,���b���̏\V	�WFt���^+zM�`�Ԧ��ͨ)1��ee�~�Qj�f�A�l�Q0�7�ۉ��~���[
/��%��a�l     