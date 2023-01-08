import 'package:flutter/material.dart';
import 'package:graph_implementation/providers/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context,model,child) => Scaffold(
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
