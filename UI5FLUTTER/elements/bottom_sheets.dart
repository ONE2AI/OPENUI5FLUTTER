part of ui5_flutter;

class UI5PersistentBottomSheet extends StatelessWidget {
  final List<Widget> children;

  UI5PersistentBottomSheet({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...children,
        ],
      ),
    );
  }
}

class UI5ModalBottomSheet extends StatelessWidget {
  final List<Widget> children;

  UI5ModalBottomSheet({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...children,
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}

// Add more custom bottom sheet styles or modify the existing ones to match your UI5 design
