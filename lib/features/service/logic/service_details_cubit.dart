import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trade_craft/core/helpers/constant.dart';
import 'package:trade_craft/features/service/data/models/service_detail_model.dart';

import 'service_details_state.dart';

class ServiceDetailsCubit extends Cubit<ServiceDetailsState> {
  ServiceDetailsCubit() : super(const ServiceDetailsState.initial());

  List<ServiceDetailModel> ?serviceDetails;
  fetchAllServiceDetail() {
    var serviceDetailBox = Hive.box<ServiceDetailModel>(kServiceDetailsBox);
    serviceDetails = serviceDetailBox.values.toList();
    emit(const ServiceDetailsState.success());
  }
}
