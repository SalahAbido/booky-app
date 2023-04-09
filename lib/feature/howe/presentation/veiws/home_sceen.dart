import 'dart:ui';

import 'package:booky_app/feature/howe/presentation/veiws/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(8),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white.withOpacity(0.3).withBlue(50)
        ),
        width: 200.0,
        child: Text('data'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
