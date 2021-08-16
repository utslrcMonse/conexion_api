import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conexion_api/src/screens/login_screen.dart';
import 'package:conexion_api/src/screens/paginas_AyN.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>PageController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Productos App',
       
       initialRoute: 'login',
        routes: {
          'login': ( _ ) => LoginScreen(),
          'paginas': ( _ )=> PaginasAyN()
       },
      ),
    );
  }
}
