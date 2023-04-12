// ignore_for_file: use_build_context_synchronously

import 'package:admin_movie/domain/model/movies_response.dart';
import 'package:admin_movie/presentation/screens/create_post/bloc/add_update_bloc.dart';
import 'package:admin_movie/presentation/screens/create_post/ticket/ticket_bloc.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../common/strings.dart';
import '../../../theme/colors.dart';
import '../../../theme/typography.dart';
import '../../../widget/horizontal_space.dart';
import '../../../widget/primary_button.dart';
import '../../../widget/text_field.dart';
import '../../../widget/vertical_space.dart';
import '../widget/text_form.dart';

class TicketWidget extends StatefulWidget {
  const TicketWidget({Key? key, this.tickets= const<Watchlist>[]}) : super(key: key);
  final List<Watchlist> tickets;

  @override
  State<TicketWidget> createState() => _TicketWidgetState();
}

class _TicketWidgetState extends State<TicketWidget> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController dateTicketController = TextEditingController();
    final TextEditingController timeTicketController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController linkController = TextEditingController();
    return Column(
      children: [
        VerticalSpace(20.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          width: 600.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.tickerInformation, style: AppTypography.title),
              Row(
                children: [
                  PrimaryButton(
                    height: 30.h,
                    width: 80.w,
                    backgroundColor: AppColors.backgroundLogin,
                    text: AppStrings.save,
                  ),
                  HorizontalSpace(10.w),
                  PrimaryButton(
                    height: 30.h,
                    width: 80.w,
                    backgroundColor: AppColors.backgroundLogin,
                    text: AppStrings.clear,
                  )
                ],
              )
            ],
          ),
        ),
        VerticalSpace(20.h),
        ticketFormTime(AppStrings.date,
            placeholder: AppStrings.showDatePlaceholder, onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context, //context of current state
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101));
          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            context
                .read<TicketBloc>()
                .add(TicketEvent.changeDate(formattedDate));
            setState(() {
              dateTicketController.text = formattedDate;
            });
          } else {
            print("Date is not selected");
          }
        }, controller: dateTicketController),
        VerticalSpace(10.h),
        ticketFormTime(AppStrings.time,
            placeholder: AppStrings.showTimePlaceholder, onTap: () async {
          TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
              builder: (BuildContext context, Widget? child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(alwaysUse24HourFormat: true),
                  child: child!,
                );
              });
          if (pickedTime != null) {
            DateTime parsedTime =
                DateFormat.jm().parse(pickedTime.format(context).toString());
            String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
            context
                .read<TicketBloc>()
                .add(TicketEvent.changeDate(formattedTime));
            setState(() {
              timeTicketController.text = formattedTime;
            });
          } else {
            print("Time is not selected");
          }
        }, controller: timeTicketController),
        VerticalSpace(10.h),
        ticketForm(
            name: AppStrings.price,
            placeholder: AppStrings.pricePlaceholder,
            controller: priceController,
            onChanged: (value) =>
                context.read<TicketBloc>().add(TicketEvent.changePrice(value))),
        VerticalSpace(10.h),
        ticketForm(
            name: AppStrings.linkToTicket,
            placeholder: AppStrings.linkToTicketPlaceholder,
            controller: linkController,
            onChanged: (value) =>
                context.read<TicketBloc>().add(TicketEvent.changeLink(value))),
        VerticalSpace(25.h),
        dataTableTicket(widget.tickets)
      ],
    );
  }

  Widget ticketFormTime(String name,
      {String? placeholder,
      Function()? onTap,
      required TextEditingController controller}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      width: 400.w,
      child: Row(children: [
        Text(name, style: AppTypography.title),
        HorizontalSpace(10.w),
        Expanded(
            child: BuildShowDateTimeField(
                showDateController: controller,
                onTap: onTap?.call(),
                placeholder: placeholder!))
      ]),
    );
  }

  Widget ticketForm(
      {required String name,
      required String placeholder,
      required Function(String) onChanged,
      required TextEditingController controller}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      width: 400.w,
      child: Row(children: [
        Text(name, style: AppTypography.title),
        HorizontalSpace(10.w),
        Expanded(
          child: FormTextField(
            controller: controller,
            placeholder: placeholder,
            colorBorderSide: AppColors.backgroundLogin,
            onChanged: (value) => onChanged.call(value),
          ),
        )
      ]),
    );
  }

  Widget dataTableTicket(List<Watchlist> tickets) {
    return tickets.isNotEmpty
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            decoration: BoxDecoration(
              color: AppColors.warning,
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 300.h,
                  child: DataTable2(
                      columnSpacing: 16,
                      minWidth: 600.w,
                      columns: const [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Date')),
                        DataColumn(label: Text('Time')),
                        DataColumn(label: Text('Price')),
                        DataColumn(label: Text('')),
                      ],
                      rows: List.generate(tickets.length, (index) => ticketDataRow(tickets[index],index))),
                ),
              ],
            ))
        : const SizedBox();
  }

  DataRow ticketDataRow(Watchlist ticket, int index) {
    final name = 'Ticket ${index + 1}';
    return DataRow(cells: [
      DataCell(Text(name)),
      DataCell(Text(ticket.datePicker ?? '')),
      DataCell(Text(ticket.timeShowDate ?? '')),
       DataCell(Text("\$${ticket.price}")),
      DataCell(Row(
        children: [
          PrimaryButton(
            height: 30.h,
            width: 80.w,
            backgroundColor: AppColors.error,
            text: AppStrings.edit,
            textStyle:
                AppTypography.description.copyWith(color: AppColors.white),
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
}
