import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tune_app_project/views/home_view.dart';
import 'package:tune_app_project/views/tune_view.dart';
import 'package:tune_app_project/widgets/tune_item.dart';

import 'models/tune_model.dart';

void main() => runApp(const TuneApp());

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        TuneView.id: (context) => TuneView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
