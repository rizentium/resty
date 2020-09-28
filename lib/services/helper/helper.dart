class HelperService {
  urlValidator(String url) {
    return RegExp(r"https://+").hasMatch(url);
  }
}
