USE pokemontcg;

INSERT into pokemontcg.carta VALUES 
(1,'Charizard','Pokemon','Fuego',220,2,"una lagartija que queria ser dragon",NOW(),CURRENT_TIMESTAMP()),
('2','Mudkip','Pokemon','Agua',80,0,'le fascina jugar en el lodo',NOW(),CURRENT_TIMESTAMP()),
('3','Pikachu','Pokemon','Electrico',110,1,'el mejor compañero de viaje',NOW(),CURRENT_TIMESTAMP()),
('4','Ekans','Pokemon','Veneno',70,0,'Una serpiente, pero al reves',NOW(),CURRENT_TIMESTAMP()),
('5','Alakazam','Pokemon','Psiquico',200,2,'El mejor bigote Pokemon',NOW(),CURRENT_TIMESTAMP()),
('6','Machamp','Pokemon','Lucha',200,2,'Puede golpear a Mach 1', NOW(),CURRENT_TIMESTAMP()),
('7','Charmander','Pokemon','Fuego',150,0,'Si se apaga su cola muere',NOW(),CURRENT_TIMESTAMP()),
('8','Octillery','Pokemon','Agua',130,1,'Pulpito deprimido',NOW(),CURRENT_TIMESTAMP()),
('9','Vaporeon','Pokemon','Agua',170,1,'Se repopne de la fatiga rapidamente',NOW(),CURRENT_TIMESTAMP()),
('10','Umbreon','Pokemon','Siniestro',150,1,'admirador lunar numero uno',NOW(),CURRENT_TIMESTAMP()),
('11','Gardevoir','Pokemon','Hada',220,2,'puede crear agujeros negros',NOW(),CURRENT_TIMESTAMP());

INSERT INTO pokemontcg.jugador VALUES 
('1','Bairoflus',3,6,1,'Bronce 4',NOW(),CURRENT_TIMESTAMP()),
('2','Seb2TCG',2,2,2,'Plata 2',NOW(),CURRENT_TIMESTAMP()),
('3','MESC',1,0,0,'Sin Rango',NOW(),CURRENT_TIMESTAMP()),
('4','ChiguireLoco',10,0,7,'Bronce 4',NOW(),CURRENT_TIMESTAMP()),
('5','WePlay',25,30,12,'Oro 2',NOW(),CURRENT_TIMESTAMP()),
('6','Grimm',14,12,9,'Plata 3',NOW(),CURRENT_TIMESTAMP()),
('7','Fido',4,5,4,'Bronce 1',NOW(),CURRENT_TIMESTAMP()),
('8','Alexander',7,10,2,'Oro 2',NOW(),CURRENT_TIMESTAMP()),
('9','Maik',10,4,1,'Plata 4',NOW(),CURRENT_TIMESTAMP()),
('10','Politis',20,34,2,'Diamante 1',NOW(),CURRENT_TIMESTAMP());

INSERT INTO pokemontcg.entrenador VALUES
('1','Iono','La mejor streamer de Paldea'),
('2','Hilda','It´s chewsday innit!'),
('3','Rosa','Nanci para la banda'),
('4','Nemona','Perder no es una opcion'),
('5','Cynthia','La campeona de Sinnoh'),
('6','Dawn','El brillo del Platinum'),
('7','Grusha','Lider de Gimnasio de Hielo en Paldea'),
('8','Serena','Ash eres denso como un agujero negro'),
('9','Carmine','Estudiante de la Blueberry Academy'),
('10','Lusamine','Fanatica de los ultraentes');

INSERT INTO pokemontcg.estadio VALUES
('1','Estadio de Hoyuelo','Estadio tipo Planta en Galar'),
('2','Estadio de Puntera','El Pináculo de la región Galar'),
('3','Reserva Paraíso AEther','Situado en la estructura flotando en Alola'),
('4','Colina Saltagua','Un lugar lleno de cascada y vegetación en Alola'),
('5','Montaña Trueno','Una Mazmorra en un mundo misterioso'),
('6','Laboratorio Silencioso','Hogar de los Pokemones oscuros en Aura'),
('7','Bosque de Plantas Gigantes','Un bosque muy frondoso entre aromaflor y Vetusta'),
('8','Torre de las Aguas','Una de las dos torres Gemelas ubicadas en la Isla Armadura'),
('9','Torre Rossi','la Sede de Macrocosmos en Ciudad Puntera'),
('10','Estadio Velocidad','Aceleradas batallas entre Perlas y Diamantes');

INSERT INTO pokemontcg.consumible VALUES
('1','Miel','Elige 1 de tus Pokemon y lanza una moneda hastq eu salga cruz. Por cada cara, cura 40 puntos de daño'),
('2','Cubiletes de cambio','Cambia 1 carta de tu mano por la primera carta de tu baraja'),
('3','Cambio','cambia tu Pokemon activo por uno de tus Pokemon en Banca'),
('4','Bolitas Hada','Cara 50 puntos de daño a 1 de tus Pokemon que tenga alguna energia unida a el'),
('5','Recuperacion de Energia','Pon hasta 2 cartas de Energia Basica de tu pila de descarte a tu mano'),
('6','Reciclaje de Energia','Pon 5 cartas de energia basica de tu pila de descartes en tu baraja y barajalas todas'),
('7','Silbato Objetivo','Pon 1 Pokemon basico de la pila de descartes de tu rival en su banca'),
('8','Pocion','Cura 30 puntos de daño a 1 de tus Pokemon'),
('9','Reciclaherramientas','Elige 2 herramientas Pokemon unidas a Pokemon (tuyas o del rival) y descartalas'),
('10','Revitalizador','Pon dos Pokemon Planta de tu pila de descartes en tu mano');

INSERT INTO pokemontcg.objeto VALUES
('1','Inhibidor de Herramientas','Mientras el Pokemon al que este unida esta carta esta Activo, todas las herramientas unidas el Pokemon Activo rival quedan inhibidas, excepto Inhibidor de Herramientas'),
('2','Seguro Debilidad','El Pokemon al que este unida esta carta no tiene debilidad'),
('3','Cinturon Eleccion','Los ataques Pokemon al que este Unida esta carta hacen 30 puntos de daño mas al Pokemon V activo de tu rival'),
('4','Hechizo','Cuando el Pokemon Psiquico al que este unida esta carta queda fuera de combate por un ataque del rival, pon 4 contadores de daño en los Pokemon de tu rival de la manera que desees'),
('5','Gran Amuleto','El Pokemon al que esta unida esta carta tiene 30 PS mas'),
('6','Cinta Elegida','Los ataques del Pokemon al que esta unida esta carta causan 30 puntos de daño mas al POkemon-GX o Pokemon-Ex ativo de tu rival'),
('7','Capa Gigante','El Pokemon al que esta unida esta carta tiene 20 PS mas'),
('8','Capsula de Memoria','El Pokemon al que esta unida esta carta puede usar cualquier ataque de sus Evoluciones anteriores'),
('9','Amuleto Resistente','cualquier daño inflingido al Pokemon al que este unida esta carta por un ataque de tu rival se reduce en 20'),
('10','Piedra Pomez','El Pokemon al que este unida esta caarta no tiene Coste de Retirada');

INSERT INTO pokemontcg.cartera VALUES
('1','1',4000,200,450),
('2','2',8655,300,0),
('3','3',5691,465,876),
(4,4,13424,2375,123),
(5,5,4232,1221,195),
(6,6,2367,1978,129),
(7,7,1413,0942,875),
(8,8,7148,615,869),
(9,9,1346,864,572),
(10,10,5176,412,72);

INSERT INTO pokemontcg.efectos VALUES
(1,10,0,0,0,0,0,1,0),
(2,20,0,0,0,0,0,0,0),
(3,45,0,0,0,1,0,0,0),
(4,20,0,0,1,0,0,0,0),
(5,60,0,0,0,0,1,0,0),
(6,30,0,0,0,0,0,0,1),
(7,0,40,0,0,0,0,0,0),
(8,100,0,0,1,0,0,0,0),
(9,0,40,0,0,0,1,0,0),
(10,0,0,40,0,0,0,0,0);


 
