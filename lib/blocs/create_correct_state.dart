import 'package:equatable/equatable.dart';
abstract class CreateCorrectState extends Equatable{
  List<Object> get props => [];
}

class CreateCorrectInit extends CreateCorrectState{}

class CreateCorrectLoading extends CreateCorrectState{}

class CreateCorrectLoaded extends CreateCorrectState{
  final bool isCreated;
  CreateCorrectLoaded({required this.isCreated});
}

class CreateCorrectError extends CreateCorrectState{
  final error;
  CreateCorrectError({this.error});
}