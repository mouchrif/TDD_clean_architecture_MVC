// Package imports:
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {

  @singleton
  DataConnectionChecker get connectionChecker;
 
  @lazySingleton 
  http.Client get client => http.Client(); 
}
