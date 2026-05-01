import 'package:bloc/bloc.dart';
import 'package:muhammad_essam_portfolio/Features/Projects/Domain/UseCases/get_projects_use_case.dart';

import '../../../../../Core/use_cases/base_use_cases.dart';
import 'state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit(this._getProjectsUseCase) : super(ProjectsState());
  final GetProjectsUseCase _getProjectsUseCase;

  getProjects() async {
    emit(state.copyWith(status: ProjectsStatus.loading));
    final failureOrProjects = await _getProjectsUseCase(NoParameters());
    failureOrProjects.fold(
      (failure) => emit(
        state.copyWith(
          status: ProjectsStatus.error,
        ),
      ),
      (projects) => emit(
        state.copyWith(
          projects: projects,
          status: ProjectsStatus.loaded,
        ),
      ),
    );
  }
}
