import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/view/components/widgets/text_custom.dart';
import 'package:news/view_model/utils/app_colors.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.network(
                'https://via.placeholder.com/150',
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCustom(
                    text: 'Author Name',
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  TextCustom(
                    text: 'Description of the news',
                    fontSize: 12,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
