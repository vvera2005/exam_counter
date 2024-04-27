import 'package:counter_exam/logic/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CounterProvider>(
        builder: (context, value, _) => Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info,
                        color: Colors.grey.shade800,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/settings");
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.grey.shade800,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.restart_alt_outlined,
                        color: Colors.grey.shade800,
                      )),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              Text(
                value.count.toString(),
                style: const TextStyle(fontSize: 200),
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                value.limitReached.toString(),
                style: TextStyle(fontSize: 30),
              ),
              const Text(
                "LIMIT REACHED",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        return context.read<CounterProvider>().increment();
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.grey.shade800,
                      )),
                  ElevatedButton(
                      onPressed: () {
                        return context.read<CounterProvider>().decrement();
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.grey.shade800,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
