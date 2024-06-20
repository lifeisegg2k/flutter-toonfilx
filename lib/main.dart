import 'package:flutter/material.dart';
import 'widgets/transform_card.dart';
import 'widgets/round_button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // CupertinoApp() iOS風
    // MaterialApp()  Android風
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      btnText: 'Transfer',
                      btnBgColor: Color(0xFFF1B33B),
                      btnTextColor: Colors.black,
                    ),
                    Button(
                      btnText: 'Request',
                      btnBgColor: Color(0xFF1F2123),
                      btnTextColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Wallets',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                    Text('View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.8),
                        )),
                  ],
                ),
                const SizedBox(height: 20),
                const TransformCard(
                  currencyName: "Euro",
                  currencyAmount: "6 428",
                  currencyUnit: "EUR",
                  currencyIcon: Icons.euro_rounded,
                  order: 0,
                ),
                const TransformCard(
                  currencyName: "Bitcoin",
                  currencyAmount: "9 785",
                  currencyUnit: "BTC",
                  currencyIcon: Icons.currency_bitcoin_rounded,
                  order: 1,
                ),
                const TransformCard(
                  currencyName: "Dollar",
                  currencyAmount: "12 345",
                  currencyUnit: "USD",
                  currencyIcon: Icons.monetization_on_outlined,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/**
  vscode in settings.json

  "[dart]": {
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.rulers": [80],
    "editor.selectionHighlight": false,
    "editor.suggest.snippetsPreventQuickSuggestions": false,
    "editor.suggestSelection": "first",
    "editor.tabCompletion": "onlySnippets",
    "editor.wordBasedSuggestions": "off",
    "editor.tabSize": 2,
    "editor.insertSpaces": true,
    "editor.codeActionsOnSave": {
      "source.fixAll": "always"
    },
  },
  "dart.previewFlutterUiGuides": true,
  "dart.openDevTools": "flutter",
  "dart.debugExternalPackageLibraries": true,
  "dart.debugSdkLibraries": false
*/
