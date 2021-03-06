// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "B01onBoarding": {
    "skip": "Skip",
    "done": "Done",
    "next": "Next",
    "messages": "Media messages",
    "send": "Send and receiver photos and Videos with\nsame quality",
    "explore": "Explore Places",
    "discover": "Discover & Select amazing places and arrive\nsafely to your destination is our first priority",
    "privacy": "Privacy Protection",
    "data": "All your data and messages are encrypted\nand safe"
  },
  "B02welcomeScreen": {
    "welcome": "Welcome to",
    "fast": "Fast , Safe and fun moment sharing",
    "login": "Login",
    "create": "Create account",
    "language": "Languages"
  },
  "B03signUpScreen": {
    "signup": "Sign Up",
    "name": "Name",
    "username": "Username",
    "code": "Pass code (6-digits)",
    "number": "Phone number",
    "noaccount": "Don't have an account ?",
    "create": "Create new account",
    "yesaccount": "Have an account ?"
  },
  "B04loginScreen": {
    "login": "Log In",
    "Logintocontinue": "Login to continue",
    "noaccount": "Don't have an account ?"
  },
  "B05verifyCodeScreen": {
    "verify": "Verify code",
    "enter": "Enter 6 - digits that we sent to",
    "notReceive": "Don't receive code ?",
    "resend": "RESEND AGAIN"
  },
  "B06permissionsScreen": {
    "permissions": "Permissions",
    "allow": "Please allow us to access\nthese services for Bundle use"
  }
};
static const Map<String,dynamic> es = {
  "B01onBoarding": {
    "skip": "Saltar",
    "done": "Hecho",
    "next": "Siguiente",
    "messages": "Mensajes de medios",
    "send": "Env??e y reciba fotos y videos con\nla misma calidad",
    "explore": "Explorar lugares",
    "discover": "Descubre y selecciona lugares incre??bles y llega\nde forma segura a su destino es nuestra primera prioridad",
    "privacy": "Protecci??n de privacidad",
    "data": "Todos sus datos y mensajes est??n encriptados\ny seguro"
  },
  "B02welcomeScreen": {
    "welcome": "Bienvenido a",
    "fast": "Compartir momentos de forma r??pida, segura y divertida",
    "login": "Acceso",
    "create": "Crear una cuenta",
    "language": "Idioma"
  },
  "B03signUpScreen": {
    "signup": "Inscribirse",
    "name": "Nombre",
    "username": "Nombre de usuario",
    "code": "C??digo de acceso (6-d??gitos)",
    "number": "N??mero de tel??fono",
    "noaccount": "No tienes una cuenta?",
    "create": "Crear una nueva cuenta",
    "yesaccount": "Tener una cuenta ?"
  },
  "B04loginScreen": {
    "login": "Iniciar sesi??n",
    "Logintocontinue": "Iniciar sesi??n para continuar",
    "noaccount": "No tienes una cuenta?"
  },
  "B05verifyCodeScreen": {
    "verify": "C??digo de verificaci??n",
    "enter": "Ingrese 6 - d??gitos a los que enviamos",
    "notReceive": "No recibes el c??digo?",
    "resend": "VOLVER A ENVIAR"
  },
  "B06permissionsScreen": {
    "permissions": "Permisos",
    "allow": "Perm??tanos acceder\nestos servicios para uso del paquete"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "es": es};
}
