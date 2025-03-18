import 'package:flutter_dotenv/flutter_dotenv.dart';

DotEnv dotEnv = DotEnv();

class EnvironmentConfiguration {
  static var baseUrlApi = dotEnv.env['BASE_URL_API'];
  static var deploymentMode = dotEnv.env['DEPLOYMENT_MODE'];
}
