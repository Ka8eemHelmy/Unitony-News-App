import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/model/news/new_model.dart';
import 'package:news/view/components/widgets/text_form_field_custom.dart';
import 'package:news/view_model/cubits/news_cubit/news_cubit.dart';
import 'package:news/view_model/utils/app_colors.dart';
import '../../../components/widgets/empty_state.dart';
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
                controller: NewsCubit.get(context).firstSearchController,
                labelText: 'Search 1',
                onFieldSubmitted: (value) {
                  NewsCubit.get(context).getNews(search: value);
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormFieldCustom(
                controller: NewsCubit.get(context).secondSearchController,
                labelText: 'Search 2',
                onFieldSubmitted: (value) {
                  NewsCubit.get(context).getNews(search: value);
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              Expanded(
                child: BlocBuilder<NewsCubit, NewsState>(
                  builder: (context, state) {
                    NewsCubit cubit = NewsCubit.get(context);

                    /// make Condition when rebuild fetch News List to get search with firstSearchController [title, description, author]
                    List<Articles> articles = cubit.news.where((element) {
                      return (element.title ?? '').trim().toLowerCase().contains(
                                cubit.firstSearchController.text.trim().toLowerCase(),
                              ) ||
                          (element.description ?? '').trim().toLowerCase().contains(
                                cubit.firstSearchController.text.trim().toLowerCase(),
                              ) ||
                          (element.author ?? '').trim().toLowerCase().contains(
                                cubit.firstSearchController.text.trim().toLowerCase(),
                              );
                    }).toList();
                    return Visibility(
                      visible: articles.isNotEmpty,
                      replacement: const EmptyStateWidget(),
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return NewWidget(
                            article: articles[index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 6.h,
                        ),
                        itemCount: articles.length,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(
                color: AppColors.primaryColor,
                thickness: 2.h,
              ),
              SizedBox(
                height: 12.h,
              ),
              Expanded(
                child: BlocBuilder<NewsCubit, NewsState>(
                  builder: (context, state) {
                    NewsCubit cubit = NewsCubit.get(context);

                    /// make Condition when rebuild fetch News List to get search with secondSearchController [title, description, author]
                    List<Articles> articles = cubit.news
                        .where(
                          (element) {
                            return (element.title ?? '').trim().toLowerCase().contains(
                              cubit.secondSearchController.text.trim().toLowerCase(),
                            ) ||
                                (element.description ?? '').trim().toLowerCase().contains(
                                  cubit.secondSearchController.text.trim().toLowerCase(),
                                ) ||
                                (element.author ?? '').trim().toLowerCase().contains(
                                  cubit.secondSearchController.text.trim().toLowerCase(),
                                );
                          }
                        )
                        .toList();
                    return Visibility(
                      visible: articles.isNotEmpty,
                      replacement: const EmptyStateWidget(),
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return NewWidget(
                            article: articles[index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 6.h,
                        ),
                        itemCount: articles.length,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
