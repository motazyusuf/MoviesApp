import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/services/web_services.dart';
import 'package:movies_app/home/data/data_sources/home_data_source.dart';
import 'package:movies_app/home/data/repositories_imp/home_repositories_imp.dart';
import 'package:movies_app/home/domain/entities/popular_entity.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';
import 'package:movies_app/home/domain/use_cases/popular_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  WebServices _webServices = WebServices();

  List<PopularEntity> popularMoviesList = [];
  late PopularUseCase _popularUseCase;
  late HomeRepository _homeRepo;
  late HomeDataSource _homeDataSource;

  Future<void> popularMovies() async {
    _homeDataSource = OnlineHomeDataSource(_webServices.dio);
    _homeRepo = HomeRepositoriesImp(_homeDataSource);
    _popularUseCase = PopularUseCase(_homeRepo);
  }
}
