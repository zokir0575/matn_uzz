import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matn_uzz/blocs/create_correct_state.dart';
import 'package:matn_uzz/models/correct_model.dart';

import '../services/http_service.dart';

class CreateCorrect extends Cubit<CreateCorrectState>{
  CreateCorrect() : super(CreateCorrectInit());

  void apiCreateCorrect(Correct correct)async{
    print(correct.toJson());
    emit(CreateCorrectLoading());
    final response = await Network.POST(Network.API_CREATE_CORRECT, Network.paramsCreate(correct));
    print(response);
    if(response != null){
      emit(CreateCorrectLoaded(isCreated: true));
    }else{
      emit(CreateCorrectError(error: "Can not fetch error"));
    }
  }
}





