import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';

import '../page_manager.dart';
import 'audio_handler.dart';
import 'playlist_repository.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // services
  getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());

  // page state
  getIt.registerLazySingleton<PageManager>(() => PageManager());
  // init the audio handeler
  getIt.registerSingleton<AudioHandler>(await initAudioService());
}
