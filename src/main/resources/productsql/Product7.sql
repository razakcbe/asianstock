INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS ROYALE LUXURY EMULSION', 'RB1');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS ROYALE LUXURY EMULSION', 'RB6');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS ROYALE LUXURY EMULSION', 'RB11');

INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '1L', 0, ((select id from product where code='RB1')));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '4L', 0, (select id from product where code='RB1'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '10L', 0, (select id from product where code='RB1'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '20L', 0, (select id from product where code='RB1'));


INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '1L', 0, (select id from product where code='RB6'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '4L', 0, (select id from product where code='RB6'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '10L', 0, (select id from product where code='RB6'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '20L', 0, (select id from product where code='RB6'));

INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '1L', 0, (select id from product where code='RB11'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '4L', 0, (select id from product where code='RB11'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '10L', 0, (select id from product where code='RB11'));
INSERT INTO public.categorytype(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from categorytype)-1, 0, 0, 10, '20L', 0, (select id from product where code='RB11'));
