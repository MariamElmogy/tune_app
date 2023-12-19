import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tune_app_project/views/tune_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tune App'),
        backgroundColor: Colors.black,
        elevation: 8,
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.piano),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(24),
            backgroundColor: Colors.teal,
          ),
          label: const Text('Start', style: TextStyle(fontSize: 24,),),
          onPressed: () {
            Navigator.pushNamed(context, TuneView.id);
          },
        ),
      ),
    );
  }
}
