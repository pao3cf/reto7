class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String desc;
  List<String> imgs;
  Game(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.desc,
    this.imgs,
  );
  static List<Game> generateGames() {
    return [
      Game(
        'assets/images/ori1.jpeg',
        'assets/images/ori_logo.jpg',
        'Clash Royale',
        'Estrategia',
        4.8,
        382,
        324,
        'Clash Royale es un juego de estrategia en tiempo real en el que podremos enfrentarnos a otros jugadores a través de Internet en frenéticos duelos protagonizados por los míticos personajes de "Clash of Clans". Encontraremos a los gigantes, los caballeros, los esqueletos con bombas, las arqueras y a todos los demás.',
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
        ],
      ),
      Game(
        'assets/images/rl2.jpg',
        'assets/images/rl_logo.png',
        'Call of Duty Mobile',
        'Aventura',
        4.7,
        226,
        148,
        'CALL OF DUTY®: MOBILE trae una experiencia de juego en calidad HD de consola en tu teléfono con controles personalizables, además de chat de voz y de texto, gráficos 3D y un sonido increíble. Disfruta esta icónica franquicia, ahora en tu teléfono, para divertirte donde sea que vayas.',
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.png',
        ],
      ),
    ];
  }
}
