import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utilities/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final APIService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }
}