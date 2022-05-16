class Field {
  //all units are in yards
  //TODO: make metric an option
  late List<List<int>> grid;
  late double length;
  late double width;
  late int hashMarkDistance;
  Field.givenDetails(double givenLength, double givenWidth, int stepsTo, int yardsTo,
      int givenHashMarkDistance) {
    //stepsTo and yardsTo are used to calculae possible positions
    length = givenLength;
    width = givenWidth;
    hashMarkDistance = givenHashMarkDistance;
    int possibleStepsXAxis = (givenLength / (stepsTo / yardsTo)).round();
    int possibleStepsYAxis = (givenWidth / (stepsTo / yardsTo)).round();
    //at 8 to 5, there are 160 positions on the X axis and 84 positions on the Y axis
    grid = List.filled(possibleStepsXAxis, List.filled(possibleStepsYAxis, 0));
    //grid = List.generate(rows + 1, (i) => List.filled(cols + 1,  0,growable: false), growable: false);;
  }
  //default constructor is 8 to 5 on a high school field
  Field() {
    length = 100;
    width = 53.333;
    grid = List.filled(160, List.filled(84, 0));
  }
}
