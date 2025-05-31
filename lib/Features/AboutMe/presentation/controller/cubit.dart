import 'package:bloc/bloc.dart';
import 'package:muhammad_essam_portfolio/Features/AboutMe/Domain/UseCases/get_fun_facts_use_case.dart';

import '../../../../Core/use_cases/base_use_cases.dart';
import 'state.dart';

class AboutMeCubit extends Cubit<AboutMeState> {
  AboutMeCubit(this._getFunFactsUseCase) : super(AboutMeState());
  final GetFunFactsUseCase _getFunFactsUseCase;

  Future<void> getFunFacts() async {
    emit(state.copyWith(status: AboutMeStatus.loading));
    final result = await _getFunFactsUseCase(NoParameters());
    result.fold((failure) {
      emit(state.copyWith(status: AboutMeStatus.error));
    }, (funFacts) {
      print(funFacts);
      emit(
        state.copyWith(
          status: AboutMeStatus.loaded,
          funFacts: funFacts,
        ),
      );
    });
  }
}
