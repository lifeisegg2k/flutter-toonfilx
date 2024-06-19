import 'package:flutter/material.dart';
import 'widgets/round_button.dart';
import 'widgets/spacer_height.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SpacerHeight(heightSize: 80),
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
              const SpacerHeight(heightSize: 120),
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
              const SpacerHeight(heightSize: 30),
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
              const SpacerHeight(heightSize: 100),
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
              const SpacerHeight(heightSize: 20),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Euro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Text(
                                '6 428',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'EUR',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-5, 12),
                          child: const Icon(
                            Icons.euro_rounded,
                            color: Colors.white,
                            size: 88,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
