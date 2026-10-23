import '../screens/screens.dart';
class RouterApk {
  static final rutaPrincipal = "/contacts";
  static final rutasApk = {
    "/":(context)=>LoginScreen(),
    "/contacts":(context)=>HomeContactsScreen()
  };
}