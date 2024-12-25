import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/error/viewModel/error_screen_view_model.dart';
import 'package:mvvm_project/route_generator.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Remove this line if you are not using any internal storage
  await Storage().initializedStorage();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add your global view Models here like the error screen so you can
        // call it from anywhere in the app
        Provider<ErrorScreenViewModel>(create: (_) => ErrorScreenViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
      
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}