CREATE DATABASE d4qdk17hphrrf6;

CREATE TABLE public.product
(
  id bigint NOT NULL,
  code character varying(255) NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT product_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.product
  OWNER TO postgres;

CREATE TABLE public.category_type
(
  id bigint NOT NULL,
  non_vat_amount numeric(19,2),
  price numeric(19,2),
  quantity integer,
  type character varying(255) NOT NULL,
  vat_amount numeric(19,2),
  product_id bigint,
  CONSTRAINT category_type_pkey PRIMARY KEY (id),
  CONSTRAINT fk_l8da43tsmxhi1vdn5accf1lba FOREIGN KEY (product_id)
      REFERENCES public.product (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.category_type
  OWNER TO postgres;
  
  
CREATE TABLE public.revinfo
(
  rev integer NOT NULL,
  revtstmp bigint,
  CONSTRAINT revinfo_pkey PRIMARY KEY (rev)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.revinfo
  OWNER TO postgres;

CREATE TABLE public.product_aud
(
  id bigint NOT NULL,
  rev integer NOT NULL,
  revtype smallint,
  code character varying(255),
  name character varying(255),
  CONSTRAINT product_aud_pkey PRIMARY KEY (id, rev),
  CONSTRAINT fk_hfd6q5m8q72jkpcewy8ijeys9 FOREIGN KEY (rev)
      REFERENCES public.revinfo (rev) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.product_aud
  OWNER TO postgres;
CREATE TABLE public.category_type_aud
(
  id bigint NOT NULL,
  rev integer NOT NULL,
  revtype smallint,
  non_vat_amount numeric(19,2),
  price numeric(19,2),
  quantity integer,
  type character varying(255),
  vat_amount numeric(19,2),
  product_id bigint,
  CONSTRAINT category_type_aud_pkey PRIMARY KEY (id, rev),
  CONSTRAINT fk_5xxi1ylsjfsvtu731bww0bmqk FOREIGN KEY (rev)
      REFERENCES public.revinfo (rev) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.category_type_aud
  OWNER TO postgres;


