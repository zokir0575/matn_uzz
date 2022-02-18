
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matn_uzz/blocs/list_collaborators_state.dart';
import 'package:matn_uzz/services/http_service.dart';

class ListCollaboratorsCubit extends Cubit<ListCollaboratorsState>{
  ListCollaboratorsCubit() : super(ListCollaboratorsInit());

  void apiCollaboratorsList()async{
    emit(ListCollaboratorsLoading());
    final response = await Network.GET(Network.API_COLLABORATORS, Network.paramsEmpty());
    print(response);
    if(response != null){
      emit(ListCollaboratorsLoaded(collaborators: Network.parsePostCollaborators(response), isLoaded: false));
    } else{
      emit(ListCollaboratorsError(error: "Can not fetch collaborators"));
    }
  }
}