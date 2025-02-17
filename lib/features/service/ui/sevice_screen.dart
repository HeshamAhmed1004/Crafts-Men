import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trade_craft/core/routing/routes.dart';
import 'package:trade_craft/core/widgets/custom_button.dart';
import 'widgets/multi_image_piker.dart';
import 'widgets/problem_description_text_filed.dart';

class ServiceScreen extends StatelessWidget {
  ServiceScreen({super.key});
  final TextEditingController timeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'ar';
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
                  const ProblemDescriptionTextField(
                    maxLines: 5,
                    hint: 'تفاصيل المشكلة',
                    suffix: Icon(Icons.wrap_text_outlined),
                    suffixcolor: Colors.red,

                  ),
                  const SizedBox(height: 15.0),
                  ProblemDescriptionTextField(
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
                        dateController.text = DateFormat('yyyy-MM-dd',).format(value!).toString();
                      });
                    },
                    suffix: const Icon(Icons.date_range_outlined),
                    suffixcolor: Colors.red,
                  ),
                  const SizedBox(height: 15.0),
                  ProblemDescriptionTextField(
                    hint: 'وقت حدوث المشكله',
                    controller: timeController,
                    ontap: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      ).then((value) {
                        timeController.text = value!.format(context).toString();
                      });
                    },
                    suffix: const Icon(Icons.watch_later_outlined),
                    suffixcolor: Colors.red,
                  ),
                  const SizedBox(height: 15.0),
                  const ProblemDescriptionTextField(
                    hint: 'العنوان الى حدث فيه المشكلة',
                    suffix: Icon(Icons.maps_home_work_outlined),
                    suffixcolor: Colors.red,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  CustomButton(
                    text: "تأكيد الطلب",
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.myOrderScreen);
                    },
                  ),
                ],
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
