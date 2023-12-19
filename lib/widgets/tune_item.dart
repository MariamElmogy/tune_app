import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:tune_app_project/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  TuneItem({super.key, required this.tuneModel});

  final player = AudioPlayer();
  final TuneModel tuneModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          await player.play(AssetSource(tuneModel.sound));
        },
        child: Container(
          color: tuneModel.color,
          height: tuneModel.height,
          
        ));
  }
}
