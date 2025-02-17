import 'package:flutter/material.dart';
import 'package:trade_craft/core/helpers/spacing.dart';
import 'package:trade_craft/core/routing/routes.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF45404a),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios,
                              size: 24,),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.homeScreen);
                            },
                          ),
                          const Spacer(),
                          const Text(
                            'الطلبات',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Image.asset('assets/images/logo2.png', height: 40),
                        ],
                      ),
                    ),
                    Card(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "assets/images/palmur2.jpg",
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      ' خدمات السباكة',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'ممممةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةممممم',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    verticalSpacing(8),
                                    Row(
                                      children: [
                                        const Text(
                                          "12:00 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        horizontalSpacing(8),
                                        const Text(
                                          "2005-05-05",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'تمت بنجاح',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpacing(8),
                    Card(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "assets/images/palmur2.jpg",
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      ' خدمات السباكة',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'ممممةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةممممم',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    verticalSpacing(8),
                                    Row(
                                      children: [
                                        const Text(
                                          "12:00 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        horizontalSpacing(8),
                                        const Text(
                                          "2005-05-05",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'في حالة انتظار',
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpacing(8),
                    Card(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "assets/images/palmur2.jpg",
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      ' خدمات السباكة',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'ممممةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةممممم',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    verticalSpacing(8),
                                    Row(
                                      children: [
                                        const Text(
                                          "12:00 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        horizontalSpacing(8),
                                        const Text(
                                          "2005-05-05",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'حدثت مشكلة',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpacing(8),
                    Card(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "assets/images/palmur2.jpg",
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      ' خدمات السباكة',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'ممممةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةممممم',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    verticalSpacing(8),
                                    Row(
                                      children: [
                                        const Text(
                                          "12:00 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        horizontalSpacing(8),
                                        const Text(
                                          "2005-05-05",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'تمت بنجاح',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpacing(8),
                    Card(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "assets/images/palmur2.jpg",
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      ' خدمات السباكة',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'ممممةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةةممممم',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    verticalSpacing(8),
                                    Row(
                                      children: [
                                        const Text(
                                          "12:00 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        horizontalSpacing(8),
                                        const Text(
                                          "2005-05-05",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpacing(8),
                                    const Text(
                                      'تمت بنجاح',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
