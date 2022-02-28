PGDMP     7    -                z         	   dufitetax #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) �   F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    27239 	   dufitetax    DATABASE     {   CREATE DATABASE dufitetax WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE dufitetax;
                postgres    false            J           0    0    DATABASE dufitetax    ACL     ~   GRANT ALL ON DATABASE dufitetax TO admin;
GRANT ALL ON DATABASE dufitetax TO dieudo;
GRANT ALL ON DATABASE dufitetax TO root;
                   postgres    false    3657            �            1259    27253    components_animation_animations    TABLE     r   CREATE TABLE public.components_animation_animations (
    id integer NOT NULL,
    type character varying(255)
);
 3   DROP TABLE public.components_animation_animations;
       public         heap    admin    false            �            1259    27251 &   components_animation_animations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_animation_animations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_animation_animations_id_seq;
       public          admin    false    205            K           0    0 &   components_animation_animations_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_animation_animations_id_seq OWNED BY public.components_animation_animations.id;
          public          admin    false    204            �            1259    27261    components_link_anchors    TABLE     �   CREATE TABLE public.components_link_anchors (
    id integer NOT NULL,
    title character varying(255),
    "to" character varying(255)
);
 +   DROP TABLE public.components_link_anchors;
       public         heap    admin    false            �            1259    27259    components_link_anchors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_link_anchors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_link_anchors_id_seq;
       public          admin    false    207            L           0    0    components_link_anchors_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_link_anchors_id_seq OWNED BY public.components_link_anchors.id;
          public          admin    false    206            �            1259    27272    components_link_external_pages    TABLE     �  CREATE TABLE public.components_link_external_pages (
    id integer NOT NULL,
    text character varying(255),
    bg_color character varying(255),
    bg_color_hover character varying(255),
    text_color character varying(255),
    text_color_hover character varying(255),
    border_color character varying(255),
    border_color_hover character varying(255),
    link character varying(255)
);
 2   DROP TABLE public.components_link_external_pages;
       public         heap    admin    false            �            1259    27270 %   components_link_external_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_link_external_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_link_external_pages_id_seq;
       public          admin    false    209            M           0    0 %   components_link_external_pages_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_link_external_pages_id_seq OWNED BY public.components_link_external_pages.id;
          public          admin    false    208            �            1259    27283    components_link_image_links    TABLE     w   CREATE TABLE public.components_link_image_links (
    id integer NOT NULL,
    external_page character varying(255)
);
 /   DROP TABLE public.components_link_image_links;
       public         heap    admin    false            �            1259    27281 "   components_link_image_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_link_image_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_link_image_links_id_seq;
       public          admin    false    211            N           0    0 "   components_link_image_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_link_image_links_id_seq OWNED BY public.components_link_image_links.id;
          public          admin    false    210            �            1259    27291    components_navigation_links    TABLE     _   CREATE TABLE public.components_navigation_links (
    id integer NOT NULL,
    page integer
);
 /   DROP TABLE public.components_navigation_links;
       public         heap    admin    false            �            1259    27299 &   components_navigation_links_components    TABLE     ,  CREATE TABLE public.components_navigation_links_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_navigation_link_id integer NOT NULL
);
 :   DROP TABLE public.components_navigation_links_components;
       public         heap    admin    false            �            1259    27297 -   components_navigation_links_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_navigation_links_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_navigation_links_components_id_seq;
       public          admin    false    215            O           0    0 -   components_navigation_links_components_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_navigation_links_components_id_seq OWNED BY public.components_navigation_links_components.id;
          public          admin    false    214            �            1259    27289 "   components_navigation_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_navigation_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_navigation_links_id_seq;
       public          admin    false    213            P           0    0 "   components_navigation_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_navigation_links_id_seq OWNED BY public.components_navigation_links.id;
          public          admin    false    212            �            1259    27315    components_navigation_logos    TABLE     \   CREATE TABLE public.components_navigation_logos (
    id integer NOT NULL,
    text text
);
 /   DROP TABLE public.components_navigation_logos;
       public         heap    admin    false            �            1259    27313 "   components_navigation_logos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_navigation_logos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_navigation_logos_id_seq;
       public          admin    false    217            Q           0    0 "   components_navigation_logos_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_navigation_logos_id_seq OWNED BY public.components_navigation_logos.id;
          public          admin    false    216            �            1259    27326    components_page_bg_image_texts    TABLE     z   CREATE TABLE public.components_page_bg_image_texts (
    id integer NOT NULL,
    text text,
    is_full_width boolean
);
 2   DROP TABLE public.components_page_bg_image_texts;
       public         heap    admin    false            �            1259    27337 )   components_page_bg_image_texts_components    TABLE     2  CREATE TABLE public.components_page_bg_image_texts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_bg_image_text_id integer NOT NULL
);
 =   DROP TABLE public.components_page_bg_image_texts_components;
       public         heap    admin    false            �            1259    27335 0   components_page_bg_image_texts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_bg_image_texts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_page_bg_image_texts_components_id_seq;
       public          admin    false    221            R           0    0 0   components_page_bg_image_texts_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_bg_image_texts_components_id_seq OWNED BY public.components_page_bg_image_texts_components.id;
          public          admin    false    220            �            1259    27324 %   components_page_bg_image_texts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_bg_image_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_bg_image_texts_id_seq;
       public          admin    false    219            S           0    0 %   components_page_bg_image_texts_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_bg_image_texts_id_seq OWNED BY public.components_page_bg_image_texts.id;
          public          admin    false    218            �            1259    27353    components_page_buttons    TABLE     �  CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    text character varying(255),
    bg_color character varying(255),
    bg_color_hover character varying(255),
    page integer,
    text_color character varying(255),
    text_color_hover character varying(255),
    border_color character varying(255),
    border_color_hover character varying(255),
    color character varying(255),
    color_hover character varying(255),
    external_page character varying(255)
);
 +   DROP TABLE public.components_page_buttons;
       public         heap    admin    false            �            1259    27351    components_page_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_buttons_id_seq;
       public          admin    false    223            T           0    0    components_page_buttons_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;
          public          admin    false    222            �            1259    27364    components_page_call2actions    TABLE     �   CREATE TABLE public.components_page_call2actions (
    id integer NOT NULL,
    text text,
    first_element character varying(255),
    section_width character varying(255),
    bigger_items character varying(255)
);
 0   DROP TABLE public.components_page_call2actions;
       public         heap    admin    false            �            1259    27375 '   components_page_call2actions_components    TABLE     .  CREATE TABLE public.components_page_call2actions_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_call2action_id integer NOT NULL
);
 ;   DROP TABLE public.components_page_call2actions_components;
       public         heap    admin    false            �            1259    27373 .   components_page_call2actions_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_call2actions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_page_call2actions_components_id_seq;
       public          admin    false    227            U           0    0 .   components_page_call2actions_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_call2actions_components_id_seq OWNED BY public.components_page_call2actions_components.id;
          public          admin    false    226            �            1259    27362 #   components_page_call2actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_call2actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_page_call2actions_id_seq;
       public          admin    false    225            V           0    0 #   components_page_call2actions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_page_call2actions_id_seq OWNED BY public.components_page_call2actions.id;
          public          admin    false    224            �            1259    27391    components_page_cards    TABLE     �   CREATE TABLE public.components_page_cards (
    id integer NOT NULL,
    color character varying(255),
    page integer,
    text text
);
 )   DROP TABLE public.components_page_cards;
       public         heap    admin    false            �            1259    27389    components_page_cards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.components_page_cards_id_seq;
       public          admin    false    229            W           0    0    components_page_cards_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.components_page_cards_id_seq OWNED BY public.components_page_cards.id;
          public          admin    false    228            �            1259    27402    components_page_ctas    TABLE     U   CREATE TABLE public.components_page_ctas (
    id integer NOT NULL,
    text text
);
 (   DROP TABLE public.components_page_ctas;
       public         heap    admin    false            �            1259    27413    components_page_ctas_components    TABLE       CREATE TABLE public.components_page_ctas_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_cta_id integer NOT NULL
);
 3   DROP TABLE public.components_page_ctas_components;
       public         heap    admin    false            �            1259    27411 &   components_page_ctas_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_ctas_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_page_ctas_components_id_seq;
       public          admin    false    233            X           0    0 &   components_page_ctas_components_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_page_ctas_components_id_seq OWNED BY public.components_page_ctas_components.id;
          public          admin    false    232            �            1259    27400    components_page_ctas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_ctas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.components_page_ctas_id_seq;
       public          admin    false    231            Y           0    0    components_page_ctas_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.components_page_ctas_id_seq OWNED BY public.components_page_ctas.id;
          public          admin    false    230            �            1259    27429    components_page_grids    TABLE     V   CREATE TABLE public.components_page_grids (
    id integer NOT NULL,
    text text
);
 )   DROP TABLE public.components_page_grids;
       public         heap    admin    false            �            1259    27440     components_page_grids_components    TABLE        CREATE TABLE public.components_page_grids_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_grid_id integer NOT NULL
);
 4   DROP TABLE public.components_page_grids_components;
       public         heap    admin    false            �            1259    27438 '   components_page_grids_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_grids_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_page_grids_components_id_seq;
       public          admin    false    237            Z           0    0 '   components_page_grids_components_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_page_grids_components_id_seq OWNED BY public.components_page_grids_components.id;
          public          admin    false    236            �            1259    27427    components_page_grids_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_grids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.components_page_grids_id_seq;
       public          admin    false    235            [           0    0    components_page_grids_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.components_page_grids_id_seq OWNED BY public.components_page_grids.id;
          public          admin    false    234            �            1259    27456    components_page_headers    TABLE     j   CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    text character varying(255)
);
 +   DROP TABLE public.components_page_headers;
       public         heap    admin    false            �            1259    27464 "   components_page_headers_components    TABLE     $  CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_header_id integer NOT NULL
);
 6   DROP TABLE public.components_page_headers_components;
       public         heap    admin    false            �            1259    27462 )   components_page_headers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_page_headers_components_id_seq;
       public          admin    false    241            \           0    0 )   components_page_headers_components_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;
          public          admin    false    240            �            1259    27454    components_page_headers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_headers_id_seq;
       public          admin    false    239            ]           0    0    components_page_headers_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;
          public          admin    false    238            �            1259    27480    components_page_hero_images    TABLE     \   CREATE TABLE public.components_page_hero_images (
    id integer NOT NULL,
    text text
);
 /   DROP TABLE public.components_page_hero_images;
       public         heap    admin    false            �            1259    27491 &   components_page_hero_images_components    TABLE     ,  CREATE TABLE public.components_page_hero_images_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_hero_image_id integer NOT NULL
);
 :   DROP TABLE public.components_page_hero_images_components;
       public         heap    admin    false            �            1259    27489 -   components_page_hero_images_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_hero_images_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_page_hero_images_components_id_seq;
       public          admin    false    245            ^           0    0 -   components_page_hero_images_components_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_page_hero_images_components_id_seq OWNED BY public.components_page_hero_images_components.id;
          public          admin    false    244            �            1259    27478 "   components_page_hero_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_hero_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_page_hero_images_id_seq;
       public          admin    false    243            _           0    0 "   components_page_hero_images_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_page_hero_images_id_seq OWNED BY public.components_page_hero_images.id;
          public          admin    false    242            �            1259    27507    components_page_paragraphs    TABLE     [   CREATE TABLE public.components_page_paragraphs (
    id integer NOT NULL,
    text text
);
 .   DROP TABLE public.components_page_paragraphs;
       public         heap    admin    false            �            1259    27518 %   components_page_paragraphs_components    TABLE     *  CREATE TABLE public.components_page_paragraphs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_paragraph_id integer NOT NULL
);
 9   DROP TABLE public.components_page_paragraphs_components;
       public         heap    admin    false            �            1259    27516 ,   components_page_paragraphs_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_paragraphs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_page_paragraphs_components_id_seq;
       public          admin    false    249            `           0    0 ,   components_page_paragraphs_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_page_paragraphs_components_id_seq OWNED BY public.components_page_paragraphs_components.id;
          public          admin    false    248            �            1259    27505 !   components_page_paragraphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_paragraphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_page_paragraphs_id_seq;
       public          admin    false    247            a           0    0 !   components_page_paragraphs_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_page_paragraphs_id_seq OWNED BY public.components_page_paragraphs.id;
          public          admin    false    246            �            1259    27534 !   components_page_rich_text2_images    TABLE     �   CREATE TABLE public.components_page_rich_text2_images (
    id integer NOT NULL,
    text text,
    first_element character varying(255),
    second_element character varying(255)
);
 5   DROP TABLE public.components_page_rich_text2_images;
       public         heap    admin    false            �            1259    27549 ,   components_page_rich_text2_images_components    TABLE     8  CREATE TABLE public.components_page_rich_text2_images_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_rich_text2_image_id integer NOT NULL
);
 @   DROP TABLE public.components_page_rich_text2_images_components;
       public         heap    admin    false            �            1259    27547 3   components_page_rich_text2_images_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_rich_text2_images_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_page_rich_text2_images_components_id_seq;
       public          admin    false    253            b           0    0 3   components_page_rich_text2_images_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_rich_text2_images_components_id_seq OWNED BY public.components_page_rich_text2_images_components.id;
          public          admin    false    252            �            1259    27532 (   components_page_rich_text2_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_rich_text2_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_page_rich_text2_images_id_seq;
       public          admin    false    251            c           0    0 (   components_page_rich_text2_images_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_page_rich_text2_images_id_seq OWNED BY public.components_page_rich_text2_images.id;
          public          admin    false    250            �            1259    27565     components_page_richtext_buttons    TABLE     �   CREATE TABLE public.components_page_richtext_buttons (
    id integer NOT NULL,
    text text,
    first_element character varying(255)
);
 4   DROP TABLE public.components_page_richtext_buttons;
       public         heap    admin    false                       1259    27576 +   components_page_richtext_buttons_components    TABLE     6  CREATE TABLE public.components_page_richtext_buttons_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_richtext_button_id integer NOT NULL
);
 ?   DROP TABLE public.components_page_richtext_buttons_components;
       public         heap    admin    false                        1259    27574 2   components_page_richtext_buttons_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_richtext_buttons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_page_richtext_buttons_components_id_seq;
       public          admin    false    257            d           0    0 2   components_page_richtext_buttons_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_richtext_buttons_components_id_seq OWNED BY public.components_page_richtext_buttons_components.id;
          public          admin    false    256            �            1259    27563 '   components_page_richtext_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_richtext_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_page_richtext_buttons_id_seq;
       public          admin    false    255            e           0    0 '   components_page_richtext_buttons_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_page_richtext_buttons_id_seq OWNED BY public.components_page_richtext_buttons.id;
          public          admin    false    254                       1259    27592 !   components_page_slider_image_ctas    TABLE     S   CREATE TABLE public.components_page_slider_image_ctas (
    id integer NOT NULL
);
 5   DROP TABLE public.components_page_slider_image_ctas;
       public         heap    admin    false                       1259    27600 ,   components_page_slider_image_ctas_components    TABLE     8  CREATE TABLE public.components_page_slider_image_ctas_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_slider_image_cta_id integer NOT NULL
);
 @   DROP TABLE public.components_page_slider_image_ctas_components;
       public         heap    admin    false                       1259    27598 3   components_page_slider_image_ctas_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_slider_image_ctas_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_page_slider_image_ctas_components_id_seq;
       public          admin    false    261            f           0    0 3   components_page_slider_image_ctas_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_slider_image_ctas_components_id_seq OWNED BY public.components_page_slider_image_ctas_components.id;
          public          admin    false    260                       1259    27590 (   components_page_slider_image_ctas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_slider_image_ctas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_page_slider_image_ctas_id_seq;
       public          admin    false    259            g           0    0 (   components_page_slider_image_ctas_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_page_slider_image_ctas_id_seq OWNED BY public.components_page_slider_image_ctas.id;
          public          admin    false    258                       1259    27616    components_page_sliders    TABLE     �   CREATE TABLE public.components_page_sliders (
    id integer NOT NULL,
    first_element character varying(255),
    text text
);
 +   DROP TABLE public.components_page_sliders;
       public         heap    admin    false            	           1259    27627 "   components_page_sliders_components    TABLE     $  CREATE TABLE public.components_page_sliders_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_slider_id integer NOT NULL
);
 6   DROP TABLE public.components_page_sliders_components;
       public         heap    admin    false                       1259    27625 )   components_page_sliders_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_sliders_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_page_sliders_components_id_seq;
       public          admin    false    265            h           0    0 )   components_page_sliders_components_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_page_sliders_components_id_seq OWNED BY public.components_page_sliders_components.id;
          public          admin    false    264                       1259    27614    components_page_sliders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_sliders_id_seq;
       public          admin    false    263            i           0    0    components_page_sliders_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_sliders_id_seq OWNED BY public.components_page_sliders.id;
          public          admin    false    262                       1259    27684    components_page_styles    TABLE     �   CREATE TABLE public.components_page_styles (
    id integer NOT NULL,
    css_id character varying(255),
    css_classes character varying(255)
);
 *   DROP TABLE public.components_page_styles;
       public         heap    admin    false                       1259    27682    components_page_styles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_styles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_page_styles_id_seq;
       public          admin    false    275            j           0    0    components_page_styles_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_page_styles_id_seq OWNED BY public.components_page_styles.id;
          public          admin    false    274                       1259    27643    components_page_text_positions    TABLE     �   CREATE TABLE public.components_page_text_positions (
    id integer NOT NULL,
    vertical character varying(255),
    horizontal character varying(255)
);
 2   DROP TABLE public.components_page_text_positions;
       public         heap    admin    false            
           1259    27641 %   components_page_text_positions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_text_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_text_positions_id_seq;
       public          admin    false    267            k           0    0 %   components_page_text_positions_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_text_positions_id_seq OWNED BY public.components_page_text_positions.id;
          public          admin    false    266                       1259    27654    components_slider_settings    TABLE     %  CREATE TABLE public.components_slider_settings (
    id integer NOT NULL,
    slide_to_show integer,
    slide_to_scroll integer,
    direction character varying(255),
    vertical_swipe boolean,
    speed integer,
    arrows boolean,
    dots boolean,
    fade boolean,
    infinite boolean,
    pause_on_focus boolean,
    pause_on_hover boolean,
    pause_on_dots_hover boolean,
    breakpoint integer,
    center_mode boolean,
    center_padding integer,
    auto_play boolean,
    swipe boolean,
    rows integer,
    slides_per_row integer
);
 .   DROP TABLE public.components_slider_settings;
       public         heap    admin    false                       1259    27652 !   components_slider_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_slider_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_slider_settings_id_seq;
       public          admin    false    269            l           0    0 !   components_slider_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_slider_settings_id_seq OWNED BY public.components_slider_settings.id;
          public          admin    false    268                       1259    27662    components_style_bg_colors    TABLE     �   CREATE TABLE public.components_style_bg_colors (
    id integer NOT NULL,
    color character varying(255),
    color_hover character varying(255)
);
 .   DROP TABLE public.components_style_bg_colors;
       public         heap    admin    false                       1259    27660 !   components_style_bg_colors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_style_bg_colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_style_bg_colors_id_seq;
       public          admin    false    271            m           0    0 !   components_style_bg_colors_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_style_bg_colors_id_seq OWNED BY public.components_style_bg_colors.id;
          public          admin    false    270                       1259    27673    components_style_colors    TABLE     �   CREATE TABLE public.components_style_colors (
    id integer NOT NULL,
    normal character varying(255),
    hover character varying(255)
);
 +   DROP TABLE public.components_style_colors;
       public         heap    admin    false                       1259    27671    components_style_colors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_style_colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_style_colors_id_seq;
       public          admin    false    273            n           0    0    components_style_colors_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_style_colors_id_seq OWNED BY public.components_style_colors.id;
          public          admin    false    272            �            1259    27242 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    admin    false            �            1259    27240    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          admin    false    203            o           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          admin    false    202                       1259    27695    footers    TABLE     �  CREATE TABLE public.footers (
    id integer NOT NULL,
    copyright character varying(255),
    facebook character varying(255),
    twitter character varying(255),
    instagram character varying(255),
    linkedin character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.footers;
       public         heap    admin    false                       1259    27708    footers_components    TABLE       CREATE TABLE public.footers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    footer_id integer NOT NULL
);
 &   DROP TABLE public.footers_components;
       public         heap    admin    false                       1259    27706    footers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.footers_components_id_seq;
       public          admin    false    279            p           0    0    footers_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.footers_components_id_seq OWNED BY public.footers_components.id;
          public          admin    false    278                       1259    27693    footers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.footers_id_seq;
       public          admin    false    277            q           0    0    footers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;
          public          admin    false    276            +           1259    27846    i18n_locales    TABLE     6  CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.i18n_locales;
       public         heap    admin    false            *           1259    27844    i18n_locales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.i18n_locales_id_seq;
       public          admin    false    299            r           0    0    i18n_locales_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;
          public          admin    false    298                       1259    27724    navigations    TABLE     C  CREATE TABLE public.navigations (
    id integer NOT NULL,
    phone character varying(255) NOT NULL,
    location character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.navigations;
       public         heap    admin    false                       1259    27737    navigations_components    TABLE       CREATE TABLE public.navigations_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    navigation_id integer NOT NULL
);
 *   DROP TABLE public.navigations_components;
       public         heap    admin    false                       1259    27735    navigations_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.navigations_components_id_seq;
       public          admin    false    283            s           0    0    navigations_components_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.navigations_components_id_seq OWNED BY public.navigations_components.id;
          public          admin    false    282                       1259    27722    navigations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.navigations_id_seq;
       public          admin    false    281            t           0    0    navigations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.navigations_id_seq OWNED BY public.navigations.id;
          public          admin    false    280                       1259    27753    pages    TABLE     [  CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.pages;
       public         heap    admin    false                       1259    27768    pages_components    TABLE        CREATE TABLE public.pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    page_id integer NOT NULL
);
 $   DROP TABLE public.pages_components;
       public         heap    admin    false                       1259    27766    pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pages_components_id_seq;
       public          admin    false    287            u           0    0    pages_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;
          public          admin    false    286                       1259    27751    pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public          admin    false    285            v           0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
          public          admin    false    284            '           1259    27825    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    admin    false            &           1259    27823    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          admin    false    295            w           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          admin    false    294            #           1259    27795    strapi_permission    TABLE     W  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    admin    false            "           1259    27793    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          admin    false    291            x           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          admin    false    290            %           1259    27808    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    admin    false            $           1259    27806    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          admin    false    293            y           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          admin    false    292            )           1259    27838    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    admin    false            (           1259    27836    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          admin    false    297            z           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          admin    false    296            !           1259    27784    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    admin    false                        1259    27782    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          admin    false    289            {           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          admin    false    288            -           1259    27861    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    admin    false            ,           1259    27859    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          admin    false    301            |           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          admin    false    300            /           1259    27874    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    admin    false            .           1259    27872    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          admin    false    303            }           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          admin    false    302            1           1259    27885    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    admin    false            0           1259    27883 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          admin    false    305            ~           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          admin    false    304            3           1259    27896    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    admin    false            2           1259    27894    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          admin    false    307                       0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          admin    false    306            5           1259    27909    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    admin    false            4           1259    27907    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          admin    false    309            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          admin    false    308            �           2604    27256 "   components_animation_animations id    DEFAULT     �   ALTER TABLE ONLY public.components_animation_animations ALTER COLUMN id SET DEFAULT nextval('public.components_animation_animations_id_seq'::regclass);
 Q   ALTER TABLE public.components_animation_animations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    204    205    205            �           2604    27264    components_link_anchors id    DEFAULT     �   ALTER TABLE ONLY public.components_link_anchors ALTER COLUMN id SET DEFAULT nextval('public.components_link_anchors_id_seq'::regclass);
 I   ALTER TABLE public.components_link_anchors ALTER COLUMN id DROP DEFAULT;
       public          admin    false    207    206    207            �           2604    27275 !   components_link_external_pages id    DEFAULT     �   ALTER TABLE ONLY public.components_link_external_pages ALTER COLUMN id SET DEFAULT nextval('public.components_link_external_pages_id_seq'::regclass);
 P   ALTER TABLE public.components_link_external_pages ALTER COLUMN id DROP DEFAULT;
       public          admin    false    208    209    209            �           2604    27286    components_link_image_links id    DEFAULT     �   ALTER TABLE ONLY public.components_link_image_links ALTER COLUMN id SET DEFAULT nextval('public.components_link_image_links_id_seq'::regclass);
 M   ALTER TABLE public.components_link_image_links ALTER COLUMN id DROP DEFAULT;
       public          admin    false    211    210    211            �           2604    27294    components_navigation_links id    DEFAULT     �   ALTER TABLE ONLY public.components_navigation_links ALTER COLUMN id SET DEFAULT nextval('public.components_navigation_links_id_seq'::regclass);
 M   ALTER TABLE public.components_navigation_links ALTER COLUMN id DROP DEFAULT;
       public          admin    false    213    212    213            �           2604    27302 )   components_navigation_links_components id    DEFAULT     �   ALTER TABLE ONLY public.components_navigation_links_components ALTER COLUMN id SET DEFAULT nextval('public.components_navigation_links_components_id_seq'::regclass);
 X   ALTER TABLE public.components_navigation_links_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    215    214    215            �           2604    27318    components_navigation_logos id    DEFAULT     �   ALTER TABLE ONLY public.components_navigation_logos ALTER COLUMN id SET DEFAULT nextval('public.components_navigation_logos_id_seq'::regclass);
 M   ALTER TABLE public.components_navigation_logos ALTER COLUMN id DROP DEFAULT;
       public          admin    false    217    216    217            �           2604    27329 !   components_page_bg_image_texts id    DEFAULT     �   ALTER TABLE ONLY public.components_page_bg_image_texts ALTER COLUMN id SET DEFAULT nextval('public.components_page_bg_image_texts_id_seq'::regclass);
 P   ALTER TABLE public.components_page_bg_image_texts ALTER COLUMN id DROP DEFAULT;
       public          admin    false    218    219    219            �           2604    27340 ,   components_page_bg_image_texts_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_bg_image_texts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_bg_image_texts_components_id_seq'::regclass);
 [   ALTER TABLE public.components_page_bg_image_texts_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    221    220    221            �           2604    27356    components_page_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);
 I   ALTER TABLE public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
       public          admin    false    222    223    223            �           2604    27367    components_page_call2actions id    DEFAULT     �   ALTER TABLE ONLY public.components_page_call2actions ALTER COLUMN id SET DEFAULT nextval('public.components_page_call2actions_id_seq'::regclass);
 N   ALTER TABLE public.components_page_call2actions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    225    224    225            �           2604    27378 *   components_page_call2actions_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_call2actions_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_call2actions_components_id_seq'::regclass);
 Y   ALTER TABLE public.components_page_call2actions_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    227    226    227            �           2604    27394    components_page_cards id    DEFAULT     �   ALTER TABLE ONLY public.components_page_cards ALTER COLUMN id SET DEFAULT nextval('public.components_page_cards_id_seq'::regclass);
 G   ALTER TABLE public.components_page_cards ALTER COLUMN id DROP DEFAULT;
       public          admin    false    229    228    229            �           2604    27405    components_page_ctas id    DEFAULT     �   ALTER TABLE ONLY public.components_page_ctas ALTER COLUMN id SET DEFAULT nextval('public.components_page_ctas_id_seq'::regclass);
 F   ALTER TABLE public.components_page_ctas ALTER COLUMN id DROP DEFAULT;
       public          admin    false    231    230    231            �           2604    27416 "   components_page_ctas_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_ctas_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_ctas_components_id_seq'::regclass);
 Q   ALTER TABLE public.components_page_ctas_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    232    233    233            �           2604    27432    components_page_grids id    DEFAULT     �   ALTER TABLE ONLY public.components_page_grids ALTER COLUMN id SET DEFAULT nextval('public.components_page_grids_id_seq'::regclass);
 G   ALTER TABLE public.components_page_grids ALTER COLUMN id DROP DEFAULT;
       public          admin    false    235    234    235            �           2604    27443 #   components_page_grids_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_grids_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_grids_components_id_seq'::regclass);
 R   ALTER TABLE public.components_page_grids_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    237    236    237            �           2604    27459    components_page_headers id    DEFAULT     �   ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);
 I   ALTER TABLE public.components_page_headers ALTER COLUMN id DROP DEFAULT;
       public          admin    false    239    238    239            �           2604    27467 %   components_page_headers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);
 T   ALTER TABLE public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    241    240    241            �           2604    27483    components_page_hero_images id    DEFAULT     �   ALTER TABLE ONLY public.components_page_hero_images ALTER COLUMN id SET DEFAULT nextval('public.components_page_hero_images_id_seq'::regclass);
 M   ALTER TABLE public.components_page_hero_images ALTER COLUMN id DROP DEFAULT;
       public          admin    false    242    243    243            �           2604    27494 )   components_page_hero_images_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_hero_images_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_hero_images_components_id_seq'::regclass);
 X   ALTER TABLE public.components_page_hero_images_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    245    244    245            �           2604    27510    components_page_paragraphs id    DEFAULT     �   ALTER TABLE ONLY public.components_page_paragraphs ALTER COLUMN id SET DEFAULT nextval('public.components_page_paragraphs_id_seq'::regclass);
 L   ALTER TABLE public.components_page_paragraphs ALTER COLUMN id DROP DEFAULT;
       public          admin    false    247    246    247            �           2604    27521 (   components_page_paragraphs_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_paragraphs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_paragraphs_components_id_seq'::regclass);
 W   ALTER TABLE public.components_page_paragraphs_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    249    248    249            �           2604    27537 $   components_page_rich_text2_images id    DEFAULT     �   ALTER TABLE ONLY public.components_page_rich_text2_images ALTER COLUMN id SET DEFAULT nextval('public.components_page_rich_text2_images_id_seq'::regclass);
 S   ALTER TABLE public.components_page_rich_text2_images ALTER COLUMN id DROP DEFAULT;
       public          admin    false    251    250    251            �           2604    27552 /   components_page_rich_text2_images_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_rich_text2_images_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_rich_text2_images_components_id_seq'::regclass);
 ^   ALTER TABLE public.components_page_rich_text2_images_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    253    252    253            �           2604    27568 #   components_page_richtext_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_richtext_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_richtext_buttons_id_seq'::regclass);
 R   ALTER TABLE public.components_page_richtext_buttons ALTER COLUMN id DROP DEFAULT;
       public          admin    false    255    254    255            �           2604    27579 .   components_page_richtext_buttons_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_richtext_buttons_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_richtext_buttons_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_page_richtext_buttons_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    257    256    257            �           2604    27595 $   components_page_slider_image_ctas id    DEFAULT     �   ALTER TABLE ONLY public.components_page_slider_image_ctas ALTER COLUMN id SET DEFAULT nextval('public.components_page_slider_image_ctas_id_seq'::regclass);
 S   ALTER TABLE public.components_page_slider_image_ctas ALTER COLUMN id DROP DEFAULT;
       public          admin    false    258    259    259            �           2604    27603 /   components_page_slider_image_ctas_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_slider_image_ctas_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_slider_image_ctas_components_id_seq'::regclass);
 ^   ALTER TABLE public.components_page_slider_image_ctas_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    260    261    261            �           2604    27619    components_page_sliders id    DEFAULT     �   ALTER TABLE ONLY public.components_page_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_page_sliders_id_seq'::regclass);
 I   ALTER TABLE public.components_page_sliders ALTER COLUMN id DROP DEFAULT;
       public          admin    false    262    263    263            �           2604    27630 %   components_page_sliders_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_sliders_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_sliders_components_id_seq'::regclass);
 T   ALTER TABLE public.components_page_sliders_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    265    264    265            �           2604    27687    components_page_styles id    DEFAULT     �   ALTER TABLE ONLY public.components_page_styles ALTER COLUMN id SET DEFAULT nextval('public.components_page_styles_id_seq'::regclass);
 H   ALTER TABLE public.components_page_styles ALTER COLUMN id DROP DEFAULT;
       public          admin    false    275    274    275            �           2604    27646 !   components_page_text_positions id    DEFAULT     �   ALTER TABLE ONLY public.components_page_text_positions ALTER COLUMN id SET DEFAULT nextval('public.components_page_text_positions_id_seq'::regclass);
 P   ALTER TABLE public.components_page_text_positions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    266    267    267            �           2604    27657    components_slider_settings id    DEFAULT     �   ALTER TABLE ONLY public.components_slider_settings ALTER COLUMN id SET DEFAULT nextval('public.components_slider_settings_id_seq'::regclass);
 L   ALTER TABLE public.components_slider_settings ALTER COLUMN id DROP DEFAULT;
       public          admin    false    268    269    269            �           2604    27665    components_style_bg_colors id    DEFAULT     �   ALTER TABLE ONLY public.components_style_bg_colors ALTER COLUMN id SET DEFAULT nextval('public.components_style_bg_colors_id_seq'::regclass);
 L   ALTER TABLE public.components_style_bg_colors ALTER COLUMN id DROP DEFAULT;
       public          admin    false    270    271    271            �           2604    27676    components_style_colors id    DEFAULT     �   ALTER TABLE ONLY public.components_style_colors ALTER COLUMN id SET DEFAULT nextval('public.components_style_colors_id_seq'::regclass);
 I   ALTER TABLE public.components_style_colors ALTER COLUMN id DROP DEFAULT;
       public          admin    false    273    272    273            �           2604    27245    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          admin    false    202    203    203            �           2604    27698 
   footers id    DEFAULT     h   ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);
 9   ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
       public          admin    false    277    276    277            �           2604    27711    footers_components id    DEFAULT     ~   ALTER TABLE ONLY public.footers_components ALTER COLUMN id SET DEFAULT nextval('public.footers_components_id_seq'::regclass);
 D   ALTER TABLE public.footers_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    279    278    279            �           2604    27849    i18n_locales id    DEFAULT     r   ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);
 >   ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
       public          admin    false    298    299    299            �           2604    27727    navigations id    DEFAULT     p   ALTER TABLE ONLY public.navigations ALTER COLUMN id SET DEFAULT nextval('public.navigations_id_seq'::regclass);
 =   ALTER TABLE public.navigations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    281    280    281            �           2604    27740    navigations_components id    DEFAULT     �   ALTER TABLE ONLY public.navigations_components ALTER COLUMN id SET DEFAULT nextval('public.navigations_components_id_seq'::regclass);
 H   ALTER TABLE public.navigations_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    282    283    283            �           2604    27756    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public          admin    false    284    285    285            �           2604    27771    pages_components id    DEFAULT     z   ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);
 B   ALTER TABLE public.pages_components ALTER COLUMN id DROP DEFAULT;
       public          admin    false    287    286    287            �           2604    27828    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          admin    false    294    295    295            �           2604    27798    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          admin    false    291    290    291            �           2604    27811    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          admin    false    293    292    293            �           2604    27841    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          admin    false    296    297    297            �           2604    27787    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          admin    false    289    288    289            �           2604    27864    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          admin    false    300    301    301            �           2604    27877    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          admin    false    302    303    303            �           2604    27888    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    304    305    305            �           2604    27899    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    307    306    307            �           2604    27912    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    308    309    309            �          0    27253    components_animation_animations 
   TABLE DATA           C   COPY public.components_animation_animations (id, type) FROM stdin;
    public          admin    false    205   (      �          0    27261    components_link_anchors 
   TABLE DATA           B   COPY public.components_link_anchors (id, title, "to") FROM stdin;
    public          admin    false    207   U(      �          0    27272    components_link_external_pages 
   TABLE DATA           �   COPY public.components_link_external_pages (id, text, bg_color, bg_color_hover, text_color, text_color_hover, border_color, border_color_hover, link) FROM stdin;
    public          admin    false    209   r(      �          0    27283    components_link_image_links 
   TABLE DATA           H   COPY public.components_link_image_links (id, external_page) FROM stdin;
    public          admin    false    211   ))      �          0    27291    components_navigation_links 
   TABLE DATA           ?   COPY public.components_navigation_links (id, page) FROM stdin;
    public          admin    false    213   F)      �          0    27299 &   components_navigation_links_components 
   TABLE DATA           �   COPY public.components_navigation_links_components (id, field, "order", component_type, component_id, components_navigation_link_id) FROM stdin;
    public          admin    false    215   i)      �          0    27315    components_navigation_logos 
   TABLE DATA           ?   COPY public.components_navigation_logos (id, text) FROM stdin;
    public          admin    false    217   �)      �          0    27326    components_page_bg_image_texts 
   TABLE DATA           Q   COPY public.components_page_bg_image_texts (id, text, is_full_width) FROM stdin;
    public          admin    false    219   �)      �          0    27337 )   components_page_bg_image_texts_components 
   TABLE DATA           �   COPY public.components_page_bg_image_texts_components (id, field, "order", component_type, component_id, components_page_bg_image_text_id) FROM stdin;
    public          admin    false    221   �*      �          0    27353    components_page_buttons 
   TABLE DATA           �   COPY public.components_page_buttons (id, text, bg_color, bg_color_hover, page, text_color, text_color_hover, border_color, border_color_hover, color, color_hover, external_page) FROM stdin;
    public          admin    false    223   +      �          0    27364    components_page_call2actions 
   TABLE DATA           l   COPY public.components_page_call2actions (id, text, first_element, section_width, bigger_items) FROM stdin;
    public          admin    false    225   ~+      �          0    27375 '   components_page_call2actions_components 
   TABLE DATA           �   COPY public.components_page_call2actions_components (id, field, "order", component_type, component_id, components_page_call2action_id) FROM stdin;
    public          admin    false    227   �.      �          0    27391    components_page_cards 
   TABLE DATA           F   COPY public.components_page_cards (id, color, page, text) FROM stdin;
    public          admin    false    229   Z/      �          0    27402    components_page_ctas 
   TABLE DATA           8   COPY public.components_page_ctas (id, text) FROM stdin;
    public          admin    false    231   w/      �          0    27413    components_page_ctas_components 
   TABLE DATA           �   COPY public.components_page_ctas_components (id, field, "order", component_type, component_id, components_page_cta_id) FROM stdin;
    public          admin    false    233   �/      �          0    27429    components_page_grids 
   TABLE DATA           9   COPY public.components_page_grids (id, text) FROM stdin;
    public          admin    false    235   �/      �          0    27440     components_page_grids_components 
   TABLE DATA           �   COPY public.components_page_grids_components (id, field, "order", component_type, component_id, components_page_grid_id) FROM stdin;
    public          admin    false    237   �/      �          0    27456    components_page_headers 
   TABLE DATA           ;   COPY public.components_page_headers (id, text) FROM stdin;
    public          admin    false    239   �/      �          0    27464 "   components_page_headers_components 
   TABLE DATA           �   COPY public.components_page_headers_components (id, field, "order", component_type, component_id, components_page_header_id) FROM stdin;
    public          admin    false    241   0                0    27480    components_page_hero_images 
   TABLE DATA           ?   COPY public.components_page_hero_images (id, text) FROM stdin;
    public          admin    false    243   %0                0    27491 &   components_page_hero_images_components 
   TABLE DATA           �   COPY public.components_page_hero_images_components (id, field, "order", component_type, component_id, components_page_hero_image_id) FROM stdin;
    public          admin    false    245   B0                0    27507    components_page_paragraphs 
   TABLE DATA           >   COPY public.components_page_paragraphs (id, text) FROM stdin;
    public          admin    false    247   _0                0    27518 %   components_page_paragraphs_components 
   TABLE DATA           �   COPY public.components_page_paragraphs_components (id, field, "order", component_type, component_id, components_page_paragraph_id) FROM stdin;
    public          admin    false    249   91      	          0    27534 !   components_page_rich_text2_images 
   TABLE DATA           d   COPY public.components_page_rich_text2_images (id, text, first_element, second_element) FROM stdin;
    public          admin    false    251   �1                0    27549 ,   components_page_rich_text2_images_components 
   TABLE DATA           �   COPY public.components_page_rich_text2_images_components (id, field, "order", component_type, component_id, components_page_rich_text2_image_id) FROM stdin;
    public          admin    false    253   �1                0    27565     components_page_richtext_buttons 
   TABLE DATA           S   COPY public.components_page_richtext_buttons (id, text, first_element) FROM stdin;
    public          admin    false    255   �1                0    27576 +   components_page_richtext_buttons_components 
   TABLE DATA           �   COPY public.components_page_richtext_buttons_components (id, field, "order", component_type, component_id, components_page_richtext_button_id) FROM stdin;
    public          admin    false    257   L2                0    27592 !   components_page_slider_image_ctas 
   TABLE DATA           ?   COPY public.components_page_slider_image_ctas (id) FROM stdin;
    public          admin    false    259   �2                0    27600 ,   components_page_slider_image_ctas_components 
   TABLE DATA           �   COPY public.components_page_slider_image_ctas_components (id, field, "order", component_type, component_id, components_page_slider_image_cta_id) FROM stdin;
    public          admin    false    261   �2                0    27616    components_page_sliders 
   TABLE DATA           J   COPY public.components_page_sliders (id, first_element, text) FROM stdin;
    public          admin    false    263   
3                0    27627 "   components_page_sliders_components 
   TABLE DATA           �   COPY public.components_page_sliders_components (id, field, "order", component_type, component_id, components_page_slider_id) FROM stdin;
    public          admin    false    265   '3      !          0    27684    components_page_styles 
   TABLE DATA           I   COPY public.components_page_styles (id, css_id, css_classes) FROM stdin;
    public          admin    false    275   D3                0    27643    components_page_text_positions 
   TABLE DATA           R   COPY public.components_page_text_positions (id, vertical, horizontal) FROM stdin;
    public          admin    false    267   �3                0    27654    components_slider_settings 
   TABLE DATA             COPY public.components_slider_settings (id, slide_to_show, slide_to_scroll, direction, vertical_swipe, speed, arrows, dots, fade, infinite, pause_on_focus, pause_on_hover, pause_on_dots_hover, breakpoint, center_mode, center_padding, auto_play, swipe, rows, slides_per_row) FROM stdin;
    public          admin    false    269   �3                0    27662    components_style_bg_colors 
   TABLE DATA           L   COPY public.components_style_bg_colors (id, color, color_hover) FROM stdin;
    public          admin    false    271   �3                0    27673    components_style_colors 
   TABLE DATA           D   COPY public.components_style_colors (id, normal, hover) FROM stdin;
    public          admin    false    273   4      �          0    27242 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          admin    false    203   ]4      #          0    27695    footers 
   TABLE DATA           �   COPY public.footers (id, copyright, facebook, twitter, instagram, linkedin, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin    false    277   W      %          0    27708    footers_components 
   TABLE DATA           i   COPY public.footers_components (id, field, "order", component_type, component_id, footer_id) FROM stdin;
    public          admin    false    279   �W      9          0    27846    i18n_locales 
   TABLE DATA           f   COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin    false    299   AX      '          0    27724    navigations 
   TABLE DATA           j   COPY public.navigations (id, phone, location, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin    false    281   �X      )          0    27737    navigations_components 
   TABLE DATA           q   COPY public.navigations_components (id, field, "order", component_type, component_id, navigation_id) FROM stdin;
    public          admin    false    283   Y      +          0    27753    pages 
   TABLE DATA           n   COPY public.pages (id, title, slug, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin    false    285   �Y      -          0    27768    pages_components 
   TABLE DATA           e   COPY public.pages_components (id, field, "order", component_type, component_id, page_id) FROM stdin;
    public          admin    false    287   �Y      5          0    27825    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
    public          admin    false    295   �Z      1          0    27795    strapi_permission 
   TABLE DATA           v   COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
    public          admin    false    291   [      3          0    27808    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          admin    false    293   �a      7          0    27838    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          admin    false    297   �b      /          0    27784    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          admin    false    289   �b      ;          0    27861    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin    false    301   �b      =          0    27874    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          admin    false    303   �h      ?          0    27885    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          admin    false    305   "i      A          0    27896    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          admin    false    307   �o      C          0    27909    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin    false    309   �o      �           0    0 &   components_animation_animations_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_animation_animations_id_seq', 7, true);
          public          admin    false    204            �           0    0    components_link_anchors_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_link_anchors_id_seq', 1, false);
          public          admin    false    206            �           0    0 %   components_link_external_pages_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_link_external_pages_id_seq', 1, true);
          public          admin    false    208            �           0    0 "   components_link_image_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_link_image_links_id_seq', 1, false);
          public          admin    false    210            �           0    0 -   components_navigation_links_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_navigation_links_components_id_seq', 1, false);
          public          admin    false    214            �           0    0 "   components_navigation_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_navigation_links_id_seq', 2, true);
          public          admin    false    212            �           0    0 "   components_navigation_logos_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_navigation_logos_id_seq', 2, true);
          public          admin    false    216            �           0    0 0   components_page_bg_image_texts_components_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.components_page_bg_image_texts_components_id_seq', 3, true);
          public          admin    false    220            �           0    0 %   components_page_bg_image_texts_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_bg_image_texts_id_seq', 1, true);
          public          admin    false    218            �           0    0    components_page_buttons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 3, true);
          public          admin    false    222            �           0    0 .   components_page_call2actions_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_page_call2actions_components_id_seq', 16, true);
          public          admin    false    226            �           0    0 #   components_page_call2actions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_page_call2actions_id_seq', 5, true);
          public          admin    false    224            �           0    0    components_page_cards_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_page_cards_id_seq', 1, false);
          public          admin    false    228            �           0    0 &   components_page_ctas_components_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_page_ctas_components_id_seq', 1, false);
          public          admin    false    232            �           0    0    components_page_ctas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.components_page_ctas_id_seq', 1, false);
          public          admin    false    230            �           0    0 '   components_page_grids_components_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_page_grids_components_id_seq', 1, false);
          public          admin    false    236            �           0    0    components_page_grids_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_page_grids_id_seq', 1, false);
          public          admin    false    234            �           0    0 )   components_page_headers_components_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 1, false);
          public          admin    false    240            �           0    0    components_page_headers_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, false);
          public          admin    false    238            �           0    0 -   components_page_hero_images_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_page_hero_images_components_id_seq', 1, false);
          public          admin    false    244            �           0    0 "   components_page_hero_images_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_page_hero_images_id_seq', 1, false);
          public          admin    false    242            �           0    0 ,   components_page_paragraphs_components_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_page_paragraphs_components_id_seq', 2, true);
          public          admin    false    248            �           0    0 !   components_page_paragraphs_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_page_paragraphs_id_seq', 1, true);
          public          admin    false    246            �           0    0 3   components_page_rich_text2_images_components_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_page_rich_text2_images_components_id_seq', 1, false);
          public          admin    false    252            �           0    0 (   components_page_rich_text2_images_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_page_rich_text2_images_id_seq', 1, false);
          public          admin    false    250            �           0    0 2   components_page_richtext_buttons_components_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_page_richtext_buttons_components_id_seq', 5, true);
          public          admin    false    256            �           0    0 '   components_page_richtext_buttons_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_page_richtext_buttons_id_seq', 1, true);
          public          admin    false    254            �           0    0 3   components_page_slider_image_ctas_components_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_page_slider_image_ctas_components_id_seq', 1, false);
          public          admin    false    260            �           0    0 (   components_page_slider_image_ctas_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_page_slider_image_ctas_id_seq', 1, false);
          public          admin    false    258            �           0    0 )   components_page_sliders_components_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_page_sliders_components_id_seq', 1, false);
          public          admin    false    264            �           0    0    components_page_sliders_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_page_sliders_id_seq', 1, false);
          public          admin    false    262            �           0    0    components_page_styles_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_page_styles_id_seq', 9, true);
          public          admin    false    274            �           0    0 %   components_page_text_positions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_text_positions_id_seq', 1, true);
          public          admin    false    266            �           0    0 !   components_slider_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_slider_settings_id_seq', 1, false);
          public          admin    false    268            �           0    0 !   components_style_bg_colors_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_style_bg_colors_id_seq', 1, true);
          public          admin    false    270            �           0    0    components_style_colors_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_style_colors_id_seq', 7, true);
          public          admin    false    272            �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 84, true);
          public          admin    false    202            �           0    0    footers_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.footers_components_id_seq', 2, true);
          public          admin    false    278            �           0    0    footers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.footers_id_seq', 1, true);
          public          admin    false    276            �           0    0    i18n_locales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);
          public          admin    false    298            �           0    0    navigations_components_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.navigations_components_id_seq', 5, true);
          public          admin    false    282            �           0    0    navigations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.navigations_id_seq', 1, true);
          public          admin    false    280            �           0    0    pages_components_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pages_components_id_seq', 8, true);
          public          admin    false    286            �           0    0    pages_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pages_id_seq', 1, true);
          public          admin    false    284            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          admin    false    294            �           0    0    strapi_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 394, true);
          public          admin    false    290            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          admin    false    292            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          admin    false    296            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          admin    false    288            �           0    0    upload_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.upload_file_id_seq', 7, true);
          public          admin    false    300            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 25, true);
          public          admin    false    302            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 196, true);
          public          admin    false    304            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          admin    false    306            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);
          public          admin    false    308            �           2606    27258 D   components_animation_animations components_animation_animations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_animation_animations
    ADD CONSTRAINT components_animation_animations_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_animation_animations DROP CONSTRAINT components_animation_animations_pkey;
       public            admin    false    205            �           2606    27269 4   components_link_anchors components_link_anchors_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_link_anchors
    ADD CONSTRAINT components_link_anchors_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_link_anchors DROP CONSTRAINT components_link_anchors_pkey;
       public            admin    false    207            �           2606    27280 B   components_link_external_pages components_link_external_pages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_link_external_pages
    ADD CONSTRAINT components_link_external_pages_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_link_external_pages DROP CONSTRAINT components_link_external_pages_pkey;
       public            admin    false    209            �           2606    27288 <   components_link_image_links components_link_image_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_link_image_links
    ADD CONSTRAINT components_link_image_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_link_image_links DROP CONSTRAINT components_link_image_links_pkey;
       public            admin    false    211            �           2606    27307 R   components_navigation_links_components components_navigation_links_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_navigation_links_components
    ADD CONSTRAINT components_navigation_links_components_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_navigation_links_components DROP CONSTRAINT components_navigation_links_components_pkey;
       public            admin    false    215            �           2606    27296 <   components_navigation_links components_navigation_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_navigation_links
    ADD CONSTRAINT components_navigation_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_navigation_links DROP CONSTRAINT components_navigation_links_pkey;
       public            admin    false    213            �           2606    27323 <   components_navigation_logos components_navigation_logos_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_navigation_logos
    ADD CONSTRAINT components_navigation_logos_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_navigation_logos DROP CONSTRAINT components_navigation_logos_pkey;
       public            admin    false    217            �           2606    27345 X   components_page_bg_image_texts_components components_page_bg_image_texts_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_bg_image_texts_components
    ADD CONSTRAINT components_page_bg_image_texts_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_bg_image_texts_components DROP CONSTRAINT components_page_bg_image_texts_components_pkey;
       public            admin    false    221            �           2606    27334 B   components_page_bg_image_texts components_page_bg_image_texts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_bg_image_texts
    ADD CONSTRAINT components_page_bg_image_texts_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_bg_image_texts DROP CONSTRAINT components_page_bg_image_texts_pkey;
       public            admin    false    219            �           2606    27361 4   components_page_buttons components_page_buttons_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_buttons DROP CONSTRAINT components_page_buttons_pkey;
       public            admin    false    223            �           2606    27383 T   components_page_call2actions_components components_page_call2actions_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_call2actions_components
    ADD CONSTRAINT components_page_call2actions_components_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_page_call2actions_components DROP CONSTRAINT components_page_call2actions_components_pkey;
       public            admin    false    227            �           2606    27372 >   components_page_call2actions components_page_call2actions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_page_call2actions
    ADD CONSTRAINT components_page_call2actions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_page_call2actions DROP CONSTRAINT components_page_call2actions_pkey;
       public            admin    false    225            �           2606    27399 0   components_page_cards components_page_cards_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.components_page_cards
    ADD CONSTRAINT components_page_cards_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.components_page_cards DROP CONSTRAINT components_page_cards_pkey;
       public            admin    false    229            �           2606    27421 D   components_page_ctas_components components_page_ctas_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_ctas_components
    ADD CONSTRAINT components_page_ctas_components_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_page_ctas_components DROP CONSTRAINT components_page_ctas_components_pkey;
       public            admin    false    233            �           2606    27410 .   components_page_ctas components_page_ctas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.components_page_ctas
    ADD CONSTRAINT components_page_ctas_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.components_page_ctas DROP CONSTRAINT components_page_ctas_pkey;
       public            admin    false    231            �           2606    27448 F   components_page_grids_components components_page_grids_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_grids_components
    ADD CONSTRAINT components_page_grids_components_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_page_grids_components DROP CONSTRAINT components_page_grids_components_pkey;
       public            admin    false    237            �           2606    27437 0   components_page_grids components_page_grids_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.components_page_grids
    ADD CONSTRAINT components_page_grids_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.components_page_grids DROP CONSTRAINT components_page_grids_pkey;
       public            admin    false    235            �           2606    27472 J   components_page_headers_components components_page_headers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_headers_components_pkey;
       public            admin    false    241            �           2606    27461 4   components_page_headers components_page_headers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_headers DROP CONSTRAINT components_page_headers_pkey;
       public            admin    false    239            �           2606    27499 R   components_page_hero_images_components components_page_hero_images_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_hero_images_components
    ADD CONSTRAINT components_page_hero_images_components_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_page_hero_images_components DROP CONSTRAINT components_page_hero_images_components_pkey;
       public            admin    false    245            �           2606    27488 <   components_page_hero_images components_page_hero_images_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_page_hero_images
    ADD CONSTRAINT components_page_hero_images_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_page_hero_images DROP CONSTRAINT components_page_hero_images_pkey;
       public            admin    false    243            �           2606    27526 P   components_page_paragraphs_components components_page_paragraphs_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_paragraphs_components
    ADD CONSTRAINT components_page_paragraphs_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_page_paragraphs_components DROP CONSTRAINT components_page_paragraphs_components_pkey;
       public            admin    false    249            �           2606    27515 :   components_page_paragraphs components_page_paragraphs_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_page_paragraphs
    ADD CONSTRAINT components_page_paragraphs_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_page_paragraphs DROP CONSTRAINT components_page_paragraphs_pkey;
       public            admin    false    247                       2606    27557 ^   components_page_rich_text2_images_components components_page_rich_text2_images_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_rich_text2_images_components
    ADD CONSTRAINT components_page_rich_text2_images_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_rich_text2_images_components DROP CONSTRAINT components_page_rich_text2_images_components_pkey;
       public            admin    false    253            �           2606    27544 X   components_page_rich_text2_images components_page_rich_text2_images_first_element_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_rich_text2_images
    ADD CONSTRAINT components_page_rich_text2_images_first_element_unique UNIQUE (first_element);
 �   ALTER TABLE ONLY public.components_page_rich_text2_images DROP CONSTRAINT components_page_rich_text2_images_first_element_unique;
       public            admin    false    251                        2606    27542 H   components_page_rich_text2_images components_page_rich_text2_images_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_rich_text2_images
    ADD CONSTRAINT components_page_rich_text2_images_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_page_rich_text2_images DROP CONSTRAINT components_page_rich_text2_images_pkey;
       public            admin    false    251                       2606    27546 Y   components_page_rich_text2_images components_page_rich_text2_images_second_element_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_rich_text2_images
    ADD CONSTRAINT components_page_rich_text2_images_second_element_unique UNIQUE (second_element);
 �   ALTER TABLE ONLY public.components_page_rich_text2_images DROP CONSTRAINT components_page_rich_text2_images_second_element_unique;
       public            admin    false    251                       2606    27584 \   components_page_richtext_buttons_components components_page_richtext_buttons_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_richtext_buttons_components
    ADD CONSTRAINT components_page_richtext_buttons_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_richtext_buttons_components DROP CONSTRAINT components_page_richtext_buttons_components_pkey;
       public            admin    false    257                       2606    27573 F   components_page_richtext_buttons components_page_richtext_buttons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_richtext_buttons
    ADD CONSTRAINT components_page_richtext_buttons_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_page_richtext_buttons DROP CONSTRAINT components_page_richtext_buttons_pkey;
       public            admin    false    255                       2606    27608 ^   components_page_slider_image_ctas_components components_page_slider_image_ctas_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_slider_image_ctas_components
    ADD CONSTRAINT components_page_slider_image_ctas_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_slider_image_ctas_components DROP CONSTRAINT components_page_slider_image_ctas_components_pkey;
       public            admin    false    261            
           2606    27597 H   components_page_slider_image_ctas components_page_slider_image_ctas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_slider_image_ctas
    ADD CONSTRAINT components_page_slider_image_ctas_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_page_slider_image_ctas DROP CONSTRAINT components_page_slider_image_ctas_pkey;
       public            admin    false    259                       2606    27635 J   components_page_sliders_components components_page_sliders_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_sliders_components
    ADD CONSTRAINT components_page_sliders_components_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_page_sliders_components DROP CONSTRAINT components_page_sliders_components_pkey;
       public            admin    false    265                       2606    27624 4   components_page_sliders components_page_sliders_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_sliders
    ADD CONSTRAINT components_page_sliders_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_sliders DROP CONSTRAINT components_page_sliders_pkey;
       public            admin    false    263                       2606    27692 2   components_page_styles components_page_styles_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_page_styles
    ADD CONSTRAINT components_page_styles_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_page_styles DROP CONSTRAINT components_page_styles_pkey;
       public            admin    false    275                       2606    27651 B   components_page_text_positions components_page_text_positions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_text_positions
    ADD CONSTRAINT components_page_text_positions_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_text_positions DROP CONSTRAINT components_page_text_positions_pkey;
       public            admin    false    267                       2606    27659 :   components_slider_settings components_slider_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_slider_settings
    ADD CONSTRAINT components_slider_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_slider_settings DROP CONSTRAINT components_slider_settings_pkey;
       public            admin    false    269                       2606    27670 :   components_style_bg_colors components_style_bg_colors_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_style_bg_colors
    ADD CONSTRAINT components_style_bg_colors_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_style_bg_colors DROP CONSTRAINT components_style_bg_colors_pkey;
       public            admin    false    271                       2606    27681 4   components_style_colors components_style_colors_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_style_colors
    ADD CONSTRAINT components_style_colors_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_style_colors DROP CONSTRAINT components_style_colors_pkey;
       public            admin    false    273            �           2606    27250    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            admin    false    203                       2606    27716 *   footers_components footers_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_components_pkey;
       public            admin    false    279                       2606    27705    footers footers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
       public            admin    false    277            :           2606    27858 %   i18n_locales i18n_locales_code_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);
 O   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
       public            admin    false    299            <           2606    27856    i18n_locales i18n_locales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
       public            admin    false    299            "           2606    27745 2   navigations_components navigations_components_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.navigations_components
    ADD CONSTRAINT navigations_components_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.navigations_components DROP CONSTRAINT navigations_components_pkey;
       public            admin    false    283                        2606    27734    navigations navigations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_pkey;
       public            admin    false    281            (           2606    27776 &   pages_components pages_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT pages_components_pkey;
       public            admin    false    287            $           2606    27763    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public            admin    false    285            &           2606    27765    pages pages_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_slug_unique;
       public            admin    false    285            4           2606    27835 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            admin    false    295            6           2606    27833 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            admin    false    295            ,           2606    27805 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            admin    false    291            .           2606    27822 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            admin    false    293            0           2606    27820 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            admin    false    293            2           2606    27818    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            admin    false    293            8           2606    27843 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            admin    false    297            *           2606    27792 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            admin    false    289            @           2606    27882 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            admin    false    303            >           2606    27871    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            admin    false    301            B           2606    27893 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            admin    false    305            D           2606    27904 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            admin    false    307            F           2606    27906 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            admin    false    307            H           2606    27919 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            admin    false    309            J           2606    27921 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            admin    false    309            K           2606    27308 G   components_navigation_links_components components_navigation_link_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_navigation_links_components
    ADD CONSTRAINT components_navigation_link_id_fk FOREIGN KEY (components_navigation_link_id) REFERENCES public.components_navigation_links(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.components_navigation_links_components DROP CONSTRAINT components_navigation_link_id_fk;
       public          admin    false    213    215    3288            L           2606    27346 M   components_page_bg_image_texts_components components_page_bg_image_text_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_bg_image_texts_components
    ADD CONSTRAINT components_page_bg_image_text_id_fk FOREIGN KEY (components_page_bg_image_text_id) REFERENCES public.components_page_bg_image_texts(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.components_page_bg_image_texts_components DROP CONSTRAINT components_page_bg_image_text_id_fk;
       public          admin    false    219    221    3294            M           2606    27384 I   components_page_call2actions_components components_page_call2action_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_call2actions_components
    ADD CONSTRAINT components_page_call2action_id_fk FOREIGN KEY (components_page_call2action_id) REFERENCES public.components_page_call2actions(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.components_page_call2actions_components DROP CONSTRAINT components_page_call2action_id_fk;
       public          admin    false    225    227    3300            N           2606    27422 9   components_page_ctas_components components_page_cta_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_ctas_components
    ADD CONSTRAINT components_page_cta_id_fk FOREIGN KEY (components_page_cta_id) REFERENCES public.components_page_ctas(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.components_page_ctas_components DROP CONSTRAINT components_page_cta_id_fk;
       public          admin    false    231    3306    233            O           2606    27449 ;   components_page_grids_components components_page_grid_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_grids_components
    ADD CONSTRAINT components_page_grid_id_fk FOREIGN KEY (components_page_grid_id) REFERENCES public.components_page_grids(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.components_page_grids_components DROP CONSTRAINT components_page_grid_id_fk;
       public          admin    false    237    3310    235            P           2606    27473 ?   components_page_headers_components components_page_header_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_header_id_fk FOREIGN KEY (components_page_header_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_header_id_fk;
       public          admin    false    3314    241    239            Q           2606    27500 G   components_page_hero_images_components components_page_hero_image_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_hero_images_components
    ADD CONSTRAINT components_page_hero_image_id_fk FOREIGN KEY (components_page_hero_image_id) REFERENCES public.components_page_hero_images(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.components_page_hero_images_components DROP CONSTRAINT components_page_hero_image_id_fk;
       public          admin    false    3318    245    243            R           2606    27527 E   components_page_paragraphs_components components_page_paragraph_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_paragraphs_components
    ADD CONSTRAINT components_page_paragraph_id_fk FOREIGN KEY (components_page_paragraph_id) REFERENCES public.components_page_paragraphs(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY public.components_page_paragraphs_components DROP CONSTRAINT components_page_paragraph_id_fk;
       public          admin    false    3322    249    247            S           2606    27558 S   components_page_rich_text2_images_components components_page_rich_text2_image_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_rich_text2_images_components
    ADD CONSTRAINT components_page_rich_text2_image_id_fk FOREIGN KEY (components_page_rich_text2_image_id) REFERENCES public.components_page_rich_text2_images(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.components_page_rich_text2_images_components DROP CONSTRAINT components_page_rich_text2_image_id_fk;
       public          admin    false    251    3328    253            T           2606    27585 Q   components_page_richtext_buttons_components components_page_richtext_button_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_richtext_buttons_components
    ADD CONSTRAINT components_page_richtext_button_id_fk FOREIGN KEY (components_page_richtext_button_id) REFERENCES public.components_page_richtext_buttons(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.components_page_richtext_buttons_components DROP CONSTRAINT components_page_richtext_button_id_fk;
       public          admin    false    257    255    3334            V           2606    27636 ?   components_page_sliders_components components_page_slider_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_sliders_components
    ADD CONSTRAINT components_page_slider_id_fk FOREIGN KEY (components_page_slider_id) REFERENCES public.components_page_sliders(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.components_page_sliders_components DROP CONSTRAINT components_page_slider_id_fk;
       public          admin    false    265    3342    263            U           2606    27609 S   components_page_slider_image_ctas_components components_page_slider_image_cta_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_slider_image_ctas_components
    ADD CONSTRAINT components_page_slider_image_cta_id_fk FOREIGN KEY (components_page_slider_image_cta_id) REFERENCES public.components_page_slider_image_ctas(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.components_page_slider_image_ctas_components DROP CONSTRAINT components_page_slider_image_cta_id_fk;
       public          admin    false    261    259    3338            W           2606    27717    footers_components footer_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footer_id_fk FOREIGN KEY (footer_id) REFERENCES public.footers(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footer_id_fk;
       public          admin    false    277    3356    279            X           2606    27746 '   navigations_components navigation_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_components
    ADD CONSTRAINT navigation_id_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.navigations_components DROP CONSTRAINT navigation_id_fk;
       public          admin    false    283    3360    281            Y           2606    27777    pages_components page_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT page_id_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT page_id_fk;
       public          admin    false    285    3364    287            �   4   x�3�,��LI��IM+�2�r�2�3J�L��LQ�̐��Q�̡���=... IH�      �      x������ � �      �   �   x�u�O�0@��)��

��i�B�?X��g���[M�}ҥS����\�D�Q�њC#5��E3֮5��Τ��!��/!�R��3T�h����֭��%[6���}��-�c�H�6�=������#?�hu�"����$C=D�J�_��0�s�*U�������;�      �      x������ � �      �      x�3�4�2�=... ��      �      x������ � �      �   A   x�3�tO-.���S�Ҫ��Rp��-(IL���,9�*�Y���,���W����eĩ�@��=... �z*      �   �   x�M�1��@E���tS�[��f�-�L� Kf$�J�G�j!��Mr����!������x��x�T�`���X��1A�,n�|�lt[K�{�|�@]g�**WHx�Ơ��f�"(��eEjxU�������0e���N��5����dT��<j.x/��FԞw�>�������gk>��9����k��y�`�      �   V   x�3�,I�(�/�/�,����4�L��-��K�+)�/HLO�G�/*0�2�hJ���M��F� ڌ9�K*sR��/�4*����� F47      �   a   x�3�tI�M�KI-R(�SH,(H��T6w6 Ne70�4���e`t�qr��)'��g)�c� *�0��f�ⶔԲ�b͆8݄�=... h�88      �     x��T�nA�}_1�X'�сrb�d���x�o�hvf=��ADJLDF����?P={��Y�igz��������ᡪ�QL�]u��ܚkR�Oe�J�2�������F�흰fz�@��8Dx�
t'
7�6������x�����WfדK�Q^b�j�ZU�������Q���':o|�%}Ζ�8R�7|[��ZdSuV�s��Չ�NBNKIJ*f�Y� ���I5���!h[���s��L���{c�_)��FI�_�P�*kyq�a��)���h��Q|1Q|����!k=��Eq�!�S��]�c��/�|��'
�D�.�1rL�IK5)K	!��٦�J/�h�˹=.��$��G����3�ۢ�k�MeJ��[iPL!�����n̔J/���#@(r��A΁FV�v0i��E@t��s$��#rJ��( 1�߰� �>dV���m���+�?�	����N���tP����Ǒ�T����u��j]����jm�Ϩ�RT��V��5�WK��}$ԲK���Z����B��:yK�z��+�XѶ� i�ae�5���Zt��d�;�`��J�8��-�����{��H`C,���������d7��|XL&�v�F���%�E�7�)��0ɔ ��$�@�	}Qq:�9�ǰ4��(Kءݍw�v�#���e�	V#��DЖ��a�(�5�1F�𴅡��]��r�/��4��hs�w��+�!�lbUμ�z���9Z=���n�#X�fjK%�����<)��P��CO�H����"J�����,;�hq�Z,�od�      �   �   x����
!F�g&���%��]]�.z�ԍ]�`�N�;��Q@ʯ��-�K>�dw���x� �d@!9j ��g�1��� ��P�����Kn����uUT�"�U�URvUL1�ܷ��kJ8��7�rۂ��b��Y������u�q��{+u9 �����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �         �   x�mO�m�P��)�0 2D�L��Y�Ϥ̏�I{����R�JC�����p<�N3��2xa�G �S0,h�)�/�=���>�r߼\����ήay_*��^v�d]U� a/����*�i�0va���i+%:S{��&�~�kK(�]�Ђ
c�M�E�/~#�\k{���8�3ۉj�-���N��nZx��0]�ax�=n�         <   x�3�,.��I�4�L��-��K�+)�/HLO��%����9�E�����`	��=... M+�      	      x������ � �            x������ � �         }   x���	1F�󦊁�����%�_v@f��DԓmXB�H'Vb��w���j��hI\`���t� Cv�B��盲�7�9��[�+������^�Z���ت�����@���`����a9��C�02         t   x�u��
�@�O>F�ji?�VYD�D������2s&���U��0�$q�1��`(��O'��7ܳT"J7D�T������p��
uˍ����m~3�0��f�o��-�(�h�:Mc            x������ � �            x������ � �            x������ � �            x������ � �      !   [   x����".C�����[�ZT���Z�[�ZQ�e�.��\��e�U���9VQc�hbR~i	X�,����Z��Ⲁ+*(�L��K����� 88Y            x�3�LN�+I-�,�L�(����� A��            x������ � �            x�3�T6w6 ����� .��         .   x�3�T6w6 �e�!b�!b�!b�!b�!bΩ�0�+F��� ���      �      x��=�n�F������Œe�v��V$Xob��.�ApH�#�%9�U�5���I��?��&�-��Yk�X]����z�dU�I��<����$̣eQ�O�=Y���r�>�O�"˒�I���p����X�E��MM�$h�ϋ��'9T�"��8��*-1R�x��xR�5~�IWI݄����Y���i�t�n�d	���ը1_`4M�<N��*�B��1�5��0Y�$����A{pf>xf>8�|D��pAH ��:������&я*��&���0ˊ�$�Fոw�_�⤨'�'e�^�x<�eV���*��:�:�g1V������iO~�	��չ9�ɿ����lZ���9֚\f����#�	������%��4Y������'��'���,�M�`�ds�YQ�I�E�Ё�7�`N�ss�����?����]&�@�?�Y&�o(&6�lU����h�4�d�cc�n��g�0�wNU�O�-�00��u6�M8#1.�Ti�$�`Vq��	2��IHI`�([���׭�Fh��N��mh�<S�WO(�'��_=!�!�&�B��<ܤ�A�h,c<�2���e2�[��ŏ��?�a�Lì�=���>����`݋��+8t�y��C���Q$l��x��?��;�{�q;C�#��)p�j�E[�B�B�+P��]�:��E��%��[u��ߟ-��C��)]&!B�O)}�2��R�Bݛ��Eڷ���K��>��*��;̹����*��[sT?�4%����i�6�����nvL�ď�9�9"��l����`Ŷk��jf��O�e�U,}2�k�ң���������*��){��;j��i�];��|zf�H҄N�ф�t���l�W¨��i�+���f����iSg`e1��wϥ���N/�M��H����J���>��-��9����:C�8X��O"���,�7�%�x�{Q��4�k�p��%EC�bX��	����h�υ�?eX��*,�:��.�$���W��W�3��ۻLy�E`O�eP�PQ�cjI6��ej�;�w˼��h>Wׯ�4QZ��|Qh����:i$�]����N�O��5���}�q۾ ��kM�pzٖ���W82�T��v��� �X����ǅg�.�)8}�2̚4
����)���h'[�/I�����y���a�O�$�J/��)��\�BH�WY��z��S��b��[F� ܪF��⊡a�^%�q��4��v���JZ?���hT܇�m<"}4�%V�g֔�~{^T+m�ȏw����g��7>��9�������rL��]�@]�Xh��(�ZUuZG��'�`}y�����F���4BホڌG�&�c�VT!�$��<0&Q�`8�@X�1��M��F�LWa�f�,�MZ�rs �Ca�Mg�4�A@{U�o0��x����)�7�����S��<]����6__��?�ʞ���`v��
뚸��ƫ�n*���m�ꛤ��M�nP'���C}}Z��L�a������ ���Ch������Q����z�;�^W�<��mi�ņ�$_4K�^�)3<��P5�ϝ#~G��*L5U���Ȼ؊���Μ&��H��"���%�쮅	�N�4o���&ɡaqۨ��z�	SZ�B\�QglVY�EQ�3��"ZcI�P��ø/�:��r�	y��(��XsW] ��F��h-�9  ^���iլ���=Ch��I��F���y�Vț0_���wG�����ϧ,3���1��d�œ7CS�c\%l��Os����&���Q?@x�p޼���Y��K9��C�1V�H�0E��5YMX-���4��P\R�+���4B�L�r�ϲOO�;;���M�w�LŹ�����way��)Fx�w�7�3s���Q��x�yP>M�����g{�|�j�S@*�j�ֵ�`��:���ȭo�w�D���ûk.<lgMfigtBm��;_4�h]W�� vv̓ǩ��]�}��6i6C���1�>i0���|���d�,���ZѼ�c=+ ��� ) ���ú0�D���r7:i0������9�:HI�e�)0Ox��9ڢ��fGI�x�^E$l5�y��@��6�N�%���Vy�)�l�dg�La��NUݖ}��-w�vJ�=Z!M�%�@o�{
�AgB�'A������|p:���#=!�w�( yJn����Q�Bor�|
���g�O�h8��cW\�Z�����G"�i�J}�ʭ�X�[N[�ɰm�����MR�����D:4EP/�[e�p��#�S&t��O������ �:�uS!o�}$���v*��X'�oS-&��;���L4I�<���vC�#$�Dq�D!�����n 0/��#-�����ɭ/b��t�./=�V��x��0�����-�2�g�}�kA���5���.���{�|Bu��Fv�@����Ю��Y�&�B��~�x<g���<FvAV�Xb?���7���M�*XT!��t�����/f�_BY���?\ 3Yʠ92�;,���$Hyo��ؽ5���k4c˯�ע�G�7�oH��v��#�(A�u�Aa�H�i���H
E���JK���[
��ӴY�g]�R �N	8�)���?���U�D}]̛n����ŕ����$Jb�Jܦ��dG�µw/�&�훈1V�Hמ����UA"C�n���ƹ�Ͷ��G Zn�h�kD�e�G^��T�V��8�; �$�@"� C�*j$MB��&4E���EIa��׳�@ɥ����$�!T&����Y�j]�Sg��B���]�� ��l�S0�*�n�Dn��in�4m|�w���"}���q���O�����uA!T����=��Dn�h[~��X[��27�M�A:����!lw��n�t�(��g�\a��P��&��p�6����P�!~�a~L��A�r�a�\�q�r��)�s�8)ϟrC�9��\Do�	%���o��>��:�Q�tH�#mM}R'a-�'����N�${��Ҝ�ҧ�\8y}<��"�<y��
�U҄h��^B�4���&p��d�Ot�ذ��������0d�������eAO(&e��Wc<r �b{�$ql�q8�]��.��&B��cF�2B�!'�~��#�y��6�=��.�����i듯N_��v#�A���[�����K��q��������%���̈���������{�T�8pY�� ��
�Z.�u���Ko����w?Aa�n�ϟ����Yv�Ix3ϒ)�;��I������>�����R ��~g����=�g��6���M�C�]�5}�.�������R�q(O{�D|��;��z��(b��o|<��]OM�g����y� Ym-�s}�����ക�I�IO<Lp�!��3�d�9�i)�&��k >H6{ؾc�k��]t��!|nu�D97|,��+�c��0��i�tp�+��P/�>�C���zc�%�!Q��Y̭��آ��Z
�B6���M�ޯ-6��� u��t<��ZP�������W,��ǤO��Ƨ�\y��r6��5�J��S4}�-�l�~�o-�8r��
�x��y�>��]���z-[}I�^�v���r~��6�`�~�E���ۈU&jo�a�I[x1P[��8t�+m[N����r7J[���D��|���8���/��8&�W,��r�Gi<(7�S��BU���մ�_�z��~��ދX~���\�	��<_�o�Q݄ u�>[@;�D��{��:�~��v��,� >�;i�b3\�?=u����+tm��7��j�����-��06_8��V�cjf����4������Qy�U�ṽ,�����/�e�8?����mJ3��i�����KQ��4�A,�o;�*~�QUn� ��"[�����-��r���Y��$p9����Q@�����V�K���k�	Ҏ�T@�5'h�b�_0����~���^a�Rg�HZ��K�	�.�ʜu�aɳ@z�)9j
�tbV<0k�    	,p�YH﹃h|K[|�(P�P��Y�f0Z_�taAd'�l.���m�rb�.t���}�~6�����5�/Y�DzT Z[.�v��X��A��Nr��@뺵*���@S������W�k�k����d�A����~{R��M�������l2o��+vі�{^H���`�2nM�%�w��*mpn ��޲{�[���{�1�Cnљ�j������ǵ�߈*�h��K�n�'=��ը俱ڴ�5V��fŮ3�(o��p���،$a�	�7���ѫ
@��� ���b��v�'g��!v��2r�״�n;B7@�X]VN�lX�Y�W��OE��F�M�f	�����@�م�e�I�	+E7>���s\�ce�gM^Bn7z��4���{D���Os�w���;g^��h�[�I42�N�dk�#�s/����&ķ<�P~q�(^'S�J6ir�L�[���餢w�V���iem~(���p��`	�r���RZ�r�b�>�H9����1���G��zP��BN
���Q�]��kRɳ0�r�
p�.�j4ΥNEO,َe�h!s��|e�6��5���+�&>!�"�:�5� �L>�O��t2+�u���ܞ�/ �}���?�~�8��(�� 3 hu���E��X�N�?a�1
��e���'�����G�V��5�V8bx��r�k]Z�f y.�=��Z�Wz]7�
m������s�ɻ��X�,��H���Y\#���q[༪1���sŨ	g�����R��rfԩ��ZZ�qO��J� _��M/�,�W��r����Y�;���6�鉌5;[O�M��ͭ�� ���5s�t��HK�����1"��cFD�����?vm�9�~�=�:y�@����d�f���a��}k��c�P� �L5܋J����J�p��X�n��Z�Z��!o�t�"ѻ�n��΁�~��)�_�w<�����A��8H��U�����;��%ږ��ዮ��o9�8��V��Y>���<�^�纫��[��G��� ��;iOj�5���] �i-�ŀT ��_�(�y�Oy�u �\���.�Ry$Q�k���b���,�kXQ�R�}�*���iV?	�L\���١ˋ�O��Jr��B��!xh!��,�'��ck�-Q�Y_��,S5������I�I����e 㴦U�'�a��&Y�8��� ��<�hg��X)����7��S�!�ކy�c]X��I^L�������NRr:��:%�]0C�(L�#�ReR�D)�����?��%Z�Q��#4�GYQ�?*���b���(���A ��˿��k��C8^��q�����ost�!�p��Q�Gh0��ѼȲ�	�#|�w�Gd��~.V��O���/����/�q�g����~�z��}���?��8b<�Z�s� p1W�2��2��9g���X�͑A�6s��Ɍ͋
']�h����3�7	s���:����O>9z�%!��(K��#�x��\!aRܞh8�ّ�Y�����'I庋�|l�ɥ���fx8�tO���]��~�=�=B��>�Xo���y�ʼ+#���l�����jd���&jC+������-G�zB�a;�xe���{������{��Ԋ�d�F�q$�;]p��+n����Kn��g�*)�^4R�/�Pi�x8��ȝ2a���s]�$���Ά�2�`?����~��W��-��7���D���G�݅�YVD70��Y���z���%�:�m�IoSt��mD�{�*���g|���H�e*��	�A�I�୺��|v
kz���	+�n�wJ���q�e$�>J8�2�R����΅s�q��Գ:�rD�L��^E�>�l���"���-|�������~����݄S���>��i���~+�8[�.�npd�{��6���]��A�Յ�
)�zxO����) ���[����x	J᨝Vi�q���ĉ!vJ3�*���'�!v�-E[O�6 }?�6/�f���Y��E���#t?�$��^�/�M��N��J9�嘹�W��~�֏�w�x7e��U6^�V/>��U�t?���pQ���/��a���4s�d�.���5҆h�	���F/����IChSi�{�d��P`��w���w�Q��Dˣ�0$�7�[�b'�6��|�3d�Z�3W�1 !�����eo,U@Qs=�"!
��M݂o�	�N�hVcim�P)kmǣoR�L���"]["K��㧊h�Y�o��{m�b�cz��ƛ0�������v�UB�T"T�1!D��K�Ɍ�Ѥ�kP1{)�v��}�׃����p7�ƃ��F��,]�͕�3�e�3h�'?�r)K�Fw*s�Nɍ۴���?8k�]�O���@��K���lX����k0���*�/ ܳ����T�'�2W����e��X�g�2��~�%?3E�z�Y�a��:������]�,lk��eȝR	�Z&�׬�˭K�������a�яCLbwbo�����K�Cν=�Tw���T΅�Ɵ1�]�\1�	�XW$��3(��ٙ$Z��*K �f�J��HT��9?p��1Bχt^{P@�W@��z�����䭞�3%z��,<I�u|A�X0�n�"3�����U� w���$���k ^&���ph����K�b����t&��4�Ap�l-$S8*�`.�����9�$x�V�`�>��^������v/ʆ���5�F7��N�>l��M�P����]�:�|R[i��'z&Tu_|zg���''T�s_n@����yqAI���Z��1r��(r7���Ze�̓*�߄�b�V�܄�4��d'mPU2���И�*�4E���V�V����$@��Xl1:��t�ꤕܲ���p���Z$N�4Ejme�i�M����[��3Z[g���L[ݘ	ӊ�LgƏt;�9)0֜��u�� �'��MB"¬)�0['JIh�I�I�^H�MZ�*���v��p<7k����)0
؈y4�<,Wd���M��";�$�i��"\e��; ;�|ٖ����q@d�KE��I��v��TOx�5������y!�/Զt�-H�T�䕥"���lڄѲX 
�k�.�t�$2��*F���&ɾ�k���$�U�>J�#��w�.�"İ�P�edV��$�2aU��R�?�oPu�]�kZa<S��#�2���,^?��T۹�WZ�u��;�8+��*	�%�������r#4{g4��n��U��kVG��lh�}�h�R�uw�{���0�x+�h�A�%�����URq�#���f�J���
�٤�E'�?�DCw���Ȃ�.�a#��(�ZAǓ*��f1:<]X&L�AY��3w9'�1f�t����IV�V�9�3�%X$j`+��qwF�xGY�8������E^��w?z�v�C x;�Pzp�l�%%����@�}5�P��^i�&o�X-�`����ޒ��`��t���$�}@m�����.�*�ܒ6��@���J@��:Ǻ�Y��o�
q�g�2���ԹP�3W���3c�v��q>����qeSS�}*��og����R7Iϐ�)H]�d��b����k?ѝ�flg���~k��/���t���Sd�,Z�U^g C?;W�T"�1q��`���X6B�*���4���8+mx�������D�}��s%M�������9�my��u["Ln(�廽`:8R��X�/~W��9�cب���j����r����U��Q�o�I�һ�n���lx�e�l���g����C{����)�����^��	��	�㝹u]3��ݩ^`)|���P���V���3ce�*݄���\|�_��#��sP[��J�NР��.�k���[{�>" �	������7�!N��YKy��I���1������oheT�6��uV�����ZAy�b��k<�r@!Ab��� ٴTk��M~�$��6�$��#rʷ:dA�/�5o�∑���ٞ�����^��H�@�_�V_+��8Kj�G�ڄ�Ky�\z��5��{Y#z}i�X�6�o�{�<	��~C���\��Յ����F� �  ���ռ��L�3K|��_��� [�tk��f;J���n�������	�}d���� 빒�s�A�7�^����͚g��v|��ͅ�l�7I��n�g���QK��ns!�h�N�[/����4�a���תƋ��iլq
=n��*�Z����zv�`��H����Ʃ?��yϷ�}��p|�� ެK���wƉ]��H{G��}ؠuM��[���`��0Jt��]�Vg�f�n_c.�V���;��A�9,;$U>1t"ꭱ�H���K>���/�K�%z�}|���}o��ʀ���K[�^س��3݉�����mLC��
W�V�d���l6[�q�~�}�@T��q�@)�Bi��hF�t�]D��<��y �YD#��F�1<\6b�����@����XLL^�-b@Rz_y��B�Z�c��L�f�	��=��=�)צ�lQ|�<k<W�:|��i7���x:��,�N�e��=��c�x�4hq�R�^V��ܭ�Q���s��� [��>R���D���Al�@B��T�v`��f��,����Q�Xg�u��C��,��u���`�����d0ɿ�0���P@�,���x��ׅ�|�z��$����E?�&���x���o�1V��3�{����Rؘ��F�n��z��W_�?���E      #   �   x�]�K
�0E��*�\L�h)D܁��9I���a>�D�Kr�L� X��sW$�H.%l��u}�À���z��p�6��tS��NS}O�/�̲aX�j��;�ڙ�G�@1���k�l�j�ߌl����|�^OM�����l�<ud��_��Ev܈w�'s.� !J�K.�\3>E2/E����K��o�S�      %   C   x�3���O��4�L��-��K�+)��K,�LO,��ϋIe��8sS�Jq+���.�4*����� #��      9   ?   x�3�t�K��,�P�H���L���!###]#]#sC+3+S=#CmC<R\1z\\\ )WO      '   f   x�]�)�@P=s��)���l�+��D�U�����N=�4FL��fdC�a9��:n����y�Oh��Rw�w߂^(�(Y�ڕ�JR� ��օ)[�*>R��k1�      )   �   x�u��
�0���c�N}�_�PK(�6K*�ׯ۞�k��x(�<D��0�)r��,�*�� �����o��wwP���1$�������C���W3ކo��T����^/�H_��CY��ϋsn��K!      +   O   x�3�tLN.M���L��FFF�F�F�
��VF�V��z�F���� �*mh T�gli
�F�26�22ֳ������� 2      -   �   x�}��
� ��>�@�mf V�
��f��_�,�K�_�`.'�	�ºKN��<�jC��lL0�%Q1�#�x� ���+�����.iĜ��5a=�
�Jx���Fx�c�x!,���\�;�+���/�_���u~"      5   y   x�3�t�L-M���;��3�<1#��<�3Ə��62uH�M���K���T1JT14P1�t/r5�J����4O5O�K�H���t(J�+�rrJ��+H507��p
2Bs��qqq y�'0      1   �  x��[�r�8]�_��v�oĭY���T
��P�U�����!��5�y�`���9}�H�E�wQZn6A�V,�։��;Vh�wg�
�Wl��y~e�fs�eo����#��js�sg�L�������b���G�ҽ�7-�GY��L��.
{n�_���[�,)�݃����6����9���%�G��
?#G�#�tu�����.�N�Z�k��}c���,��C'�M�͛�t�
��S�����]V��?��L+?�����'���� �sn�=dO��`�YϽz��fEȊ~N����Y�,�\�Ծ�����?��8����D{[N��=�;�v��3[���0����]{Z���UT��	%���6��V�+���w(W�>֤���i�������1aiO
�낓�Fa�>�1�+�N\��f��`�R��71��
Q��H�#�Y�5��6��6  0`�M	d�m
�D0]�1'n�� ����8*�ȂN����L��~(:�p�2جN�5bV塎�`���Ż��N�qo��1��E4�h[p�$ aI1�|��i�Iğ�ʵ蒣����_ t�CLa9f�~)5j��x;�ٴ���}=`�%���.쏲� ���4!�L� ĈALԎ+�ht�4̞�����1@��0�|<��u�^2�+a=_�na�# �ݘ���N9����c`��z�V��\8]��.M~<�TɊr��"�ʒ��ߗ�ܙ���O��,�XP�"{��s=sn\_�G�_͍��G�6󻏊D���M&����Q^_��� #��$1�qh ��:�/P�R���\}��yU�bP,��2)�w9��31���j�~[<���,)�,DD�T�#��F�*��G�u��w�d
Lq�. �č9��YߵM���:���~%�0<46Q��K�6)<m�'6�*��g�~'�p*#%��8(���(F���8���dPU��Ҧ���}qʯ,~,oD��h0��$ sA����Nň|��}�ֱ���+�����Ϫ�He�=�@?|�Ӏ�k>�*Jw8�@  ����$]�M΋���)��f#8`(���ߜ ���(�(9�OL��w�55ɐ6����}�Rz���M1�>n�r��K}�7[ �ā��+P�P�Ih���!1ꙭ����&ҧ�=��(�MpL��!�%~�Ȫ<戎L�pߎ�۵����`�� lb��|�e�OX�v8�ɡ�C�߁^i�S��S�޴�ᨼ1��(�iJ�U��T�B�ѯ�b3�R�5p�-r<��K	�mx8�E\0I)/y���2G�2,bi�i6U�Sٜ�>�W��=��~�l�3��M����@�,�t�i���'ٳ9pB'\W,᤺Bb�-brR���{c��OE΍��!��ڐ��R�M=���g���{�n�\m��X�1��j�86�r�].O��P�J7_!�/6��8�F�N��bJiG)R�UF��w�j��<$���}9����E	F�#�Vot{��
\�RH}u�ʮݭ��"��~3p 8�uA��L�� �Tj�#��k�y���Y�{M��Ƒ��m|��r�:h�Э�mh'hP*�x���y裑���ɘ�/���"Q�l?;�`�l��v��Gqx�.!#R �d	�J2b{��i]�=m �q�F��#�3�F w�82!R`g�����ko�w^}ߚM~Uͩ�af�bV/>X�Wa�/m�\��E.      3   �   x�}��j�0���S�>�I������jcH�`Ʌ��ܚ��ݤ���ݫ��R�����X���j��~����\1�� �΄�U�$�Å[e:c��4f��;��0��a|��"mԛ���Cu��Zlեm͟��lBA|�KvE d�L�e.��LiOj�v���~U�\�}Ka�*�%U�6��|�o���E���z�W_#��j�� ̖}�      7      x�3�4�4����� �X      /      x������ � �      ;   �  x�͚�r�6ǯ��`|Ӌve�	������;��Av����v'���}�}�J�^��@"��"���s��H�g$�T2�~��N�O� �SP���U��,[�{_W�s����_�US��Wu}����RU0��M����}�N�mZ�Z~^����9d{���,b,�ɺ�.��^��q�CD�qd�`��ܖ��2���tP�Å<~zy���~��1^4Y������� ��N��*�}�Jw&�1�d�LU�\G��Z�9:4�,�E���Xglߔ�������ӓ�V?4����R���#���+������*D0�0��" �ǉ0��^!���g@;I.aBaȁ�hݫ�����@����xȿg�=&0�?�=WB�/�a��~����,("�8g>_�����q����`�[冮���0��g���	n'D_�I��C-7���jR�.�.4�jJ/Q���*UeuZS�����`�E����	�8�&�oB�&ξ�m�e'�g���f�.��s׿Pc������)��H��\%i�/�;���u�k�u��[��4���m��R�(��mb���kk�-LM��dG>�]�q;�m ���O`�����v��׳Jb��:MTo�1�k�!m����P�u-%�Bf�(��J�ʓ^�/�8KUQ�O��n>����6]g7��MqtSȐ��$��n�6�v�Y�흯8�!s֐m����&�ݱ�V#0�5�%��-����pcuJww["�n��bE�lL���"b��mi��d?��H���w��L�=��\y�,jo�GI/��).eyJ}�WY&˝Zl�o���9�:'Z���9���$�W�@�k���۱<.}�����5�u��i0n���:��/�|�|�Jϵ3�\(B6�t(��t�^����쥞mh4��1����Pͽ�o	h���ؚc.�'��*�)�*���x���|�Q�ad����b���檇�d!��Vrd�뎃��o�*�Lz۴�e��߿y���4O��\р��qݘ�� ���=�NiE&��E%T-�
��8{(��PN�F�۔5��XҚ������w�gD«6��m�{A?A��ml��/w�F��pʯ6�G�A����8��9̍�V�F�;�����+���3�2�/�e��enj���>sX	����n�-_�-PO`����� "۽���2�l���m҈��6o�-�E��2��������W��l��i�o�m�=�x��x|�x�P`�q�ƶy��b��d�N� �xM�������͍�6���K�����H��7��A�?����،�J��3q�p��]O�&a�2��%���[{�N0Y�BQ�`tE�Vǘ�UC�,��/�-�4�8;�4�Vƞjr��^hc~��&})h�6}�www��=��      =   {   x����
� ����0��I�2�e+"�q��ǯ攐<��c	�˪%��q�O�R��uCZ$Xc:�t�|��m�w�]p�z��޵��I|�,����ux`�S���߮��������vG      ?   T  x��Z�r�:}���31w~�|�~!�M�`�d���&!	���N[�.���$9U^޶Uyɇ�����t��҃�><Oy��5_o����8���.ֶ"Nhl������	��{y���H�E��$�݌R�$ݑ�e�(�6�j�Ҍ���;B`)b�:�][�'�R*E��2*E��Y�)�RSc1&X4�>-x?6!�]﷼62�y�*}��އ�V��y�����X��O_�_ٱ��ս-���@�Xk��w�?���6���+t�b��{���w�z �G6P&ـ�;��U�"��[��7č5�/t�R9��`%C�Гr鿵&��0'��Gy�����N�(��{F�	9�;�v�!o�7�qh�y�����leYK�Aj~����fz!″cE$����a(�+Jiĥ����C��6` ��KV����5S�*
�	n;J�**�,2���M@+��m�Qi��&-�1ŗ�>(��9�g9�	�T��:�*pA����B�,�J���l�e�]>���������eU�H�&fR��Z,����t�p�~˪0*�ϫ:��:��㕄��߈׵i�zm���|�V@a���w��(�c�����,g^�a����w���g}�?���V�4��L\����m�+dA\��۶��_� � �=}3'���ט���G7��ʢ2d���+��j.ye���ăY|�ۜ��	��Y����CX@��̯�)Pਡ���J5��Np�s �緮��	d����!+��<��9�8�F�n�GJ�?�k���8`�V*�@��j� N�xf�Tf�����ne�?v��çg�U���e��Nm����_�D����`����8·=���\E�b���&���h���7r5�5�S�9������+�U�S�R��.\����B�,望ڣ4MCs>�4��T p��9�<qy5�j�������!��$雞��kCI��`"u5X��IU�"������G��#&O�Gx���%�Q��K�"��`+4ǐ=!G ~4ݵ���(�j9 ��en���9<��Iz���4u��u�]>�Q�!~޲�Q7� 	�M��*��uJ_.ö�1Ħ֍���d���9I�y���~u�9�<���ӖX��zӞ�a'/�y}����	C��^�4�a�9�ɵ"*�G<�,�bDTD8!*�o�,QEr3g�*$D5ˮ;8������Z�c�t��>�0'�-Tl�t�:�b�n��)��5�G��0`0����^/[���Ѳ�/�A;+l�6/�b\��?4!H]4�)o씭Y�"L��a�GDGN�c�9s�&��D��ؙUA[D�~���V�rQa1�m�A�3�ߊ�􍹌+� 0�ϥR�b�GR*6�E�S�0��|��Mf)��]C:�L��񄪢���s[w��`�/�����֍g9�Nq:���Dd��oT�<J6s�l�,Y8e�ɜ��tmJ�"�Z� o��~��N�bמ"� s�N"��.���rW+�P�N����8�	M?*�bb�P�#5����N�;���rH�Μ#�wY¯�����aF�      A   X   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"��D\F��I9��8�)��fPDĄ=... ��3O      C      x������ � �     