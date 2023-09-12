/// the entry point file for your Flutter package. This file should export all the public elements and functionalities of the package, making them accessible to other projects that use your package

library ui5_flutter;

// Import all the individual element files
export 'elements/buttons.dart';
export 'elements/cards.dart';
export 'elements/typography.dart';
export 'elements/dialogs.dart';
export 'elements/bottom_sheets.dart';

// If you have any utilities or helper classes, export them here as well
export 'utils/ui5_colors.dart';
export 'utils/ui5_theme.dart';

// If you have any data models, export them here as well
export 'models/ui5_data_model.dart';

// If you have any custom widgets or reusable components, export them here
export 'widgets/ui5_list_item.dart';
// Add other custom widgets or components as needed

// You can also define any constants or global variables here

// If you have any utility functions, you can export them here

// You can define more exports based on your package's content

// Leave the main function empty or remove it if not needed
void main() {}
