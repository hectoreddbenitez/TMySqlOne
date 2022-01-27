DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

    CREATE TABLE info_planos 
(
    plano_id	INT AUTO_INCREMENT PRIMARY KEY,
    tipo_plano	VARCHAR(300) NOT NULL,
    valor_plano	DECIMAL(4,2)
)ENGINE = InnoDB;

    CREATE TABLE info_usuario 
(
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario	VARCHAR(300) NOT NULL,
    idade_usuario	INT NOT NULL,
    plano_id	INT NOT NULL,
    data_assinatura	DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES info_planos (plano_id)
)ENGINE = InnoDB;


CREATE TABLE info_artista

(
    artista_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(300) NOT NULL
)ENGINE = InnoDB;

    CREATE TABLE info_albums 
(
    album_id	INT PRIMARY KEY AUTO_INCREMENT,
    artista_id	INT NOT NULL,
    ano_lancamento	INT NOT NULL,
    nome_album	varchar(300),
    FOREIGN KEY (artista_id) REFERENCES info_artista (artista_id)

)ENGINE = InnoDB;

    CREATE TABLE info_musica 
(
    musica_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome_musica	VARCHAR(300) NOT NULL,
    duração_segundos	INT NOT NULL,
    ano_lançamento	INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES info_albums  (album_id)

    
)ENGINE = InnoDB;

    CREATE TABLE historico_de_reproducoes
(
    usuario_id	INT NOT NULL,
    musica_id	INT NOT NULL,
    data_reproducao	DATETIME NOT NULL,
    PRIMARY KEY (usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES info_usuario (usuario_id), 
    FOREIGN KEY (musica_id) REFERENCES info_musica (musica_id)
    
)ENGINE = InnoDB;

    CREATE TABLE info_seguidores 
(
    usuario_id INT NOT NULL,
    artista_id	INT NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES info_usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES info_artista (artista_id)
)ENGINE = InnoDB;


INSERT INTO info_planos (plano_id,tipo_plano,valor_plano)
VALUES
    (1, "gratuito", 0.00),
    (2, "familiar", 7.99),
    (3, "universitário", 5.99),
    (4, "pessoal", 6.99);
    
    

INSERT INTO info_usuario (usuario_id,nome_usuario,idade_usuario, plano_id,data_assinatura)
VALUES
    (1, "Thati",    23, 1, "2019-10-20"),
    (2, "Cintia",   35, 2, "2017-12-30"),
    (3, "Bill",     20, 3, "2019-06-05"),
    (4, "Roger",    45, 4, "2020-05-13"),
    (5, "Norman",   58, 4, "2017-02-17"),
    (6, "Patrick",  33, 2, "2017-01-06"),
    (7, "Vivian",   26, 3, "2018-01-05"),
    (8, "Carol",    19, 3, "2018-02-14"),
    (9, "Angelina", 42, 2, "2018-04-29"),
    (10, "Paul",    46, 2, "2017-01-17");
    


INSERT INTO info_artista (artista_id,nome_artista)
VALUES
    (1, "Walter Phoenix"),
    (2, "Peter Strong"),
    (3, "Lance Day"),
    (4, "Freedie Shannon"),
    (5, "Tyler Isle"),
    (6, "Fog");
       


INSERT INTO info_albums (album_id,artista_id,ano_lancamento,nome_album)
VALUES
    (1, 1, 1990, "Envious"),
    (2, 1, 1993, "Exuberant"),
    (3, 2, 1995, "Hallowed Steam"),
    (4, 3, 1998, "Incandescent"),
    (5, 4, 2001, "Temporary Culture"),
    (6, 4, 2003, "Library of liberty"),
    (7, 5, 2007, "Chained Down"),
    (8, 5, 2012, "Cabinet of fools"),
    (9, 5, 2015, "No guarantees"),
    (10, 6, 2015, "Apparatus");
    

INSERT INTO info_seguidores (usuario_id,artista_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 3),
    (6, 1),
    (7, 2),
    (7, 5),
    (8, 1),
    (8, 5),
    (9, 6),
    (9, 4),
    (9, 3),
    (10, 2),
    (10, 6);
    


INSERT INTO info_musica (musica_id,nome_musica,duração_segundos,ano_lançamento,album_id)
VALUES
    (1, "Soul For Us", 200, 1990, 1),
    (2, "Reflections Of Magic", 163, 1990, 1),
    (3, " Dance With Her Own", 116, 1990, 1),
    (4, "Troubles Of My Inner Fire", 203, 1993, 2),
    (5, "Time Fireworks", 152, 1993, 2),
    (6, "Magic Circus", 105, 1995, 3),
    (7, "Honey, So Do I", 207, 1995, 3),
    (8, " Sweetie, Lets Go Wild", 139, 1995, 3),
    (9, "She Knows", 244, 1995, 3),
    (10, "Fantasy For Me", 100, 1998, 4),
    (11, " Celebration Of More", 146, 1998, 4),
    (12, "Rock His Everything", 223, 1998, 4),
    (13, "Home Forever", 231, 1998, 4),
    (14, "Diamond Power", 241, 1998, 4),
    (15, "Lets Be Silly", 132, 1998, 4),
    (16, "Thang Of Thunder", 240, 2001, 5),
    (17, "Words Of Her Life", 185, 2001, 5),
    (18, "Without My Streets", 176, 2001, 5),
    (19, "Need Of The Evening", 190, 2003, 6),
    (20, "History Of My Roses", 222, 2003, 6),
    (21, "Without My Love", 111, 2003, 6),
    (22, "Walking And Game", 123, 2003, 6),
    (23, "Young And Father", 197, 2003, 6),
    (24, "Finding My Traditions", 179, 2007, 7),
    (25, "Walking And Man", 229, 2007, 7),
    (26, "Hard And Time", 135, 2007, 7),
    (27, "Honey, Im A Lone Wolf", 150, 2007, 7),
    (28, "She Thinks I Wont Stay Tonight", 166, 2012, 8),
    (29, "He Heard Youre Bad For Me", 154, 2012, 8),
    (30, "He Hopes We Cant Stay", 210, 2012, 8),
    (31, " I Know I Know", 117, 2012, 8),
    (32, "Hes Walking Away", 159, 2015, 9),
    (33, "Hes Trouble", 138, 2015, 9),
    (34, "I Heard I Want To Bo Alone", 120, 2015, 9),
    (35, "I Ride Alone", 151, 2015, 9),
    (36, "Honey", 79, 2015, 10),
    (37, "You Cheated On Me", 95, 2015, 10),
    (38, " Wouldnt It Be Nice", 213, 2015, 10),
    (39, "Baby", 136, 2015, 10),
    (40, " You Make Me Feel So..", 83, 2015, 10);
    

INSERT INTO historico_de_reproducoes (usuario_id,musica_id,data_reproducao)
VALUES
    (1, 36, "2020-02-28 10:45:55"),
    (1, 25, "2020-05-02 05:30:35"),
    (1, 23, "2020-03-06 11:22:33"),
    (1, 14,  "2020-08-05 08:05:17"),
    (1, 15, "2020-09-14 16:32:22"),
    (2, 34, "2020-01-02 07:40:33"),
    (2, 24, "2020-05-16 06:16:22"),
    (2, 21, "2020-10-09 12:27:48"),
    (2, 39, "2020-09-21 13:14:46"),
    (3, 6, "2020-11-13 16:55:13"),
    (3, 3, "2020-12-05 18:38:30"),
    (3, 26,  "2020-07-30 10:00:00"),
    (4, 2, "2021-08-15 17:10:10"),
    (4, 35, "2021-07-10 15:20:30"),
    (4, 27, "2021-01-09 01:44:33"),
    (5, 7, "2020-07-03 19:33:28"),
    (5, 12, "2017-02-24 21:14:22"),
    (5, 14, "2020-08-06 15:23:43"),
    (5, 1,  "2020-11-10 13:52:27"),
    (6, 38, "2019-02-07 20:33:48"),
    (6, 29, "2017-01-24 00:31:17"),
    (6, 30, "2017-10-12 12:35:20"),
    (6, 22, "2018-05-29 14:56:41"),
    (7, 5, "2018-05-09 22:30:49"),
    (7, 4, "2020-07-27 12:52:58"),
    (7, 11, "2018-01-16 18:40:43"),
    (8, 39, "2018-03-21 16:56:40"),
    (8, 40, "2020-10-18 13:38:05"),
    (8, 32, "2019-05-25 08:14:03"),
    (8, 33, "2021-08-15 21:37:09"),
    (9, 16, "2021-05-24 17:23:45"),
    (9, 17, "2018-12-07 22:48:52"),
    (9, 8, "2021-03-14 06:14:26"),
    (9, 9, "2020-04-01 03:36:00"),
    (10, 20, "2017-02-06 08:21:34"),
    (10, 21, "2017-12-04 05:33:43"),
    (10, 12, "2017-07-27 05:24:49"),
    (10, 13, "2017-12-25 01:03:57");
    
   
