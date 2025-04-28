import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String moviedbKey = dotenv.env['MOVIEDB_KEY']!;
}
