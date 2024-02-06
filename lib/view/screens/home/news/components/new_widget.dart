import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/model/news/new_model.dart';
import 'package:news/view/components/widgets/text_custom.dart';
import 'package:news/view_model/utils/app_colors.dart';

class NewWidget extends StatelessWidget {
  final Articles article;
  const NewWidget({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  article.urlToImage ?? '',
                  fit: BoxFit.cover,
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
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: article.title ?? '',
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    TextCustom(
                      text: article.description ?? '',
                      fontSize: 12,
                      color: AppColors.grey,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
