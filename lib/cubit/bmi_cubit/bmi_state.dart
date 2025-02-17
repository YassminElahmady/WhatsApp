part of 'bmi_cubit.dart';

@immutable
sealed class BmiState {}

final class BmiInitial extends BmiState {}
class GenderTybe  extends BmiState {}
class HeightTybe  extends BmiState {}
class WeightTybe  extends BmiState {}
class AgeTybe  extends BmiState {}

