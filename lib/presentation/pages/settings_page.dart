import 'package:counter_exam/logic/counter_provider.dart';
import 'package:counter_exam/presentation/widgets/string_with_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  final TextEditingController _setCounterController = TextEditingController();
  final TextEditingController _setMaximumLimitController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<CounterProvider>(
            builder: (context, value, _) => Center(
                    child: Column(children: <Widget>[
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
                          onPressed: () {},
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
                    height: 50,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 50,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade800)),
                    child: Column(
                      children: <Widget>[
                        StringWithBox(
                            text: "Set count",
                            controller: _setCounterController,
                            ),
                        StringWithBox(
                            text: "Maximum",
                            controller: _setMaximumLimitController,
                            ),
                        IconButton(
                            onPressed: () {
                              context.read<CounterProvider>().setStartedCount(
                                  int.tryParse(_setCounterController.text) ??
                                      0);
                              context.read<CounterProvider>().changeLimit(
                                  int.tryParse(_setMaximumLimitController.text));
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close))
                      ],
                    ),
                  )
                ]))));
  }
}
