INSERT INTO public.product(id, name, code) VALUES ((select min(id) from product)-1, 'ASIAN PAINTS ACRYLIC WALL PUTTY', '');

INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '1KG', 0, (select id from product where name='ASIAN PAINTS ACRYLIC WALL PUTTY'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '5KG', 0, (select id from product where name='ASIAN PAINTS ACRYLIC WALL PUTTY'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '10KG', 0, (select id from product where name='ASIAN PAINTS ACRYLIC WALL PUTTY'));
INSERT INTO public.category_type(
            id, non_vat_amount, price, quantity, type, vat_amount, product_id) VALUES ((select min(id) from category_type)-1, 0, 0, 10, '20KG', 0, (select id from product where name='ASIAN PAINTS ACRYLIC WALL PUTTY'));

