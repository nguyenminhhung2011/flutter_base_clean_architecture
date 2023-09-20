import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class SearchTutorState {}

class FetchTopicsSuccess implements SearchTutorState {
  const FetchTopicsSuccess();
}

class FetchTopicsFailed implements SearchTutorState {
  final String? message;
  final Object? error;

  const FetchTopicsFailed({this.error, this.message});

  @override
  String toString() =>
      "[Fetch topic errors] => message ${message ?? ''}, error ${error ?? ''} ";
}

class InValidSearchTutor implements SearchTutorState {
  const InValidSearchTutor();
}

class SelectedTopicSuccess implements SearchTutorState {
  const SelectedTopicSuccess();
}
