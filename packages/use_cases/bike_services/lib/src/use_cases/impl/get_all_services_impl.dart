import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../../models/service.dart';
import '../../repositories/service_repository.dart';
import '../get_all_services.dart';

class GetAllServicesImpl implements GetAllServices {
  final ServiceRepository _serviceRepository;

  GetAllServicesImpl(this._serviceRepository);

  @override
  Future<Either<NetworkFailure, List<Service>>> call() {
    return _serviceRepository.getAllServices();
  }
}
