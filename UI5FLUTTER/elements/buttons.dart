part of ui5_flutter;

class UI5Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  UI5Button({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class UI5OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  UI5OutlineButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class UI5TextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  UI5TextButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

// Add more custom button styles if needed
