import 'package:bloc/bloc.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/Domain/UseCases/get_skills_use_case.dart';

import '../../../../../Core/use_cases/base_use_cases.dart';
import 'state.dart';

class SkillsCubit extends Cubit<SkillsState> {
  SkillsCubit(this._getSkillsUseCase) : super(SkillsState());
  final GetSkillsUseCase _getSkillsUseCase;

  getSkills() async {
    emit(state.copyWith(status: SkillsStatus.loading));
    final failureOrSkills = await _getSkillsUseCase(NoParameters());
    failureOrSkills.fold(
      (failure) => emit(
        state.copyWith(
          status: SkillsStatus.error,
        ),
      ),
      (skills) => emit(
        state.copyWith(
          skills: skills,
          status: SkillsStatus.loaded,
        ),
      ),
    );
  }
}
