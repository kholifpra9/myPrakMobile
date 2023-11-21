class BaseURL {
  static String domain = 'http://172.168.100.251:3000/';
  static String baseURL = "${domain}api/";

  //Auth
  static String urlLogin = "${baseURL}auth/login";
  static String urlRegister = "${baseURL}auth/register";
  static String urlLogout = "${baseURL}auth/logout";
  static String urlRefreshToken = "${baseURL}auth/refresh-token";

  //Toruism Place
  static String urlTourismPlace = "${baseURL}tourism-place";
}
