-- CREATE TABLE book(
--  id UUID PRIMARY KEY DEFAULT gen_random_uuid(), 
--  title VARCHAR(255), 
--  author_id UUID, 
--  publisher_id UUID, 
--  bookshelf_id UUID,
--  isbn VARCHAR(100),
--  year_published int,
--  pages int
-- );

-- CREATE TABLE publisher(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   name VARCHAR(255)
-- );

-- CREATE TABLE author(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   name VARCHAR(255)
-- );

-- CREATE TABLE book_shelf(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   name VARCHAR(255),
--   location VARCHAR(255)
-- );
-- CREATE TABLE category(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   parent_category_id UUID NULL,
--   name VARCHAR(255)
-- );
-- CREATE TABLE visitor(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   name VARCHAR(255)
-- );
-- CREATE TABLE officer(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   name VARCHAR(255)
-- );
-- CREATE TABLE BORROWING(
--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--   visitor_id UUID,
--   officer_id UUID,
--   book_id UUID,
--   created_at TIMESTAMPTZ,
--   due_date TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
--   returned_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
-- );
-- TRUNCATE TABLE author, category, officer, publisher, visitor CASCADE;

-- INSERT INTO author(name) VALUES('Budi'), ('Chandra'), ('Zakky'), ('Budi1'), ('Chandra1'), ('Zakky1'), ('Budi2'), ('Chandra2'), ('Zakky2'), ('Budi3'), ('Chandra3'), ('Zakky3');
-- INSERT INTO category(name) VALUES('Finansial'), ('Perbankan'), ('Quantum'), ('Finansial1'), ('Perbankan1'), ('Quantum1'), ('Finansial2'), ('Perbankan2'), ('Quantum2'), ('Finansial3'), ('Perbankan3'), ('Quantum3');
-- INSERT INTO officer(name) VALUES('Rohman'), ('Rifai'), ('Bando'), ('Rohman1'), ('Rifai1'), ('Bando1'), ('Rohman2'), ('Rifai2'), ('Bando2'), ('Rohman3'), ('Rifai3'), ('Bando3');
-- INSERT INTO publisher(name) VALUES('Afif Publishing Company'), ('Rizal Publishing Company'), ('Pustaka Media'), ('Afif Publishing Company1'), ('Rizal Publishing Company1'), ('Pustaka Media1'), ('Afif Publishing Company2'), ('Rizal Publishing Company2'), ('Pustaka Media2'), ('Afif Publishing Company3'), ('Rizal Publishing Company3'), ('Pustaka Media3');
-- INSERT INTO visitor(name) VALUES('Afif Anggi'), ('Rizal Afif'), ('Chandra Bando'), ('Afif Anggi1'), ('Rizal Afif1'), ('Chandra Bando1'), ('Afif Anggi2'), ('Rizal Afif2'), ('Chandra Bando2'), ('Afif Anggi3'), ('Rizal Afif3'), ('Chandra Bando3');
-- INSERT INTO book_shelf (name, location) VALUES ('UB', 'Utara Barat'),('TB', 'Timur Barat'), ('UT', 'Universitas Terbuka Selatan'),
-- ('UB1', 'Utara Barat'), ('TB1', 'Timur Barat 1'), ('UT1', 'Universitas Terbuka Selatan1'),
-- ('UB2', 'Utara Barat'), ('TB2', 'Timur Barat 2'), ('UT', 'Universitas Terbuka Selatan'),
-- ('UB3', 'Utara Barat'), ('TB3', 'Timur Barat 3'), ('UT', 'Universitas Terbuka Selatan')

INSERT INTO book(
  title, author_id, publisher_id, bookshelf_id, isbn, year_published, pages
) VALUES ('Sangkuriang 9','70e066e5-e0b9-454c-b92e-83f337670569','c7b4f57b-fa52-4ca3-aade-6a8bc6f88d4c','14a55e7f-fb3f-458a-9970-f6a4f99ed6e6','1312312312313123',2010,100),
('Sangkuriang 8','7c96652f-55aa-4c6f-a00b-aacda95e7f13','19664bd0-f5ec-4013-a53d-dbb15f8c9a9f','85262537-979f-47eb-9ba0-99553c6757c6','8098432434234234',2001,200),
('Sangkuriang 7','044fd37c-0580-4513-ac2b-07b9c8a918ba','04ca1c65-63dd-4684-8cf5-9782460b4775','1a6d8d34-d29d-4858-8201-2fb25a08692b','4346263542545324',500,300),
('Sangkuriang 6','9c9c0233-69c1-44da-998c-6c35163b165b','13223157-afce-4045-9fac-0fc88994a6ee','ba532c9d-e2c0-4f97-bfd8-91a412d2d340','6908980913213213',2009,400),
('Sangkuriang 5','17650e1c-a379-4c2f-988f-16d3c629275c','1b4f27e3-0f2f-4222-9b88-4c20560f4dc7','d827d7fc-0d7b-45ae-b508-6f97614cd789','3123123123133156',2019,500),
('Sangkurian 41','ab93374f-d93e-47db-b320-03cd5199964d','2abc1c56-ae64-4416-9129-34cac922b1a9','f17affb2-60b5-4537-a5a2-08202513ddb0','8908089789898089',3010,600),
('Sangkuriang 4','05490c32-c4a6-4838-baa8-5e96473261a7','35649394-5a88-40b6-8bfa-ec71a0fdf5e1','a51d9ef6-1d99-456c-b660-70f09cc904bd','9878787978797899',2080,700),
('Sangkuriang 3', 'b050fa29-8a95-4e7c-a051-019474ebc292','c1be69f0-f17b-4c7f-a153-e662062e0d41','81a2acd5-4a0d-48ab-a833-4b85547b95a6','5353435645454664',2030,800),
('Sangkuriang 2 ','5682310d-8768-4085-b742-7b6f7bdf55d9','c52ca669-d4c4-4282-877e-e91cb34177b3','0f798ffd-6740-483b-b62b-f9da159c227f','7574576456564645',2026,900),
('Sangkuriang','05100f72-4bb1-4e78-b6ba-90e3fbd3ac9a','9ad67325-a68a-4e02-be13-272eae98353b','3b067976-56c3-4cab-83b2-342e055ed33a','5347357854646242',1002,1000);






















