class SongModel {
  final String id;

  final String url;
  final String name;
  final String artist;
  final String icon;
  final String album;
  final Duration duration;
  SongModel({
    required this.id,
    required this.url,
    required this.name,
    required this.artist,
    required this.icon,
    required this.album,
    required this.duration,
  });
  static List<SongModel> songList = [
    SongModel(
        id: "001",
        url: "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/001.mp3",
        name: "Song 1",
        artist: "Artist 1",
        duration: const Duration(minutes: 6, seconds: 12),
        icon:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg",
        album: "Album 1"),
    SongModel(
      id: "002",
      url: "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/004.mp3",
      name: "Song 2",
      artist: "Artist 2",
      duration: const Duration(minutes: 7, seconds: 5),
      icon:
          "https://i.pinimg.com/736x/ea/1f/64/ea1f64668a0af149a3277db9e9e54824.jpg",
      album: "Album 2",
    ),
    SongModel(
      id: "003",
      url: "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/003.mp3",
      name: "Song 3",
      duration: const Duration(minutes: 5, seconds: 44),
      artist: "Artist 3",
      icon:
          "https://i.pinimg.com/736x/ea/1f/64/ea1f64668a0af149a3277db9e9e54824.jpg",
      album: "Album 3",
    ),
    SongModel(
      id: "004",
      url: "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/004.mp3",
      name: "Song 4",
      artist: "Artist 4",
      duration: const Duration(minutes: 5, seconds: 2),
      icon:
          "https://magazine.artland.com/wp-content/uploads/2020/02/Webp.net-compress-image-67-1.jpg",
      album: "Album 4",
    )
  ];
}
