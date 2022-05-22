// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.serverFailure() = ServerFailure;
  const factory Failure.offlineFailure() = OfflineFailure;
  const factory Failure.emptyCachFailure() = EmptyCachFailure;
  const factory Failure.formatFailure() = FormatFailure;
}












// import 'package:equatable/equatable.dart';

// abstract class Failure extends Equatable{}

// class ServerFailure extends Failure{
//   @override
//   List<Object?> get props => [];
// }

// class OfflineFailure extends Failure{
//   @override
//   List<Object?> get props => [];
// }

// class EmptyCachFailure extends Failure{
//   @override
//   List<Object?> get props => [];
// }import 'package:freezed_annotation/freezed_annotation.dart';
