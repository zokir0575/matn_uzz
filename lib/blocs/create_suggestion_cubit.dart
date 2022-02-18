import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matn_uzz/blocs/create_suggestion_state.dart';
import 'package:matn_uzz/models/suggestions_model.dart';
import '../services/http_service.dart';

class CreateSuggestionCubit extends Cubit<CreateSuggestionState>{
  CreateSuggestionCubit() : super(CreateSuggestionInit());

  void apiCreateCorrect(Suggestions suggestions)async{
    print(suggestions.toJson());
    emit(CreateSuggestionLoading());
    final response = await Network.POST(Network.API_CREATE_CORRECT, Network.paramsCreateSuggestion(suggestions));
    print(response);
    if(response != null){
      emit(CreateSuggestionLoaded(isCreated: true));
    }else{
      emit(CreateSuggestionError(error: "Can not fetch error"));
    }
  }
}
