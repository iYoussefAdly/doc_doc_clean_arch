import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure,Type>> call(Params params);
}
