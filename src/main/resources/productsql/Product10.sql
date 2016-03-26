INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION', 'HQ2');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION', 'HQ6');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION', 'HQ10');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION', 'HQ13');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION', 'HQ15');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION', 'HQ20');

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='HQ2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='HQ2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='HQ2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='HQ2'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='HQ6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='HQ6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='HQ6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='HQ6'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='HQ10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='HQ10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='HQ10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='HQ10'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='HQ13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='HQ13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='HQ13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='HQ13'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='HQ15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='HQ15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='HQ15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='HQ15'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='HQ20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='HQ20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='HQ20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='HQ20'));
