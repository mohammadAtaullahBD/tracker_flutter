
import 'package:treacker/utilities/user.dart';

class Manager extends User {
  final String id;

  Manager({
    required super.firstName,
    required super.lastName,
    required super.email,
    required this.id,
  });
}
