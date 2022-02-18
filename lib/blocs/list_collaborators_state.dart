
import 'package:equatable/equatable.dart';
import 'package:matn_uzz/models/collaborators_model.dart';

abstract class ListCollaboratorsState extends Equatable{
  @override
  List<Object> get props => [];
}

class ListCollaboratorsInit extends ListCollaboratorsState{}

class ListCollaboratorsLoading extends ListCollaboratorsState{}

class ListCollaboratorsLoaded extends ListCollaboratorsState{
  late final bool isLoaded;
  late List<Collaborators> collaborators = [];
  ListCollaboratorsLoaded({required this.collaborators, required this.isLoaded});
}

class ListCollaboratorsError extends ListCollaboratorsState{
  late final error;
  ListCollaboratorsError({this.error});
}