import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:trade_craft/core/routing/routes.dart';
import 'package:trade_craft/core/widgets/custom_button.dart';
import 'package:trade_craft/features/service/data/models/service_detail_model.dart';
import 'package:trade_craft/features/service/logic/add_service_details_cubit.dart';
import 'widgets/multi_image_piker.dart';
import 'widgets/problem_description_text_filed.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({
    super.key,
  });

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  final TextEditingController timeController = TextEditingController();

  final TextEditingController dateController = TextEditingController();
  File? selectedImage;
  String? formDescription, address, time, date;

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'ar';
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Card(
          color: const Color(0xFF45404a),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'خدمات السباكة',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15.0),
                    const MultiImagePickerBox(),
                    const SizedBox(height: 15.0),
                    ProblemDescriptionTextField(
                      onSaved: (value) {
                        formDescription = value;
                      },
                      maxLines: 5,
                      hint: 'تفاصيل المشكلة',
                      suffix: const Icon(Icons.wrap_text_outlined),
                      suffixcolor: Colors.red,
                    ),
                    const SizedBox(height: 15.0),
                    ProblemDescriptionTextField(
                      onSaved: (value) {
                        date = value;
                      },
                      hint: 'تاريخ حدوث المشكله',
                      controller: dateController,
                      ontap: () {
                        showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                            const Duration(days: 30),
                          ),
                        ).then((value) {
                          dateController.text = DateFormat(
                            'yyyy-MM-dd',
                          ).format(value!).toString();
                        });
                      },
                      suffix: const Icon(Icons.date_range_outlined),
                      suffixcolor: Colors.red,
                    ),
                    const SizedBox(height: 15.0),
                    ProblemDescriptionTextField(
                      onSaved: (value) {
                        time = value;
                      },
                      hint: 'وقت حدوث المشكله',
                      controller: timeController,
                      ontap: () {
                        showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        ).then((value) {
                          timeController.text =
                              value!.format(context).toString();
                        });
                      },
                      suffix: const Icon(Icons.watch_later_outlined),
                      suffixcolor: Colors.red,
                    ),
                    const SizedBox(height: 15.0),
                    ProblemDescriptionTextField(
                      onSaved: (value) {
                        address = value;
                      },
                      hint: 'العنوان الى حدث فيه المشكلة',
                      suffix: const Icon(Icons.maps_home_work_outlined),
                      suffixcolor: Colors.red,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    CustomButton(
                      text: "تأكيد الطلب",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          var serviceDetailModel = ServiceDetailModel(
                              selectedImages: selectedImage!,
                              formDescription: formDescription!,
                              address: address!,
                              time: time!,
                              date: date!);
                          context
                              .read<AddServiceDetailsCubit>()
                              .addServiceDetails(serviceDetailModel);
                          Navigator.pushNamed(context, Routes.myOrderScreen);
                        } else {
                          autoValidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Navigator.push(context,
//    MaterialPageRoute(
//      builder:(context)=>
//
//      ) ,
//   ),
// )
