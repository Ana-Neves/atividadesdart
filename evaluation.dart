class Evaluation {
  late double firstNote;
  late double secondNote;
  late double thirdNote;

  double calculateAverage() {
    return (firstNote + secondNote + thirdNote) / 3;
  }
}