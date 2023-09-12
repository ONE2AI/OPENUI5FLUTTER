part of ui5_flutter;

class UI5Heading extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  UI5Heading({
    required this.text,
    this.fontSize = 24,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class UI5Text extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  UI5Text({
    required this.text,
    this.fontSize = 16,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}

// Add more custom typography styles or modify the existing ones to match your UI5 design
