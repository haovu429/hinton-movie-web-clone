import 'package:admin_movie/common/strings.dart';
import 'package:admin_movie/di/dependency_injection.dart';
import 'package:admin_movie/presentation/routes/routes.gr.dart';
import 'package:admin_movie/presentation/theme/typography.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/model/movies_response.dart';
import '../../../theme/colors.dart';
import '../../../widget/primary_button.dart';

class TablePosts extends StatefulWidget {
  const TablePosts({Key? key, this.movies}) : super(key: key);
  final List<Movie>? movies;
  @override
  State<TablePosts> createState() => _TablePostsState();
}

class _TablePostsState extends State<TablePosts> {
  List<Movie>? data;
  bool checkActive = true;
  void selectDropdown(String value) {
    setState(() {
      checkActive = value == 'Active';
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.movies != null) {
      data = widget.movies;
    }
  }

  @override
  Widget build(BuildContext context) {
    return data != null
        ? Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.warning,
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dropdownDataTable(context,
                    select: (value) => selectDropdown(value)),
                SizedBox(
                  width: 100.sw,
                  height: 400.h,
                  child: DataTable2(
                      columnSpacing: 12.w,
                      columns: const [
                        DataColumn(label: Text(AppStrings.title)),
                        DataColumn(label: Text(AppStrings.showDateTime)),
                        DataColumn(label: Text(AppStrings.endDate)),
                        DataColumn(label: Text(AppStrings.Active)),
                        DataColumn(label: Text('')),
                      ],
                      rows: List.generate(
                          data!.length, (index) => postsDataRow(data![index]))),
                )
              ],
            ))
        : const SizedBox();
  }

  DataRow postsDataRow(Movie movie) {
    return DataRow(cells: [
      DataCell(Text(movie.title ?? '')),
      DataCell(Text(movie.showDate ?? '')),
      DataCell(Text(movie.closeDate ?? '')),
      DataCell(Text(movie.active ? 'active' : 'inactive')),
      DataCell(Row(
        children: [
          PrimaryButton(
            height: 30.h,
            width: 80.w,
            backgroundColor: AppColors.error,
            text: AppStrings.edit,
            textStyle:
                AppTypography.description.copyWith(color: AppColors.white),
            onPressed: () =>
                context.router.push(HomeRoute(idScreen: 0, movie: movie)),
          ),
          PrimaryButton(
            height: 30.h,
            width: 80.w,
            backgroundColor: AppColors.error,
            text: AppStrings.delete,
            textStyle:
                AppTypography.description.copyWith(color: AppColors.white),
          )
        ],
      )),
    ]);
  }

  Widget dropdownDataTable(BuildContext context,
      {required Function(String) select}) {
    final List<String> items = ['Active', 'Inactive'];
    String? selectedValue;
    return DropdownButtonHideUnderline(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)),
        child: DropdownButton2(
          hint: Text(
            selectedValue ?? 'Active',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              select.call(value ?? 'Active');
              selectedValue = value as String;
            });
          },
          buttonStyleData: const ButtonStyleData(
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
