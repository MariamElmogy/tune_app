import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../models/tune_model.dart';
import '../widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  static const double hight = 105;
  static const String id = 'tuneView';

  static List<TuneModel> model = [
    TuneModel(
        height: hight,
        sound: 'note1.wav',
        color: const Color(0xfffd403c)),
    TuneModel(
        height: hight,
        sound: 'note2.wav',
        color: const Color(0xffff972a)),
    TuneModel(
        height: hight,
        sound: 'note3.wav',
        color: const Color(0xffffe955)),
    TuneModel(
        height: hight,
        sound: 'note4.wav',
        color: const Color(0xff33af57)),
    TuneModel(
        height: hight,
        sound: 'note5.wav',
        color: const Color(0xff009788)),
    TuneModel(
        height: hight,
        sound: 'note6.wav',
        color: const Color(0xff0098ee)),
    TuneModel(
        height: hight,
        sound: 'note7.wav',
        color: const Color(0xffa328ac)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
        ),
        backgroundColor: const Color(0xff253238),
      ),
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: model.length,
        itemBuilder: (context, index) {
          return TuneItem(tuneModel: model[index]);
        },
      ),
    );
  }

  
}
