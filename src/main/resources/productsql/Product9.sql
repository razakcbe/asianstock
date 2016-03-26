INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB1');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB2');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB6');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB11');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB16');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB17G');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX  EXTERIOR EMULSION', 'AB18G');

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB1'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB1'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB1'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB1'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB2'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB6'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB11'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB11'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB11'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB11'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB16'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB16'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB16'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB16'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB17G'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB17G'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB17G'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB17G'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='AB18G'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='AB18G'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='AB18G'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='AB18G'));