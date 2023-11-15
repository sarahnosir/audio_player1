import 'package:flutter/material.dart';

import '../services/audio_services.dart';

class CardTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String audiopath;
  const CardTileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.audiopath});

  @override
  Widget build(BuildContext context) {
    AudioServices audioServices = AudioServices();
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListTile(
        leading: const CircleAvatar(),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: const Icon(Icons.play_arrow),
          onPressed: () {
            audioServices.playsound(audiopath);
          },
        ),
      ),
    );
  }
}
