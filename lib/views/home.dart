import 'package:flutter/material.dart';
import 'package:leehs_brandi/globals.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이현식 DEMO')),
      body: SafeArea(
        child: StreamBuilder(
          builder: (context, snapshot) {
            return Container(
              child: TextButton(
                onPressed: () {
                  repo.getImages(query: '설현').then((value) {
                    print('object');
                  });
                },
                child: Text('test'),
              ),
            );
          },
        ),
      ),
    );
  }
}
