import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:statelsn/presentation/triangle_area/provider/triangle_provider.dart';

class TriangleAreaScreen extends StatefulWidget {
  const TriangleAreaScreen({super.key});

  @override
  State<TriangleAreaScreen> createState() => _TriangleAreaScreenState();
}

class _TriangleAreaScreenState extends State<TriangleAreaScreen> {
  final alasController = TextEditingController();
  final tinggiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Luas Segitiga"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Kembali"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: alasController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                labelText: 'Alas',
                hintText: 'Input Alas',
              ),
            ),
            TextField(
              controller: tinggiController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                labelText: 'Tinggi',
                hintText: 'Input Tinggi',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<TriangleProvider>(context, listen: false).calculate(
                    double.parse(alasController.text),
                    double.parse(tinggiController.text));
              },
              child: Text("Hitung"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Consumer<TriangleProvider>(
              builder: (context, state, child) {
                return Text('Hasilnya adalah ${state.result}');
              },
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
