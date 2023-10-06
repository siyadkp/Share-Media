import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';
import 'package:share_meadia/res/colors/colors.dart';
import 'controller/home_provider/home_provider.dart';
import 'routes/route_generator.dart';

void main() {
  runApp(const MyApp());

  //This disable lanscap mode.
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

// This widget is the root of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => HomeNotifier()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Share Media',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: KColors.blueGrey),
              useMaterial3: true,
            ),
            initialRoute: RouteGenarator.login,
            onGenerateRoute: RouteGenarator.generateRoute,
          ),
        );
      },
    );
  }
}
