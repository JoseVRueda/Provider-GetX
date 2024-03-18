import 'package:f_getxstate_demo/ui/providers/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class W3 extends StatelessWidget {
  const W3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CountProvider>(
            builder: (context, value, child) {
              return Text(value.value.toString());
            },
          ),
        ],
      ),
    );
  }
}
