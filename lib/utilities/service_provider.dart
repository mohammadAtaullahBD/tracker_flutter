
import 'package:treacker/utilities/user.dart';

class ServiceProvider extends User {
  final String id;

  ServiceProvider({
    required super.firstName,
    required super.lastName,
    required super.email,
    required this.id,
  });
}
