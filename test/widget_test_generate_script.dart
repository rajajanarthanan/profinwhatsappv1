import 'dart:io';

import 'widget_test_template.dart';

void main() {
  List<String> views = ['HomeView', 'DetailView', 'SettingsView'];

  for (String view in views) {
    String content = generateTestTemplate(view);
    File('test/${view.toLowerCase()}_test.dart').writeAsStringSync(content);
    print('Generated test for $view');
  }
}


//RUN to generate test files
// dart generate_tests.dart

