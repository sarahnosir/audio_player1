import 'package:assets_audio_player/assets_audio_player.dart';

class AudioServices {
  final _audioplayer = AssetsAudioPlayer();

  void playsound(String audiopath) {
    try {
      _audioplayer.open(
        Audio(audiopath),
      );
      _audioplayer.play();
    } catch (e) {
      print('----Exception while playing sound $e');
    }
  }

  void stopsound() {
    try {
      _audioplayer.stop();
    } catch (e) {
      print('----Exception while playing sound $e');
    }
  }
}
