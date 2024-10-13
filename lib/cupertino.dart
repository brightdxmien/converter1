/*import "package:flutter/cupertino.dart";

class CurrencyCupertino extends StatefulWidget {
  const CurrencyCupertino({super.key});

  @override
  State<CurrencyCupertino> createState() => _CurrencyCupertinoState();
}

class _CurrencyCupertinoState extends State<CurrencyCupertino> {
  double result = 0; 
  final TextEditingController textEditingController = TextEditingController();
  @override
   Widget build(BuildContext context) {
    final border = CupertinoTextField.borderless;
     /* bor: const BorderSide(
          color: Colors.blue, width: 1.7, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(50),
    );*/
    return CupertinoPageScaffold (
        backgroundColor: (CupertinoColors.activeBlue),
      navigationBar: const CupertinoNavigationBar(
        middle: const Text("Currency Converter",
        ),
      
        backgroundColor: (CupertinoColors.activeBlue),
        
      
      ),
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                  placeholder: "Please Enter the Text in USD",
                  placeholderStyle: const TextStyle(
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
    ]
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
xt) {
    return const Placeholder();
  }*/

//from gemini
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCupertino extends StatefulWidget {
  const CurrencyCupertino({super.key});

  @override
  State<CurrencyCupertino> createState() => _CurrencyCupertinoState();
}

class _CurrencyCupertinoState extends State<CurrencyCupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 231, 230, 219),
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Currency Converter"),
        backgroundColor: Color.fromARGB(255, 231, 230, 219),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NGN ${result.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(196, 20, 20, 20),
              ),
            ),
            const SizedBox(height: 10.0), // Space before the text field
            SizedBox(
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CupertinoTextField(
                  textAlign: TextAlign.center,
                  controller: textEditingController,
                  placeholder: "Please Enter the Text in USD",
                  prefix: const Padding(
                    padding: EdgeInsets.only(
                      right: 1.0,
                      left: 10,
                    ), // Padding for the icon
                    child: Icon(
                      CupertinoIcons.money_dollar,
                      color: Color.fromARGB(255, 138, 136, 136),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(255, 225, 218, 218),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14.0), // Space between text field and button
            CupertinoButton(
              onPressed: () {
                if (textEditingController.text.isNotEmpty) {
                  result = double.parse(textEditingController.text) * 1621;
                  setState(() {});
                }
              },
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(10.0),
              child: const Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
