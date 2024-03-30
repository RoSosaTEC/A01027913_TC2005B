DROP SCHEMA IF EXISTS pokemonTCG;
CREATE SCHEMA pokemonTCG;
USE pokemonTCG;

CREATE TABLE IF NOT EXISTS carta(
	id_carta INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    elemento VARCHAR(50) NOT NULL,
    puntos_salud INT NOT NULL,
    fase INT NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    ultima_modificacion TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    fecha_creacion TIMESTAMP NOT NULL,
    
    PRIMARY KEY(id_carta)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS estadio(
	id_estadio INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    
    
    PRIMARY KEY (id_estadio)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS entrenador(
	id_entrenador INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    
    
    PRIMARY KEY(id_entrenador)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS objeto(
	id_objeto INT NOT NULL AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    
    
    PRIMARY KEY (id_objeto)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS consumible(
	id_consumible INT NOT NULL AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    
    
    PRIMARY KEY (id_consumible)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS jugador(
	id_jugador INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
	nivel INT NOT NULL,
    partidas_ganadas INT NOT NULL, 
    partidas_perdidas INT NOT NULL,
    rango_competitivo VARCHAR(50),
    ultima_modificacion TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    fecha_creacion TIMESTAMP NOT NULL,
    PRIMARY KEY(id_jugador)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS efectos(
	id_efecto INT NOT NULL AUTO_INCREMENT,
    puntos_ataque INT NOT NULL,
    puntos_curacion INT NOT NULL,
    puntos_defensa INT NOT NULL,
    paralisis BOOL,
    veneno BOOL,
    dormido BOOL,
    quemado BOOL,
    confundido BOOL,
    PRIMARY KEY(id_efecto)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS mazo(
	id_mazo INT NOT NULL AUTO_INCREMENT,
    nombre_mazo VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250),
    cantidad_cartas INT NOT NULL,
    ultima_modificacion TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    fecha_creacion TIMESTAMP NOT NULL,
    PRIMARY KEY (id_mazo)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS turno(
	id_turno INT NOT NULL AUTO_INCREMENT,
	pokemon_activo INT NOT NULL,
    energia_equipada INT NOT NULL, 
    estadio_activo INT NOT NULL, 
    entrenador_usado INT NOT NULL, 
    objeto_usado INT NOT NULL,
    consumible_usado INT NOT NULL,
    
    PRIMARY KEY (id_turno),
    FOREIGN KEY (pokemon_activo) REFERENCES carta (id_carta),
    FOREIGN KEY (estadio_activo) REFERENCES estadio (id_estadio),
    FOREIGN KEY (entrenador_usado) REFERENCES entrenador (id_entrenador),
    FOREIGN KEY (objeto_usado) references objeto (id_objeto),
    FOREIGN KEY (consumible_usado) references consumible (id_consumible)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


CREATE TABLE IF NOT EXISTS inventario(
	id_inventario INT NOT NULL AUTO_INCREMENT,
	id_carta INT NOT NULL,
    id_jugador INT NOT NULL, 
    id_estadio INT NOT NULL,
    id_entrenador INT NOT NULL,
    id_consumible INT NOT NULL,
    id_objeto INT NOT NULL,
    
    PRIMARY KEY(id_inventario),
	FOREIGN KEY (id_carta) REFERENCES carta (id_carta),
	FOREIGN KEY (id_jugador) REFERENCES jugador (id_jugador),
	FOREIGN KEY (id_estadio) REFERENCES estadio (id_estadio),
	FOREIGN KEY (id_entrenador) REFERENCES entrenador (id_entrenador),
	FOREIGN KEY (id_objeto) REFERENCES objeto (id_objeto) 
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS activador(
	id_activador INT NOT NULL AUTO_INCREMENT,
	id_efecto INT NOT NULL, 
    id_carta INT NOT NULL,
    
    PRIMARY KEY(id_activador),
    FOREIGN KEY(id_efecto) REFERENCES efectos(id_efecto),
    FOREIGN KEY(id_carta) REFERENCES carta(id_carta)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS cartera(
	id_cartera INT NOT NULL AUTO_INCREMENT,
    id_jugador INT NOT NULL, 
    moneda INT NOT NULL,
    creditos INT NOT NULL,
    cristales INT NOT NULL,
    
    PRIMARY KEY (id_cartera),
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS partida(
	id_partida INT NOT NULL AUTO_INCREMENT,
    id_turno INT NOT NULL,
    id_jugador INT NOT NULL, 
    
    primary key (id_partida),
    FOREIGN KEY (id_turno) REFERENCES turno (id_turno),
    FOREIGN KEY (id_jugador) REFERENCES jugador (id_jugador)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS mazo_activo(
	id_mazo_activo INT NOT NULL AUTO_INCREMENT,
    id_inventario INT NOT NULL, 
    id_mazo INT NOT NULL,
    id_partida INT NOT NULL, 
    
    PRIMARY KEY (id_mazo_activo),
    FOREIGN KEY (id_inventario) REFERENCES inventario (id_inventario),
    FOREIGN KEY (id_mazo) REFERENCES mazo (id_mazo),
    FOREIGN KEY (id_partida) REFERENCES partida (id_partida)
    
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;



