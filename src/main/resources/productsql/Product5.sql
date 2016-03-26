INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE1');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE2');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE6');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE7');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE13');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE15');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS TRACTOR EMULSION', 'TE22');

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, ((select id from product where code='TE1')));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE1'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE1'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE1'));


INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='TE2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE2'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE2'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='TE6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE6'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='TE7'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE7'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE7'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE7'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='TE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE13'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='TE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE15'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, (select id from product where code='TE22'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, (select id from product where code='TE22'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10L', 0, (select id from product where code='TE22'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20L', 0, (select id from product where code='TE22'));