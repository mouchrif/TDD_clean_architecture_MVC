// Package imports:
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:clean_architecture_example/core/errors/failures.dart';

@injectable
class ErrorEntity extends Equatable {
  final String title;
  final String message;

  const ErrorEntity({@factoryParam required this.title, @factoryParam required this.message});
  @override
  List<Object?> get props => [title, message];

  ErrorEntity mapFailureToErrorEntity(Failure failure){
      return failure.when(
        serverFailure: () => const ErrorEntity(
          title: "Error Code: INTERNAL_SERVER_FAILURE", 
          message: "It seems that the server is not reachable at the moment, try again later",
        ),
        offlineFailure: () => const ErrorEntity(
          title: "Error Code: NO_INTERNET_CONNECTION", 
          message: "It seems that you are not connected to internet, please check your internet connection",
        ),
        emptyCachFailure: () => const ErrorEntity(
          title: "Error Code: NO_CACH_DATA", 
          message: "It seems there is no data in your cach",
        ),
        formatFailure: () => const ErrorEntity(
          title: "Error Code: ERROR_FORMAT_DATA", 
          message: "It seems there is issues in the data format, try again",
        ),
      );
  }
}
