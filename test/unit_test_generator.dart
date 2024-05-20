import 'dart:io';

void main() {
  final libDir = Directory('lib');
  final testDir = Directory('test');

  if (!testDir.existsSync()) {
    testDir.createSync();
  }

  // Specify folders containing files needing test files
  final foldersToTest = [
    'base',
    'data',
    'core/dependencies',
    'utils',
    'viewmodel'
  ];

  libDir.listSync(recursive: true).forEach((entity) {
    if (entity is File && entity.path.endsWith('.dart')) {
      // Check if the file is in one of the specified folders
      final inTestFolders =
          foldersToTest.any((folder) => entity.path.contains('/$folder/'));
      if (inTestFolders) {
        final testFilePath = entity.path
            .replaceFirst('lib/', 'test/')
            .replaceFirst('.dart', '_test.dart');

        final testFile = File(testFilePath);
        if (!testFile.existsSync()) {
          testFile.createSync(recursive: true);
          testFile.writeAsStringSync(_generateTestTemplate(entity.path));
        }
      }
    }
  });
}

String _generateTestTemplate(String filePath) {
  final className = filePath.split('/').last.replaceFirst('.dart', '');
  return '''
import 'package:flutter_test/flutter_test.dart';
import '../${filePath.replaceFirst('lib/', '')}'; // Change 'your_package' to your actual package name

void main() {
  group('$className', () {
    // TODO: Add tests for $className
  });
}
''';
}


//dart unit_test_generator.dart
