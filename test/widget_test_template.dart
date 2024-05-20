String generateTestTemplate(String viewName) {
  return '''
import 'package:flutter_test/flutter_test.dart';
import 'package:your_project/views/$viewName.dart';

void main() {
  group('$viewName Widget Tests', () {
    testWidgets('renders $viewName correctly', (WidgetTester tester) async {
      await tester.pumpWidget($viewName());

      // Add your specific widget tests here

      expect(find.byType($viewName), findsOneWidget);
    });

    // Add more tests as needed
  });
}
''';
}
