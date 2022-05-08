import 'package:amzx/providers/login.dart';
import 'package:amzx/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'configuration/locator.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => getIt<LoginProvider>(),
          ),
        ],
        builder: (context, child) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: RouteManager.splashPage,
              onGenerateRoute: RouteManager.generateRoute,
            ),
          );
        });
  }
}
