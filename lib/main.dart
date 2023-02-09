import 'package:flutter/material.dart';

main() => runApp(const Salman());

class Salman extends StatelessWidget {
  const Salman({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNew(),
    );
  }
}

class HomeNew extends StatefulWidget {
  const HomeNew({super.key});

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  TextEditingController _inputTextEditingController = TextEditingController();
  TextEditingController _inputTwoTextEditingController =
      TextEditingController();

  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Claculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: _inputTextEditingController,
              decoration: const InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: _inputTwoTextEditingController,
              decoration: const InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text("Result = $result"),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    final double firstValue =
                        double.tryParse(_inputTextEditingController.text) ?? 0;
                    final double secondValue =
                        double.tryParse(_inputTwoTextEditingController.text) ??
                            0;
                    result = firstValue + secondValue;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    final double firstValue =
                        double.tryParse(_inputTextEditingController.text) ?? 0;
                    final double secondValue =
                        double.tryParse(_inputTwoTextEditingController.text) ??
                            0;
                    result = firstValue - secondValue;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    final double firstValue =
                        double.tryParse(_inputTextEditingController.text) ?? 0;
                    final double secondValue =
                        double.tryParse(_inputTwoTextEditingController.text) ??
                            0;
                    result = firstValue * secondValue;
                    setState(() {});
                  },
                  icon: const Icon(Icons.star),
                ),
                IconButton(
                  onPressed: () {
                    final double firstValue =
                        double.tryParse(_inputTextEditingController.text) ?? 0;
                    final double secondValue =
                        double.tryParse(_inputTwoTextEditingController.text) ??
                            0;
                    result = firstValue / secondValue;
                    setState(() {});
                  },
                  icon: const Icon(Icons.safety_divider),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
