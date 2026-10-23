import 'package:untitled/themes/theme_apk.dart';

import './routers/router_apk.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouterApk.rutaPrincipal,
      routes: RouterApk.rutasApk,
      theme: ThemeApk.temaApk,
    );
  }
}