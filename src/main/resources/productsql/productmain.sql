INSERT INTO public.productmaincategory(id, name) VALUES (-1, 'Wall Primer');
INSERT INTO public.productmaincategory(id, name) VALUES (-2, 'Exterior Emulsion');
INSERT INTO public.productmaincategory(id, name) VALUES (-3, 'Interior Emulsion');
INSERT INTO public.productmaincategory(id, name) VALUES (-4, 'Apocolite Premium Enamel');

update product set product_main_category_id = -1 where code in ('CODE1','CODE2','CODE3');
update product set product_main_category_id = -2 where name in ('ASIAN PAINTS APEX ULTIMA EXTERIOR EMULSION','ASIAN PAINTS APEX  EXTERIOR EMULSION','ASIAN PAINTS ACE EXTERIOR EMULSION');
update product set product_main_category_id = -3 where name in ('ASIAN PAINTS ROYALE LUXURY EMULSION','ASIAN PAINTS PREMIUM EMULSION','ASIAN PAINTS TRACTOR EMULSION');
update product set product_main_category_id = -4 where name in ('ASIAN PAINTS APCOLITE PREMIUM STAIN ENAMEL','ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL');


