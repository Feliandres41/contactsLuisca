import 'package:flutter/material.dart';
import 'package:untitled/themes/theme_apk.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /*Formulario*/
  final _user = TextEditingController();
  final _password = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  /*ocultar la contraseña*/
  bool ocultPassword = true;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ancho = size.width > size.height ? size.height : size.width;
    final alto = size.height > size.width ? size.width : size.height;
    return Scaffold(
      backgroundColor: Color(0xffF8F5FF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: ThemeApk.temaMorado,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Icon(Icons.contacts, color: Colors.white, size: 40),
                  ),
                ),
                Text(
                  "Contactos ADSO",
                  style: TextStyle(
                    fontSize: ancho * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: ancho * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    // spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: ancho * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "correo electronico",
                                  style: TextStyle(
                                    color: Color(0xffa757575),
                                    fontSize: ancho * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextFormField(
                                onTapOutside: (event) {
                                  FocusScope.of(context).unfocus();
                                },
                                controller: _user,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffF8F5FF),
                                  hintText: "correo@example.com",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  prefixIcon: Icon(Icons.alternate_email),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //contraseña
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: ancho * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "contraseña",
                                  style: TextStyle(
                                    color: Color(0xffa757575),
                                    fontSize: ancho * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextFormField(
                                onTapOutside: (event) {
                                  FocusScope.of(context).unfocus();
                                },
                                controller: _password,
                                obscureText: ocultPassword,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffF8F5FF),
                                  hintText: "********",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      ocultPassword = !ocultPassword;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      ocultPassword
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      color: ocultPassword
                                          ? Colors.grey
                                          : Colors.black,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 8,
                          right: 8,
                          bottom: 16,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4338CA),
                            minimumSize: Size(ancho * 0.8, 50),
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(15),
                            ),
                          ),
                          child: Text(
                            "Iniciar Sesión",
                            style: TextStyle(
                              fontSize: ancho * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    "Cifrado de punto a punto y sincronización segura",
                    style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize: ancho*0.03),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
