INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM STAIN ENAMEL', 'SE6');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM STAIN ENAMEL', 'SE10');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM STAIN ENAMEL', 'SE13');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM STAIN ENAMEL', 'SE15');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM STAIN ENAMEL', 'SE20');

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1KG', 0, ((select id from product where code='SE6')));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '2KG', 0, (select id from product where code='SE6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '5KG', 0, (select id from product where code='SE6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10KG', 0, (select id from product where code='SE6'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20KG', 0, (select id from product where code='SE6'));


INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1KG', 0, (select id from product where code='SE10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '2KG', 0, (select id from product where code='SE10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '5KG', 0, (select id from product where code='SE10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10KG', 0, (select id from product where code='SE10'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20KG', 0, (select id from product where code='SE10'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1KG', 0, (select id from product where code='SE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '2KG', 0, (select id from product where code='SE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '5KG', 0, (select id from product where code='SE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10KG', 0, (select id from product where code='SE13'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20KG', 0, (select id from product where code='SE13'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1KG', 0, (select id from product where code='SE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '2KG', 0, (select id from product where code='SE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '5KG', 0, (select id from product where code='SE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10KG', 0, (select id from product where code='SE15'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20KG', 0, (select id from product where code='SE15'));

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1KG', 0, (select id from product where code='SE20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '2KG', 0, (select id from product where code='SE20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '5KG', 0, (select id from product where code='SE20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10KG', 0, (select id from product where code='SE20'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20KG', 0, (select id from product where code='SE20'));