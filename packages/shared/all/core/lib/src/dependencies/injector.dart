import 'package:get_it/get_it.dart';

GetIt get _getIt => GetIt.instance;

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) {
  return _getIt.get(
    instanceName: instanceName,
    param1: param1,
    param2: param2,
  );
}
