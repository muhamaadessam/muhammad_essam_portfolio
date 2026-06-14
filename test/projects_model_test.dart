import 'package:flutter_test/flutter_test.dart';
import 'package:muhammad_essam_portfolio/Features/Projects/Data/Models/projects_model.dart';
import 'package:muhammad_essam_portfolio/Features/Projects/Data/Models/link_model.dart';

void main() {
  group('ProjectsModel Serialization/Deserialization Tests', () {
    test('should successfully deserialize from JSON with all fields present', () {
      final json = {
        'projectName': 'Portfolio App',
        'projectDescription': 'A modern portfolio application.',
        'projectImage': 'https://example.com/image.png',
        'projectLanguages': ['Dart', 'Flutter'],
        'links': [
          {'link': 'https://github.com', 'title': 'GitHub'},
        ],
        'category': 'Mobile',
        'status': 'Active',
        'isFeatured': true,
      };

      final model = ProjectsModel.fromJson(json);

      expect(model.projectName, 'Portfolio App');
      expect(model.projectDescription, 'A modern portfolio application.');
      expect(model.projectImage, 'https://example.com/image.png');
      expect(model.projectLanguages, ['Dart', 'Flutter']);
      expect(model.links.length, 1);
      expect(model.links.first.link, 'https://github.com');
      expect(model.links.first.title, 'GitHub');
      expect(model.category, 'Mobile');
      expect(model.status, 'Active');
      expect(model.isFeatured, true);
    });

    test('should successfully deserialize legacy JSON using defaults (backward compatibility)', () {
      final legacyJson = {
        'projectName': 'Legacy Project',
        'projectDescription': 'An older project without new metadata.',
        'projectImage': 'https://example.com/legacy.png',
        'projectLanguages': ['HTML', 'CSS'],
        'links': [
          {'link': 'https://legacy.com', 'title': 'Live Demo'},
        ],
      };

      final model = ProjectsModel.fromJson(legacyJson);

      expect(model.projectName, 'Legacy Project');
      expect(model.projectDescription, 'An older project without new metadata.');
      expect(model.projectImage, 'https://example.com/legacy.png');
      expect(model.projectLanguages, ['HTML', 'CSS']);
      expect(model.links.length, 1);
      expect(model.links.first.link, 'https://legacy.com');
      expect(model.links.first.title, 'Live Demo');
      
      // Verify backward-compatible defaults
      expect(model.category, 'Mobile');
      expect(model.status, 'Completed');
      expect(model.isFeatured, false);
    });

    test('should successfully serialize to JSON via toJson', () {
      final model = ProjectsModel(
        projectName: 'Serialized Project',
        projectDescription: 'To be serialized.',
        projectImage: 'https://example.com/test.png',
        projectLanguages: const ['Rust'],
        links: [
          LinkModel(link: 'https://example.com', title: 'Example'),
        ],
        category: 'UI/UX',
        status: 'Planned',
        isFeatured: true,
      );

      final json = model.toJson();

      expect(json['projectName'], 'Serialized Project');
      expect(json['projectDescription'], 'To be serialized.');
      expect(json['projectImage'], 'https://example.com/test.png');
      expect(json['projectLanguages'], ['Rust']);
      expect(json['links'], [
        {'link': 'https://example.com', 'title': 'Example'},
      ]);
      expect(json['category'], 'UI/UX');
      expect(json['status'], 'Planned');
      expect(json['isFeatured'], true);
    });
  });
}
