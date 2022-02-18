import 'package:equatable/equatable.dart';

abstract class CreateSuggestionState extends Equatable{
  List<Object> get props => [];
}

class CreateSuggestionInit extends CreateSuggestionState{}

class CreateSuggestionLoading extends CreateSuggestionState{}

class CreateSuggestionLoaded extends CreateSuggestionState{
  final bool isCreated;
  CreateSuggestionLoaded({required this.isCreated});
}

class CreateSuggestionError extends CreateSuggestionState{
  final error;
  CreateSuggestionError({this.error});
}

