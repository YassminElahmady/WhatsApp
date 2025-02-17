import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());
  static BmiCubit get(context) => BlocProvider.of(context);
  String gender = 'male';
  double Height =150;
  double Weight = 40;
  double age =26;
void changeGender(String gender){
  this.gender = gender;
  emit(GenderTybe());

}
void changeHeight(double height){
  this.Height = height;
  emit(HeightTybe());
}
void changeWeight (double weight){
  this.Weight = weight;
  emit(WeightTybe());
  emit(WeightTybe());
}
  void changeAge (double age){
    this.age = age;
    emit(AgeTybe());
    emit(AgeTybe());
  }
}

