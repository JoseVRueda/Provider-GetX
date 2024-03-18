import 'package:f_getxstate_demo/ui/providers/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class W4 extends StatelessWidget {
  const W4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ElevatedButton(onPressed: () {
          Provider.of<CountProvider>(context, listen: false).decrease();
        }, child: Text('Decrease'))],
      ),
    );
  }
}
