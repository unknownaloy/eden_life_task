import 'package:eden_life_task/common/service/ably_service.dart';
import 'package:eden_life_task/common/service/storage_service.dart';
import 'package:eden_life_task/feature/home/presentation/eden_home_screen.dart';
import 'package:eden_life_task/feature/home/presentation/order/order_view_model.dart';
import 'package:eden_life_task/feature/login/data/repository/login_repository.dart';
import 'package:eden_life_task/feature/login/presentation/login_screen.dart';
import 'package:eden_life_task/feature/login/presentation/login_view_model.dart';
import 'package:eden_life_task/firebase_options.dart';
import 'package:eden_life_task/utilities/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();

  runApp(
    ChangeNotifierProvider(
      create: (_) => LoginViewModel(
        loginRepository: locator<LoginRepository>(),
        storageService: locator<StorageService>(),
      )..getEdenUser(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OrderViewModel(),
          child: const MyApp(),
        ),
      ],
      child: Consumer<LoginViewModel>(
        builder: (_, model, __) => MaterialApp(
          title: 'Eden Life Task',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF08392c),
            ),
            useMaterial3: true,
          ),
          home: model.edenUser != null
              ? const EdenHomeScreen()
              : const LoginScreen(),
        ),
      ),
    );
  }
}
