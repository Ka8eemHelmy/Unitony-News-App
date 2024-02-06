import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/view/components/widgets/text_form_field_custom.dart';

import 'components/new_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.sp),
          child: Column(
            children: [
              TextFormFieldCustom(
                labelText: 'Search 1',
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormFieldCustom(
                labelText: 'Search 2',
              ),
              SizedBox(
                height: 12.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return NewWidget();
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 6.h,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 12.h,),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return NewWidget();
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 6.h,
                  ),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
