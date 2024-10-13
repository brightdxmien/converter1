import 'package:flutter/material.dart';

class CurrencyConvert extends StatefulWidget {
  const CurrencyConvert({super.key});

  @override
  State createState() => _CurrencyConvert();
}

class _CurrencyConvert extends State {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.blue, width: 1.7, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(50),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 235, 161, 41),
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(109, 128, 180, 0.796),
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(109, 128, 180, 0.796),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NGN ${result.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                  196,
                  247,
                  245,
                  247,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              margin: const EdgeInsets.only(
                bottom: 1,
              ),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Please Enter the Text in USD",
                  hintStyle: const TextStyle(
                    color: Colors.amber,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(255, 210, 171, 16),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 2,
              ),
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 15,
                left: 15,
                right: 15,
              ),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 1621;
                  setState(() {});
                },
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                    elevation: const WidgetStatePropertyAll(6),
                    backgroundColor: const WidgetStatePropertyAll(Colors.amber),
                    foregroundColor: const WidgetStatePropertyAll(
                      Color.fromARGB(66, 255, 8, 8),
                    ),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(double.infinity, 50),
                    )),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );

    // TODO: implement build
  }
}
