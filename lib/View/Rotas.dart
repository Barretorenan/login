class Rotas {
  static const String authService =
      "https://identitytoolkit.googleapis.com/v1/";

  static const urlSignUp =
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=[AIzaSyCRWQMmKPaUdch7xR8tYWQRoGL_4tyDYd0]';

  static const String apiKey = "AIzaSyCRWQMmKPaUdch7xR8tYWQRoGL_4tyDYd0";

  String signIn() {
    return authService + "accounts:signInWithPassword?key=" + apiKey;
  }

  String signUp() {
    return authService + "accounts:signUp?key=" + apiKey;
  }
}