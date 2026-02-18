// ...existing code...
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/screens/smart_closet/add_wardrobe_item_screen.dart';
import 'package:my_flutter_app/widgets/fyt_button.dart';

void main() {
  testWidgets('renders fields and save button', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddWardrobeItemScreen(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Add Item'), findsOneWidget); // AppBar title
    expect(find.text('Tap to upload'), findsOneWidget); // upload area hint
    expect(find.text('Category'), findsOneWidget);
    expect(find.text('Color'), findsOneWidget);
    expect(find.text('Fabric'), findsOneWidget);
    expect(find.text('Formality'), findsOneWidget);
    // Check FytButton is present (stable across implementations)
    expect(find.byType(FytButton), findsOneWidget);
  });

  testWidgets('Save button pops the route', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AddWardrobeItemScreen()),
              ),
              child: const Text('Open'),
            ),
          ),
        ),
      ),
    );

    // Open the AddWardrobeItemScreen
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    expect(find.text('Add Item'), findsOneWidget);

    // Tap the FytButton to trigger save/pop
    await tester.tap(find.byType(FytButton));
    await tester.pumpAndSettle();

    expect(find.text('Add Item'), findsNothing);
  });
}