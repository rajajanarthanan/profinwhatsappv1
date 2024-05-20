import 'widget_test_generate_script.dart';

String generateTestTemplate(String viewName, List<String> widgetTypes) {
  StringBuffer widgetTests = StringBuffer();

  for (var widgetType in widgetTypes) {
    widgetTests.writeln('''
    testWidgets('contains $widgetType in $viewName', (WidgetTester tester) async {
      await tester.pumpWidget($viewName());

      expect(find.byType($widgetType), findsWidgets);
    });
    ''');
  }

  return '''
import 'package:flutter_test/flutter_test.dart';
import '../core/views/$viewName.dart';

void main() {
  group('$viewName Widget Tests', () {
    testWidgets('renders $viewName correctly', (WidgetTester tester) async {
      await tester.pumpWidget($viewName());

      // Verify that the $viewName widget is present in the widget tree
      expect(find.byType($viewName), findsOneWidget);
    });

    // Specific widget type tests
    ${widgetTests.toString()}
  });
}
''';
}

void main() {
  String viewName = 'TestView';
  List<String> widgetTypes = WidgetTypes.all;
  //['Text', 'Button', 'Icon'];

  String testTemplate = generateTestTemplate(viewName, widgetTypes);
  print(testTemplate);
}
