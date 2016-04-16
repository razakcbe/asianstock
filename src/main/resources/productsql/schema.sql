CREATE SEQUENCE public.hibernate_sequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
  
  CREATE TABLE public.revinfo
(
  rev integer NOT NULL,
  revtstmp bigint,
  CONSTRAINT revinfo_pkey PRIMARY KEY (rev)
)
WITH (
  OIDS=FALSE
);

CREATE TABLE public.productmaincategory
(
  id bigint NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT productmaincategory_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

CREATE TABLE public.productmaincategory_aud
(
  id bigint NOT NULL,
  rev integer NOT NULL,
  revtype smallint,
  name character varying(255),
  CONSTRAINT productmaincategory_aud_pkey PRIMARY KEY (id, rev),
  CONSTRAINT fk_3rwnyk0gs5d2ghfr7rn1xyhmf FOREIGN KEY (rev)
      REFERENCES public.revinfo (rev) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

CREATE TABLE public.product
(
  id bigint NOT NULL,
  code character varying(255) NOT NULL,
  name character varying(255) NOT NULL,
  product_main_category_id bigint,
  CONSTRAINT product_pkey PRIMARY KEY (id),
  CONSTRAINT fk_nexkgdh1ymvsip2q3c2jnp2hq FOREIGN KEY (product_main_category_id)
      REFERENCES public.productmaincategory (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);


CREATE TABLE public.product_aud
(
  id bigint NOT NULL,
  rev integer NOT NULL,
  revtype smallint,
  code character varying(255),
  name character varying(255),
  product_main_category_id bigint,
  CONSTRAINT product_aud_pkey PRIMARY KEY (id, rev),
  CONSTRAINT fk_hfd6q5m8q72jkpcewy8ijeys9 FOREIGN KEY (rev)
      REFERENCES public.revinfo (rev) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

CREATE TABLE public.categorytype
(
  id bigint NOT NULL,
  imageurl character varying(255),
  lastupdatetime timestamp without time zone,
  price double precision,
  quantity integer,
  type character varying(255) NOT NULL,
  vatpercentage character varying(255),
  product_id bigint,
  non_vat_amount numeric(19,2),
  vat_amount numeric(19,2),
  CONSTRAINT categorytype_pkey PRIMARY KEY (id),
  CONSTRAINT fk_nhf6tb4fuypvo4qw02ykhtxlh FOREIGN KEY (product_id)
      REFERENCES public.product (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

CREATE TABLE public.categorytype_aud
(
  id bigint NOT NULL,
  rev integer NOT NULL,
  revtype smallint,
  imageurl character varying(255),
  lastupdatetime timestamp without time zone,
  price double precision,
  quantity integer,
  type character varying(255),
  vatpercentage character varying(255),
  product_id bigint,
  CONSTRAINT categorytype_aud_pkey PRIMARY KEY (id, rev),
  CONSTRAINT fk_19qotswh36k5jc1ueu84vp9wo FOREIGN KEY (rev)
      REFERENCES public.revinfo (rev) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);


