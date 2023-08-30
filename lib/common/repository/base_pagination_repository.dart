import 'package:flutter_advanced/common/model/cursor_pagination_model.dart';
import 'package:flutter_advanced/common/model/model_with_id.dart';
import 'package:flutter_advanced/common/model/pagination_params.dart';

abstract class IBasePaginationRepository<T extends IModelWithId> {
  Future<CursorPagination<T>> paginate({
    PaginationParams? paginationParams = const PaginationParams(),
  });
}