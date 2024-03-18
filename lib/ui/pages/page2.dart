import 'package:f_getxstate_demo/ui/providers/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (context, value, child) {
                return Text(value.value.toString());
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<CountProvider>(context, listen: false).increment();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
