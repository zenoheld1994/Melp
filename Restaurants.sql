--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.15
-- Dumped by pg_dump version 9.3.15
-- Started on 2018-10-22 01:00:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 189 (class 1259 OID 48667)
-- Name: Restaurants; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Restaurants" (
    id text NOT NULL,
    rating integer NOT NULL,
    name text NOT NULL,
    site text NOT NULL,
    email text NOT NULL,
    phone text NOT NULL,
    street text NOT NULL,
    city text NOT NULL,
    state text NOT NULL,
    lat double precision NOT NULL,
    lng double precision NOT NULL,
    mpoly geometry(Point,4326)
);


ALTER TABLE public."Restaurants" OWNER TO postgres;

--
-- TOC entry 3278 (class 0 OID 48667)
-- Dependencies: 189
-- Data for Name: Restaurants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Restaurants" (id, rating, name, site, email, phone, street, city, state, lat, lng, mpoly) FROM stdin;
4e17896d-a26f-44ae-a8a4-5fbd5cde79b0	0	Hernández - Lira	http://graciela.com.mx	Brandon_Vigil@hotmail.com	570 746 998	93725 Erick Arroyo	Mateofurt	Hidalgo	19.437904276994999	-99.128657677502304	0101000020E61000001C5069ED3BC858C0D878A47E1A703340
c0ffd058-e773-47f1-974b-42d41cb555bf	3	Rendón - Elizondo	https://cristina.mx	Hugo.Casanova49@gmail.com	5866-337-812	5518 Monserrat Explanada	Chignahuapan María	Sinaloa	19.436070591034799	-99.129786573199397	0101000020E61000007CD6576C4EC858C0EA3D7F52A26F3340
c29082c4-4352-4517-9b4b-c45f86fc1830	2	Nájera - Chávez	https://pedro.gob.mx	Carlota31@hotmail.com	5532-129-406	79224 Mariano Travesía	Nezahualcóyotl Timoteo	Coahuila	19.4424869116657	-99.123833259919607	0101000020E6100000C16056E2ECC758C021837ED246713340
714ce590-f302-4453-895b-aa2992c2fa2c	1	Armendáriz S.A.	https://eloisa.org	Regina35@yahoo.com	542 891 822	821 Agustín Quinta	Piedras Negras Jesúsberg	Chiapas	19.4365512864902	-99.133023285016293	0101000020E610000018B0187483C858C08C803AD3C16F3340
2b8f5a44-1e8b-44ec-9b25-0edc5b64b7e6	3	Hurtado, Rolón and Segovia	https://elías.org	RosaMara_Figueroa@corpfolder.com	559.867.074	039 Susana Polígono	Marco Antonioland	Colima	19.433497663015	-99.128513506572105	0101000020E610000093F4B69039C858C0B78AEDB3F96E3340
ddb77425-2c3f-435c-8391-021b40010b0d	0	Serrato Hermanos	https://octavio.org	Yamileth_Lugo28@corpfolder.com	571.744.718	14476 Delgadillo Partida	Nevárezfort	Michoacan	19.434704225487501	-99.126381781539294	0101000020E610000060A19CA316C858C0DEE6AFC6486F3340
7b845a5f-94d4-4d52-bbb7-838839a180d6	1	Saiz, Aponte and Muñoz	https://homero.com	Carolina_Merino@nearbpo.com	584212054	563 Verduzco Vía Pública	Nuevo Laredo Alejandrahaven	San Luis Potosí	19.4414878243213	-99.127489931858506	0101000020E6100000B3F987CB28C858C0CC0A975805713340
030eaf75-da6e-4748-9727-f2704f831498	2	Niño - Negrete	https://elizabeth.gob.mx	Luz_Sevilla@gmail.com	5178-668-409	3041 Gael Torrente	Querétaro Saratown	Oaxaca	19.4416814748901	-99.126573243809702	0101000020E610000086ADA9C619C858C0EBE6810912713340
1ce4a7f8-ff21-4450-9107-f4f952f39f99	4	Kortajarena - Rangel	http://débora.gob.mx	Brandon_Quiros@gmail.com	560 092 151	59897 Esquivel Aldea	Monterrey Dulce María	Querétaro	19.440701969313	-99.126014933961301	0101000020E6100000F80AF1A010C858C06D7B21D8D1703340
9f98fad3-ecd6-421b-ba8c-2bd63340473d	2	Macías S.L.	http://miguel.com.mx	Jazmin_Santiago7@yahoo.com	508272671	1736 Adela Urbanización	Puerto Vallarta Dorotea	Baja California Sur	19.436925777914499	-99.131560751351401	0101000020E6100000741FC97D6BC858C011EC265EDA6F3340
38c965f9-74b0-4d8e-9cc2-2e457a1ebb83	3	Arreola Hermanos	https://alejandra.com.mx	Ximena_Domnquez62@yahoo.com	531.757.355	9061 Fernando Puente	Campeche Mercedes	Guanajuato	19.434988822590601	-99.126307347796697	0101000020E610000001026A6B15C858C0F5266F6D5B6F3340
4501fb34-eefe-4f63-90c9-a9a1272df71d	0	Gallardo - Angulo	https://josé antonio.mx	Brandon34@gmail.com	5191-333-084	7229 Villarreal Gran Subida	Campeche Daniela	Quintana Roo	19.434132032294801	-99.132623560836393	0101000020E61000002B1E88E77CC858C029DAE046236F3340
d04fd5aa-4a56-43a6-91c9-35edaaadadc9	0	Calvillo S.L.	https://martín.info	JuanPablo.Cervntez@nearbpo.com	501 812 092	38836 Emilio Partida	Rubénchester	Tabasco	19.442393166493201	-99.126576982844	0101000020E6100000726F58D619C858C0EB0FB6AD40713340
a850ff07-516e-44e4-acd7-26fa0c12f4fc	1	Palomo - Cardona	http://marco antonio.org	Lizbeth.Laboy@hotmail.com	508.505.560	5588 Leticia Torrente	Tetela de Ocampo Silviafurt	Colima	19.434869863060801	-99.128089522049194	0101000020E6100000570A659E32C858C0B5DC9FA1536F3340
7173d827-3308-46d8-9b9e-86306ec64f78	3	Carreón e Hijos	http://dolores.org	Benjamn.Arenas27@yahoo.com	572.204.703	7124 Granado Parcela	Celaya Carlos	Puebla	19.440554355539401	-99.126803474461596	0101000020E61000003BF5518C1DC858C0EF26952BC8703340
d6782cfc-29ef-4241-985b-0a6ff6cf4c64	4	Munguía S.L.	https://emmanuel.com.mx	Yaretzi_Saldivar28@yahoo.com	573.429.070	05203 Martín Lado	León Césarland	Guerrero	19.438892040900399	-99.130334270387294	0101000020E610000022378D6557C858C05424923A5B703340
dd56e1e9-bd67-41cd-baac-a8f9f47ad5c8	4	Fuentes, Porras and Barajas	http://ariadna.com.mx	Jimena25@hotmail.com	5087-469-378	81414 Luz Ferrocarril	Paolabury	Michoacan	19.439351178761999	-99.133066127051507	0101000020E610000010F9C92784C858C0E93DA05179703340
ac3bafbe-ea67-47cb-af99-63d945f71bf5	1	Ledesma, Vélez and Matías	https://miranda.mx	Amalia27@gmail.com	593 520 541	7630 Collado Huerta	Irapuato Carolina	Jalisco	19.442714750417998	-99.127254169369493	0101000020E61000002FEEABEE24C858C08A80FEC055713340
3e26a92c-defb-4475-8c23-450750556fb9	4	Galarza, Griego and Orozco	https://josé luis.com.mx	JosEduardo_Narvez@nearbpo.com	5177-114-746	0785 José Luis Mercado	Tampico-Pánuco Mercedes	Guerrero	19.435311811282801	-99.130917404331598	0101000020E6100000368564F360C858C0AC054998706F3340
6b7cd221-7859-4ece-8ed6-fd79283f0e65	2	Hurtado, Armijo and Soto	https://iker.org	Patricio.Alonso52@gmail.com	5234-475-063	830 Valentín Colonia	La Laguna Ana Maríamouth	Tabasco	19.433433875076499	-99.130447253822695	0101000020E61000006041703F59C858C09F6EBE85F56E3340
d7888ed4-52f0-4be8-a210-f0d28ce0e565	0	Paredes - Montero	http://abraham.com.mx	Vanessa_Quinterodelacruz84@hotmail.com	5783-052-043	237 Regina Jardines	Pilarshire	Nuevo León	19.439240182675899	-99.133190440943395	0101000020E610000078FF323186C858C09BAE6B0B72703340
e6c4bf95-dba4-44b5-af90-b0ab7214146e	0	Zavala - Chavarría	https://ignacio.mx	Jernimo_Armas@nearbpo.com	588078464	019 Aragón Urbanización	Carrasquillobury	Yucatán	19.4332403037143	-99.132294236382407	0101000020E61000008DAD3E8277C858C014C327D6E86E3340
1d7e6cac-013e-404b-8d93-19d838ef30e1	1	Padilla, Mata and Posada	https://gabriel.com.mx	Josefina_Cano@corpfolder.com	554 352 295	0658 Espino Conjunto	Mérida Emilio	Guerrero	19.439150270929598	-99.124131537408502	0101000020E6100000976467C5F1C758C013ACF3266C703340
811fa2fc-f29c-4152-a821-7c2a67ab5d21	4	Gallegos, Anguiano and Jurado	http://eduardo.com	Carla.Ramn81@corpfolder.com	5572-745-754	2179 José Plaza	Sofiaville	Durango	19.434062623980498	-99.123802582132996	0101000020E6100000FB5AAA61ECC758C0856966BA1E6F3340
6e658154-be6f-409c-9c38-b53cc38c2705	3	Figueroa e Hijos	http://maría cristina.org	FernandoJavier.Batista@nearbpo.com	576.091.302	166 Gaona Ferrocarril	Tetela de Ocampo Ester	Yucatán	19.434163043604201	-99.130697843460695	0101000020E610000092D47C5A5DC858C07069294F256F3340
40424cd9-a4ff-466f-bea9-51cacb2dd2d5	3	Cruz, Korta hernandez and Yáñez	http://pedro.info	Jorge.Carrion@gmail.com	551 482 751	684 Barrientos Monte	Orizaba Nataliahaven	Estado de México	19.442036614777098	-99.132756068255205	0101000020E61000001BE04E137FC858C0291AC44F29713340
ed23040e-6d68-4211-b31c-62e2f36d120a	3	Casanova - Jaramillo	http://brayan.com	Valentina_Gracia59@nearbpo.com	573.342.065	220 Ángel Gabriel Solar	Cancún Yaretzi	Durango	19.433809975493201	-99.129344579016703	0101000020E6100000AA327C2E47C858C0FF6BA92B0E6F3340
8e086874-60ff-44d5-a327-e4bccf3a90ed	2	Moya - Cepeda	https://claudia.info	Silvia20@hotmail.com	592.612.849	28658 José Antonio Aldea	Guardadoview	Chihuahua	19.441974594328101	-99.132105722851506	0101000020E6100000BFD08F6B74C858C0544D3C3F25713340
5675b76e-738a-4f6f-9adc-2a1b708b67fc	1	Yanes S.A.	http://rubén.info	MaraLuisa_Amador@nearbpo.com	555 572 993	358 María Soledad Arrabal	Tlalnepantla Cristobal	Baja California Sur	19.439235495534302	-99.128932601134693	0101000020E6100000C050866E40C858C0EB8FC8BC71703340
c4965d5d-4c08-4806-8cfc-77099379ce4e	1	Rael, Mota and Cintrón	https://francisco.org	Miguelngel4@corpfolder.com	511.280.590	821 Lorena Ramal	Tula Adánville	Chihuahua	19.441598231213199	-99.126352086661299	0101000020E610000077FF0F2716C858C03A08E9940C713340
da7c9bad-6036-4a3a-8873-81dfaa585b26	0	Hinojosa Hermanos	https://erick.mx	XimenaGuadalupe.Mireles@nearbpo.com	5382-692-003	8772 Marrero Huerta	Zaragozafort	Morelos	19.437109458081402	-99.129257261755797	0101000020E6100000BF0040C045C858C05E3BCB67E66F3340
71795f1c-4ca0-4ec7-b925-5b906711329b	3	Zamudio S.L.	http://cecilia.com.mx	Estela.Quinta80@hotmail.com	590.101.852	928 Benavídez Municipio	Terrazasside	Baja California Sur	19.436545609191999	-99.125591457330501	0101000020E61000000E79C0B009C858C029B1FA73C16F3340
556091ed-3047-4f07-a2e3-1abbb37ff1bd	4	Kamat S.L.	http://melissa.mx	Eva88@corpfolder.com	5756-043-582	4820 Gurule Rambla	León Kimberlyland	Aguascalientes	19.440250257340299	-99.129177464601	0101000020E6100000DB758E7144C858C00955A93DB4703340
87b35453-f063-461a-b17b-9173f7f09805	0	Arevalo - Reséndez	http://esteban.info	Valeria.Espinal@yahoo.com	560 091 544	481 Raquel Huerta	Ríoshaven	Guanajuato	19.436266291055802	-99.132942802964607	0101000020E61000002EBE872282C858C0906ECC25AF6F3340
8d567e51-e73c-47b3-ad15-9ca14c32da14	0	Ñañez S.L.	http://cristobal.mx	Eduardo_Montes75@nearbpo.com	506.416.955	705 Gloria Avenida	Armijomouth	Tabasco	19.434803135355899	-99.1248489134273	0101000020E610000021074C86FDC758C0468D1E424F6F3340
84314586-29fb-420f-95e5-f15fbe7a619c	0	Mayorga S.L.	https://eva.com.mx	Melissa51@corpfolder.com	521.791.308	4152 Karem Mercado	Coatzacoalcos Nicolásstad	Baja California Norte	19.439665032625701	-99.132421589910905	0101000020E6100000E87C679879C858C0795238E38D703340
1b413a3a-e894-4142-a954-37176f12003b	1	Báez, Karan and Armijo	https://fernando.info	Alexa.Ortega@yahoo.com	545520700	08030 Juan Manuel Torrente	Uruapan del Progreso Juan Pabloland	Tabasco	19.4336995689413	-99.131092111864504	0101000020E61000002F4E2BD063C858C066E458EF066F3340
15c7fea0-89e8-4539-8632-46a619ef4ce9	1	García e Hijos	http://victor manuel.gob.mx	JosEmilio31@corpfolder.com	5250-478-668	3239 Apodaca Parque	Campeche Ramiroborough	Puebla	19.432912518063599	-99.131207917866206	0101000020E61000008B0DE5B565C858C0B71CD35AD36E3340
073aa6dc-3363-417c-b3f4-eba74fb75de8	3	Palacios, Moreno and Bustamante	http://bernardo.mx	Luis.Anaya25@corpfolder.com	581 978 966	37097 Florencia Senda	Octavioville	Chiapas	19.4345657240534	-99.132424846464204	0101000020E6100000762F10A679C858C09CC504B33F6F3340
36d43234-edd6-4680-8054-f2f6e4e4ab47	3	Polanco - Rodríguez	http://paola.gob.mx	Mayte.Camacho@nearbpo.com	5778-085-952	31916 Daniel Glorieta	Zitacuaro Monserratchester	Sinaloa	19.434522272423401	-99.126840090649594	0101000020E6100000594AE6251EC858C02E7105DA3C6F3340
7b97ebd0-6c61-43b1-80c6-bdc88846c727	3	Aragón, Robles and Echevarría	https://mario.org	MaradeJess32@gmail.com	558.191.752	5983 Tapia Lado	Juanaborough	Baja California Sur	19.436954120109299	-99.130072073273297	0101000020E61000003B35D11953C858C0CEB8A739DC6F3340
58c0549f-4b2c-43d4-af8d-d4641ffa9f66	4	Zabaleta S.A.	http://sofia.com	Bernardo.Yebra48@hotmail.com	538173475	65562 Olivas Rincón	Durango Elizabethchester	Campeche	19.4353102945797	-99.129204382992199	0101000020E6100000E3DC75E244C858C0FAD4D67E706F3340
5dccd552-2941-485c-a80d-8a769f4df5c5	0	Pelayo, Puente and Echevarría	https://homero.gob.mx	Eva.Ferrer47@hotmail.com	568360596	96024 Ana Sofía Polígono	Chetumal Liliafort	Tlaxcala	19.4407029973394	-99.127480686507496	0101000020E6100000F7DAC0A428C858C068D260E9D1703340
6308a2f2-6719-4ff6-818e-4e62f41a5296	4	Benítez - Carbajal	https://jaime.com.mx	Eva_Faras11@corpfolder.com	566384264	795 Gaytán Colonia	Nicolásview	Durango	19.4392862624074	-99.131524035185905	0101000020E6100000BB70C9E36AC858C0329F821075703340
72cc52c1-7aa5-4098-a391-5a713e2d9781	0	Lozada, Chávez and Guerrero	https://estefanía.mx	Victoria.Valadez@corpfolder.com	567 287 108	66998 Tejada Colegio	Isabelbury	Oaxaca	19.438667685892899	-99.125837690451107	0101000020E6100000DE4587B90DC858C0D5B884864C703340
601c7236-e03c-4ba1-beb5-38fbc09108f9	1	Mesa e Hijos	http://sofia.org	Julia_Chavarra@nearbpo.com	565 772 068	6236 Axel Masía	Francisco Javierland	Baja California Sur	19.433213549524599	-99.131724340094095	0101000020E6100000A532ED2B6EC858C069644B15E76E3340
3e21e0c4-3f89-42fb-8676-8350b95883e2	3	Muñoz, Armendáriz and Moya	https://abraham.com.mx	Emilio.Kortahernandez@nearbpo.com	500 103 302	626 Adriana Ramal	Rochaport	Veracruz	19.4347243681182	-99.124112030465994	0101000020E610000010F99573F1C758C089D79F184A6F3340
8b8af894-bc42-4664-b08c-6cf4ef28081f	3	Delgadillo - Escobar	http://cristian.mx	JosLuis.Valds86@yahoo.com	5325-988-654	73621 Gloria Colegio	Delgadilloshire	Michoacan	19.434993410241301	-99.131723276749597	0101000020E6100000BC7077276EC858C03FF666BA5B6F3340
0b9447e8-6253-4337-b9a0-d6573149fde0	1	Palomino - Vargas	http://abigail.mx	Cecilia_Zabaleta76@nearbpo.com	566.689.802	396 Abreu Bloque	Kortajarenaside	Quintana Roo	19.434472053968801	-99.131778629529606	0101000020E61000000C09A20F6FC858C06BD27E8F396F3340
cc9c245d-8b02-44c3-868e-90a3149edd5b	2	Vallejo, Jiménez and Jaimes	https://alfredo.gob.mx	Ramn_Campos@nearbpo.com	534 642 223	9775 Amaya Cuesta	Valle de México Juanborough	Tlaxcala	19.435657646344499	-99.125283200194005	0101000020E610000093E4D3A304C858C04D4D6F42876F3340
b6c3a6d0-4082-4353-926a-b903132b29f4	4	Ramón Hermanos	http://gloria.gob.mx	Abril.Yez@yahoo.com	526.705.438	41601 Lucia Manzana	Vallechester	Quintana Roo	19.437348595278301	-99.127895982200599	0101000020E6100000D935A1722FC858C0FEABD913F66F3340
32084e1d-41b9-4dc8-9b8a-83b5003302c1	2	Sáenz - Romo	https://juan.gob.mx	Pablo_Alicea@yahoo.com	523671866	65816 Sergio Parque	Becerraport	Sonora	19.439706773805	-99.129442168511801	0101000020E6100000D11ECEC748C858C07852859F90703340
5b04ad6d-54c1-419c-b8cd-69090fee4e76	0	Ramos S.L.	https://matías.gob.mx	Daniela_Castillo26@yahoo.com	565166901	919 Salvador Colonia	Ángel Gabrielfurt	Chiapas	19.432854647825501	-99.133443554372406	0101000020E61000000E79D5568AC858C00655EC8FCF6E3340
fdc12e77-af11-496a-846b-94068dcded56	2	Aragón, Herrera and Cortez	https://camila.com.mx	Victoria14@hotmail.com	5359-320-036	18089 Ramírez Partida	Los Mochis Carlachester	Jalisco	19.437309601691599	-99.131686737989398	0101000020E6100000CF3E368E6DC858C0017EA585F36F3340
39292d20-d201-4f0f-91a2-58e0f38fb2a2	0	Carrillo - Ozuna	https://carlos.mx	Armando82@yahoo.com	515577461	18190 Villagómez Ronda	Reynosa-Río Bravo Sofia	Colima	19.442636402745698	-99.128219449478607	0101000020E6100000318E59BF34C858C0D6CF899E50713340
84572f5a-ea3d-4800-930c-5799a897b06c	1	Khalid - Cortés	https://rosa maría.mx	Alan.Escobar@corpfolder.com	5191-038-970	225 Cortés Masía	Ixtapaluca María de Jesúsmouth	Veracruz	19.4387030534986	-99.126659467253305	0101000020E61000003B654F301BC858C08C6EE3D74E703340
3765054a-c706-4dcd-8424-aa8db4e5a4bd	4	Casárez S.L.	https://julio césar.gob.mx	Isaac86@gmail.com	567057696	808 Noriega Pasaje	La Paz Lucasbury	Jalisco	19.435477296009701	-99.125745554548104	0101000020E6100000B21915370CC858C01E83A8707B6F3340
beef488c-7f32-4a35-8469-89f5c6277972	4	Cordero, Chapa and Lomeli	https://erick.org	Elisa.Orozco1@gmail.com	577 596 369	70658 Arredondo Extrarradio	Torreón Tadeochester	Veracruz	19.441285113702101	-99.130854994932093	0101000020E61000001AF0A0ED5FC858C0EA8FAB0FF8703340
fe82f695-e437-4f42-9a69-d3a451c4a1d0	0	Jaramillo - Narváez	https://raúl.org	scar_Olivo@yahoo.com	591 730 248	0112 Jaime Apartamento	Comitán de Dominguez Gregorio	Jalisco	19.4403016289445	-99.126235849070696	0101000020E6100000DAD5863F14C858C031B1889BB7703340
b464014b-44ca-43e3-ba27-7477c8af2a53	0	Carrero Hermanos	http://luz.info	Adn.valos@corpfolder.com	562 179 920	7383 Hinojosa Huerta	Carlahaven	Hidalgo	19.4331364103761	-99.123920614493898	0101000020E61000004CA3BA50EEC758C0AE451D07E26E3340
8e5f2c9c-7a25-4cc0-a4fa-306c1a6e2d91	2	Sedillo - Márquez	https://maría teresa.org	DulceMara98@nearbpo.com	5452-478-262	4279 Tadeo Parcela	Lozanoshire	Chiapas	19.434510645862201	-99.133588671354005	0101000020E610000038A57FB78CC858C0F3BDF5163C6F3340
83967700-00d9-4d8e-8b5d-dd72f4fba3e5	0	Bueno, Crespo and Rodrígez	https://gonzalo.com	Toms.Sols@gmail.com	5578-929-369	6347 Reina Salida	Roybalfort	Zacatecas	19.441412382980801	-99.128545672588899	0101000020E6100000F2F3A0173AC858C0B4F3E46600713340
650156a1-081b-4760-b438-0cee445be58e	3	Reyna S.A.	https://soledad.gob.mx	XimenaGuadalupe.Alaniz@nearbpo.com	518 264 968	895 Xenia Prolongación	Mazatlán Antoniamouth	Morelos	19.439138151004901	-99.133192975719396	0101000020E610000064B1D43B86C858C0F1FD9C5B6B703340
b2ca0188-62c0-4bba-b20c-62bc2d4ba192	4	Rubio S.A.	http://víctor.info	Hugo.Casrez2@hotmail.com	5471-253-103	119 Polanco Colegio	Vicentechester	Morelos	19.4364424457615	-99.126458148719195	0101000020E6100000F243EBE317C858C0C4212FB1BA6F3340
cb0e214f-b0e4-496a-8164-eac6105b2d35	0	Valles, Tamez and Duarte	https://marta.com	Anita_Crdova@gmail.com	574 635 517	16737 Garrido Rampa	Piedras Negras Martaport	Campeche	19.4336349655599	-99.133191981167002	0101000020E6100000E9CCA83786C858C05B7B7BB3026F3340
b8b03b3d-4c06-4d91-b895-5d8dc85cbb2e	2	Venegas S.L.	http://maría guadalupe.com.mx	Dbora.Delgado66@gmail.com	5810-547-684	776 Burgos Plaza	Karantown	Quintana Roo	19.441435397793999	-99.133011424651301	0101000020E6100000CAB7594283C858C06DD204E901713340
9e71243d-3b46-45de-9f1f-019b1bfe6bac	1	Romo, Olmos and Calderón	https://valeria.gob.mx	Emilio29@corpfolder.com	510.186.181	67576 Cabán Chalet	Nicolásfurt	Jalisco	19.440954518169601	-99.124616993614794	0101000020E61000007D068EB9F9C758C0D78F3265E2703340
59cddeed-fbea-425f-8181-4bd1354b4dfe	1	Arias S.L.	https://alejandro.com.mx	Axel.Zavala60@hotmail.com	537 651 378	739 Ortiz Manzana	Abrahamfurt	Baja California Norte	19.433120066708	-99.127849281633203	0101000020E6100000A1DBC0AE2EC858C090C0E9F4E06E3340
39be48e9-ec92-4ce5-8c90-768dfe20fc37	1	Almaraz, Narváez and Urías	https://sebastian.com.mx	Lola32@nearbpo.com	500 100 614	684 Rolón Apartamento	Karanmouth	Oaxaca	19.440398337636601	-99.131173778863499	0101000020E6100000EF93B42665C858C0AA5C09F2BD703340
80537b08-6bae-444b-9564-98731e680f59	0	Alaniz - Aponte	https://ariadna.com.mx	Mara26@corpfolder.com	524.823.622	750 Alberto Escalinata	Tehuantepec-Salina Cruz Mauriciostad	Hidalgo	19.432885108287898	-99.126439182616707	0101000020E610000064915E9417C858C09E05F78ED16E3340
ecbdb52a-4263-4bf1-87fb-8d9d809ea6aa	4	Soliz Hermanos	http://roberto.gob.mx	Mercedes_Lugo@hotmail.com	537 295 998	440 Ceballos Huerta	Oaxaca Sara	Aguascalientes	19.435020310418199	-99.127219644550095	0101000020E61000001730DD5D24C858C08957B67D5D6F3340
596081be-67c8-4c47-8c56-e2611cd4fa32	2	Olivo, Santana and Elizondo	http://victor manuel.gob.mx	Emmanuel_Rosas56@nearbpo.com	545.851.405	4409 José Luis Rampa	Elizabethtown	Durango	19.434957105215201	-99.127354252655394	0101000020E6100000558A739226C858C0E70F4E59596F3340
8a5aefe2-8d0c-45b6-aab2-4da2769e10fa	4	Vázquez, Espinal and Cervántez	http://mariana.gob.mx	Leticia.Hidalgo@nearbpo.com	528679468	055 Julio Lugar	Zacatlan José Emilioside	Guanajuato	19.4384168098522	-99.1275969855933	0101000020E6100000400C8C8C2AC858C0F45484153C703340
c9186202-30a4-48e7-b20b-c56d733fa76a	1	Viera S.L.	http://ximena.gob.mx	Benjamn26@yahoo.com	518272168	675 Kamal Chalet	Guanajuato Tadeoview	Estado de México	19.4422736535412	-99.129352021196695	0101000020E6100000862DB34D47C858C086D79DD838713340
32b74fb4-1911-4db9-9646-f5ce4663ff1c	0	Alicea - Castañeda	https://gustavo.org	Gerardo_Ozuna32@yahoo.com	599 747 935	5702 Yamileth Terrenos	Coronadoview	Zacatecas	19.439496207435599	-99.126443087051499	0101000020E610000041ECBEA417C858C0E5A6CDD282703340
e5f21255-2dde-469e-bff8-4ea81d6fca27	3	Medrano - Chavarría	http://julia.org	Kevin.Longoria68@nearbpo.com	568061069	0302 Águilar Terrenos	Ocotlán Maricarmenstad	Tabasco	19.436839996762998	-99.127830226240107	0101000020E61000000F49D45E2EC858C08CAEFBBED46F3340
3b84c87a-1cf9-40e8-81ff-19669240ce9b	2	Naranjo, Galarza and Águilar	https://juan pablo.com	Monserrat.Lozano77@corpfolder.com	588438707	9390 Manuel Sector	Cuernavaca Aliciachester	Puebla	19.4353167526405	-99.133038868215294	0101000020E6100000380575B583C858C0EBFD2FEB706F3340
d3df42be-c6ff-43f6-8226-066140ab1b01	0	Kanzaki e Hijos	http://ivanna.info	Eva_Guerra48@gmail.com	5487-547-323	8465 Jorge Luis Aldea	Saizside	Querétaro	19.434062387208002	-99.129004347448102	0101000020E61000003655739B41C858C0687B6DB61E6F3340
35b9efad-5168-419e-96bc-0535e5e5d2f9	1	Villarreal - Gaytán	http://yolanda.info	Camila.Castellanos@corpfolder.com	5344-687-599	00698 Vallejo Ferrocarril	Arriagabury	Veracruz	19.437130021830601	-99.128580313814197	0101000020E610000073AFECA83AC858C0B9DCCBC0E76F3340
9c6f0247-d128-4396-b80c-8f9648928ec0	4	Salcedo Hermanos	https://marco antonio.org	Victoria.Lucero@corpfolder.com	573 413 844	7688 Puga Entrada	Gonzaloborough	Sinaloa	19.4406955632526	-99.132115901622797	0101000020E61000001830419674C858C087A9A76CD1703340
937518f0-a27f-491e-8788-ae9be0c65b31	2	Gonzales, Valladares and Espinal	https://carlota.org	Dolores.Mercado64@corpfolder.com	5528-685-947	30474 Montez Mercado	José Luisstad	Sinaloa	19.437307050768801	-99.128091115348894	0101000020E61000003AD513A532C858C0BA5CD95AF36F3340
534d5669-c0d4-4fe1-805e-7f836eb80e0f	1	Zayas - Loya	https://javier.com	Teresa_Miramontes@nearbpo.com	523.743.315	9119 Lorenzo Riera	Tulancingo Zoe	Tlaxcala	19.4409621455642	-99.125705272860699	0101000020E6100000C6F7208E0BC858C0E4F829E5E2703340
72bd30eb-192f-4f5a-bda2-bde3ae0844c2	1	Huerta e Hijos	https://esteban.com.mx	Gloria_Robledo73@nearbpo.com	509.051.989	93160 Xairo Belmonte Vía	Ciudad Obregón Emmanuel	Zacatecas	19.439100216425	-99.124699170126505	0101000020E610000007623A12FBC758C03F362DDF68703340
5e238917-a1e1-408a-93d5-0c1bcb3361bc	0	Carranza e Hijos	http://diana.org	Teresa_Domnquez39@corpfolder.com	545.204.593	19099 Isabel Bloque	Tlaxcala-Apizaco Juan Manuel	Sinaloa	19.4397348136227	-99.132349288475595	0101000020E6100000B369266978C858C0126CF37592703340
4e20f081-3095-4918-88f8-9591991b017f	4	Vélez - Maldonado	http://josé eduardo.org	Diego16@gmail.com	516.205.131	5206 Juárez Salida	Manuelaburgh	Puebla	19.437768497718999	-99.128648658467299	0101000020E6100000A53295C73BC858C012ECA49811703340
74c9182c-9ec1-47cb-8271-50729ae7f95d	3	Solís, Valles and Collado	http://mariana.com	Mario_Arreola51@gmail.com	5917-337-221	638 Sedillo Urbanización	Concepciónside	Quintana Roo	19.441102819734301	-99.1292894373791	0101000020E6100000BC50344746C858C0A5EE481DEC703340
19e1837a-c9ad-49d8-8d6d-7cb1d2ee0700	0	Águilar - Matos	https://eloisa.com.mx	LuisMiguel.Godnez83@yahoo.com	5616-561-563	319 Dolores Rampa	Coatzacoalcos Gonzalo	Oaxaca	19.4371495033689	-99.126510426651606	0101000020E6100000964430BF18C858C09C6EA407E96F3340
6589e471-ae41-4e6b-83b8-9654d6fc71ea	1	Peres, Meraz and Peña	http://esteban.com.mx	Luisngel.Gmez50@nearbpo.com	581 479 974	134 Hidalgo Avenida	Ojo de agua Luis Ángelport	Campeche	19.432932969746702	-99.131292100698104	0101000020E61000002DAEFB1667C858C0186CF2B1D46E3340
58131b8b-1b93-495f-b7a1-0e2e1b93633d	2	Meraz e Hijos	http://ximena.gob.mx	Isabela.Briones11@gmail.com	5495-151-485	10411 Pagan Salida	Ciudad de México Carlota	Aguascalientes	19.4386824334767	-99.128911395569205	0101000020E61000004B03951540C858C0B41CF17D4D703340
097f66dd-ca33-4f30-88e4-33193fcf8cda	1	Briseño - Rodarte	https://fernando javier.com	Mario84@yahoo.com	5256-976-186	780 Medina Terrenos	Madridland	Sonora	19.4338572792132	-99.125427378595703	0101000020E6100000DC458E0007C858C02C5A4945116F3340
fcb9b113-49f5-4119-8016-c7357ac135fc	0	Briones S.A.	http://maría de jesús.com	Emilio_Abeyta@yahoo.com	539 404 967	375 Puente Puente	Tulancingo de Bravo Margarita	Zacatecas	19.439758472156701	-99.126119839181499	0101000020E6100000532AF25812C858C04D0DE00294703340
0c91a515-2be1-4e8b-a4b0-be4f0ed1cce1	0	Pedroza, Heredia and Lebrón	https://zoe.com	Teodoro_Zelaya@gmail.com	5932-627-483	69201 Dávila Edificio	Julioview	Baja California Norte	19.4338683815538	-99.126575917015202	0101000020E6100000A802E0D119C858C0C28A8DFF116F3340
7ef3ed97-ebd6-4114-b2c1-af664534df79	1	Jáquez, Jimínez and Yami	http://dulce maría.org	Ivan_Delro32@gmail.com	555522401	057 Meléndez Aldea	Zacatlan Claudia	Baja California Sur	19.441782710110299	-99.129551831917297	0101000020E6100000304EC4934AC858C0ABDCF3AB18713340
3eb803d7-445a-43cd-9d08-2c3bd1c56148	1	Esquivel S.L.	https://abigail.com	Norma40@corpfolder.com	552972577	66678 Andrés Salida	Zacatlan Berta	Baja California Sur	19.438093117368901	-99.133411092339401	0101000020E61000005EA1ADCE89C858C0BEB3DBDE26703340
24345eda-0451-4225-a6d0-17365f746afc	3	Jaramillo - Flores	http://josé antonio.com.mx	Patricia.Noriega75@yahoo.com	520.411.112	2399 Esquibel Partida	Culiacán Cristianport	Chihuahua	19.441996720629302	-99.124306422269797	0101000020E61000003895ECA2F4C758C0C70A74B226713340
1ce2e219-d0e5-4f88-85f9-c152485ec7ab	0	Matos S.L.	https://ricardo.info	JosEmilio.Cotto69@corpfolder.com	5502-208-117	69982 Luis Gabino Terrenos	Cancún Estefaníahaven	Hidalgo	19.4420166275981	-99.131399651964102	0101000020E610000010F915DA68C858C072D26F0028713340
04e43341-64c0-4f66-822f-f2c0ef02e6bc	0	Barela e Hijos	https://timoteo.gob.mx	Soledad.Brito7@yahoo.com	500 281 343	8758 Alondra Romina Parcela	Guadalupeside	Tamaulipas	19.441613945654101	-99.133661455093304	0101000020E61000002397C6E88DC858C0B90A8E9C0D713340
f73cfbce-60b8-4e2c-9ec7-de8dbb5e0a49	1	Palacios - Montez	https://felipe.org	Rosalia.Estvez@nearbpo.com	590 666 046	7676 Raquel Solar	Marco Antonioton	Michoacan	19.441063406949901	-99.130467696467306	0101000020E6100000BD602E9559C858C0EA4F0C88E9703340
edb50561-46f9-4541-9c04-8de82401cc13	4	Pedraza - Niño	http://josé eduardo.gob.mx	Irene_Rojas95@nearbpo.com	537 531 201	207 Chavarría Lado	Franciscohaven	Baja California Norte	19.442683820522401	-99.125024592888394	0101000020E6100000B069266700C858C0AF9C13BA53713340
\.


--
-- TOC entry 3162 (class 2606 OID 48674)
-- Name: Restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Restaurants"
    ADD CONSTRAINT "Restaurants_pkey" PRIMARY KEY (id);


--
-- TOC entry 3159 (class 1259 OID 48675)
-- Name: Restaurants_id_15fbfc36_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Restaurants_id_15fbfc36_like" ON "Restaurants" USING btree (id text_pattern_ops);


--
-- TOC entry 3160 (class 1259 OID 48686)
-- Name: Restaurants_mpoly_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Restaurants_mpoly_id" ON "Restaurants" USING gist (mpoly);


--
-- TOC entry 3163 (class 1259 OID 48852)
-- Name: restaurants_gix; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX restaurants_gix ON "Restaurants" USING gist (geography(mpoly));


-- Completed on 2018-10-22 01:00:34

--
-- PostgreSQL database dump complete
--

