class TextoService {
  String capitalize(String input) {
    if (input.isEmpty) return input;

    String string = input[0].toUpperCase();
    String remainingLetters = input.substring(1);

    return string + remainingLetters;
  }
}
