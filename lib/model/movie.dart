class Movie {
  int id;
  String imageUrl;
  String overview;
  String releaseDate;
  String title;
  String backdropUrl;
  double popularity;
  int voteCount;
  double voteAverage;

  List<String> genres;

  Movie({
    required this.id,
    required this.imageUrl,
    required this.overview,
    required this.releaseDate,
    required this.title,
    required this.backdropUrl,
    required this.popularity,
    required this.voteCount,
    required this.voteAverage,
    required this.genres
});
}

const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w500';

var popularMovies = [
  Movie(
      id: 297761,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rbsm0i2q2uqlUSFgUAHq3xCUO4j.jpg',
      overview: 'From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.',
      releaseDate: '2016-08-03',
      title: 'Suicide Squad',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/1Nn2aBWB1x91GmvFm9F5SM2nQl3.jpg',
      popularity: 48.261451,
      voteCount: 1466,
      voteAverage: 5.91,
      genres: [
        'Action',
        'Adventure',
        'Crime',
        'Fantasy',
        'Science Fiction',
      ]
  ),
  Movie(
      id: 324668,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xA7N41glw17MBQtcWSm2eBlBRuG.jpg',
      overview: 'The most dangerous former operative of the CIA is drawn out of hiding to uncover hidden truths about his past.',
      releaseDate: '2016-07-27',
      title: 'Jason Bourne',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/7mHeyU0a538bgguOeF57I8ZroSk.jpg',
      popularity: 30.690177,
      voteCount: 649,
      voteAverage: 5.25,
      genres: [
        'Action',
        'Thriller',
      ]
  ),
  Movie(
      id: 291805,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/A81kDB6a1K86YLlcOtZB27jriJh.jpg',
      overview: 'One year after outwitting the FBI and winning the public’s adulation with their mind-bending spectacles, the Four Horsemen resurface only to find themselves face to face with a new enemy who enlists them to pull off their most dangerous heist yet.',
      releaseDate: '2016-06-02',
      title: 'Now You See Me 2',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/SRWz5eLqpXl0IYFC6PCthTcLr3.jpg',
      popularity: 29.737342,
      voteCount: 684,
      voteAverage: 6.64,
      genres: [
        'Action',
        'Thriller',
        'Comedy',
      ]
  ),
  Movie(
      id: 241251,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tM0hpWw3GONam6TKcMMciecHjhT.jpg',
      overview: 'A recently cheated on married woman falls for a younger man who has moved in next door, but their torrid affair soon takes a dangerous turn.',
      releaseDate: '2015-01-23',
      title: 'The Boy Next Door',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/tTJP7mt9UND7FENqVR17j10lLO1.jpg',
      popularity: 22.279864,
      voteCount: 628,
      voteAverage: 4.13,
      genres: [
        'Thriller',
      ]
  ),Movie(
      id: 278927,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fyKUxjaOP8KINir6MPFprsGtiT0.jpg',
      overview: 'An orphan boy is raised in the Jungle with the help of a pack of wolves, a bear and a black panther.',
      releaseDate: '2016-04-07',
      title: 'The Jungle Book',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/3sbmRuIpYEH5dMvec4z4JxKQHoj.jpg',
      popularity: 21.104822,
      voteCount: 1085,
      voteAverage: 6.42,
      genres: [
        'Family',
        'Adventure',
        'Drama',
        'Fantasy',
      ]
  ),Movie(
      id: 278924,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3FUJT82YKY1EJ1dmunQhW5PUZAT.jpg',
      overview: 'Arthur Bishop thought he had put his murderous past behind him when his most formidable foe kidnaps the love of his life. Now he is forced to travel the globe to complete three impossible assassinations, and do what he does best, make them look like accidents.',
      releaseDate: '2016-08-25',
      title: 'Mechanic: Resurrection',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/3f5rBEc6ioRBO2CATDt4sKjEJnY.jpg',
      popularity: 20.375179,
      voteCount: 119,
      voteAverage: 4.59,
      genres: [
        'Action',
        'Crime',
        'Thriller',
      ]
  ),Movie(
      id: 209112,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5UsK3grJvtQrtzEgqNlDljJW96w.jpg',
      overview: 'Fearing the actions of a god-like Super Hero left unchecked, Gotham City’s own formidable, forceful vigilante takes on Metropolis’s most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it’s ever known before.',
      releaseDate: '2016-03-23',
      title: 'Batman v Superman: Dawn of Justice',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/mX3WOJPBzzl4kj4xU5lL7qfD6C3.jpg',
      popularity: 19.413721,
      voteCount: 3486,
      voteAverage: 5.52,
      genres: [
        'Action',
        'Adventure',
        'Fantasy',
      ]
  ),Movie(
      id: 76341,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg',
      overview: 'An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and most everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There\'s Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.',
      releaseDate: '2015-05-13',
      title: 'Mad Max: Fury Road',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/nlCHUWjY9XWbuEUQauCBgnY8ymF.jpg',
      popularity: 18.797187,
      voteCount: 5236,
      voteAverage: 7.26,
      genres: [
        'Action',
        'Adventure',
        'Science Fiction',
      ]
  ),Movie(
      id: 271110,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rAGiXaUfPzY7CDEyNKUofk3Kw2e.jpg',
      overview: 'Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.',
      releaseDate: '2016-04-27',
      title: 'Captain America: Civil War',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/7FWlcZq3r6525LWOcvO9kNWurN1.jpg',
      popularity: 16.733457,
      voteCount: 2570,
      voteAverage: 6.93,
      genres: [
        'Action',
        'Adventure',
        'Science Fiction',
      ]
  ),Movie(
      id: 135397,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rhr4y79GpxQF9IsfJItRXVaoGs4.jpg',
      overview: 'Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond.',
      releaseDate: '2015-06-09',
      title: 'Jurassic World',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/yOCRqvrRrxbs5FYq2pX1KtLJwmR.jpg',
      popularity: 15.930056,
      voteCount: 4934,
      voteAverage: 6.59,
      genres: [
        'Action',
        'Adventure',
        'Science Fiction',
        'Thriller',
      ]
  ),Movie(
      id: 131631,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4FAA18ZIja70d1Tu5hr5cj2q1sB.jpg',
      overview: 'Katniss Everdeen reluctantly becomes the symbol of a mass rebellion against the autocratic Capitol.',
      releaseDate: '2014-11-18',
      title: 'The Hunger Games: Mockingjay - Part 1',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/tFlSDoWQsAZ2qjICKzfP5Yw6zM5.jpg',
      popularity: 15.774241,
      voteCount: 3182,
      voteAverage: 6.69,
      genres: [
        'Adventure',
        'Science Fiction',
        'Thriller',
      ]
  ),Movie(
      id: 168259,
      imageUrl: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wurKlC3VKUgcfsn0K51MJYEleS2.jpg',
      overview: 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.',
      releaseDate: '2015-04-01',
      title: 'Furious 7',
      backdropUrl: 'https://www.themoviedb.org/t/p/original/cHkhb5A4gQRK6zs6Pv7zorHs8Nk.jpg',
      popularity: 13.659073,
      voteCount: 2718,
      voteAverage: 7.39,
      genres: [
        'Action',
        'Thriller',
      ]
  ),
];