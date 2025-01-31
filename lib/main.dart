import 'package:flutter/material.dart';
import 'package:ttl/ui/screen01_login.dart';
import 'package:ttl/ui/screen02_dashboard.dart';
import 'package:ttl/ui/screen03_pending_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales & Rental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            primary: const Color(0xFF01264A),
            secondary: const Color(0xFF0031A5),
            tertiary: const Color(0xFFE2F1FF),
            outline: Colors.grey.shade400
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
    //return DashboardScreen();
    //return PendingTaskScreen();

  }
}
