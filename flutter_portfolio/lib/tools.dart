double responsiveWebHeight(double screenHeight, double num) {
  return screenHeight * (num / 1024);
}

double responsiveWebWidth(double screenWidth, double num) {
  return screenWidth * (num / 1440);
}

double responsiveMobileHeight(double screenHeight, double num) {
  return screenHeight * (num / 568);
}

double responsiveMobileWidth(double screenWidth, double num) {
  return screenWidth * (num / 320);
}