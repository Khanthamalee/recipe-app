class AppImages {
  static final mainpath = 'assets/';
  static final splash = 'bg/splash.png';
  static final logo = 'bg/logo.png';
  static final bg = 'bg/bg.png';
}

String imagepath(String image) {
  String imagereturned = 'assets/$image';
  return imagereturned;
}
