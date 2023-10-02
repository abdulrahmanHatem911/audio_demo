import '../database.dart';

abstract class PlaylistRepository {
  List<SongModel> fetchInitialPlaylist();
  Future<Map<String, String>> fetchAnotherSong();
}

class DemoPlaylist extends PlaylistRepository {
  @override
  List<SongModel> fetchInitialPlaylist({int length = 10}) {
    return SongModel.songList;
  }

  @override
  Future<Map<String, String>> fetchAnotherSong() async {
    return _nextSong();
  }

  var _songIndex = 0;
  static const _maxSongNumber = 100;

  Map<String, String> _nextSong() {
    _songIndex = (_songIndex % _maxSongNumber) + 1;
    return {
      'id': _songIndex.toString().padLeft(3, '0'),
      'title': 'Song $_songIndex',
      'album': 'SoundHelix',
      'url':
          'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-$_songIndex.mp3',
      'artUri': 'https://picsum.photos/seed/$_songIndex/300/300',
    };
  }
}
