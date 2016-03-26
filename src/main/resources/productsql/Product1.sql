INSERT INTO public.product(id, name,code) VALUES (-1, 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL', 'EB1');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL', 'EB6');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL', 'EB10');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL', 'EB15');
INSERT INTO public.product(id, name,code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL', 'EB20');

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES (1, 0, 0, 10, '500ML', 0, -1);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, -1);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, -1);

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '500ML', 0, -2);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, -2);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, -2);

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '500ML', 0, -3);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, -3);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, -3);

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '500ML', 0, -4);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1L', 0, -4);
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '4L', 0, -4);