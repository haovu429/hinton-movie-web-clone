// ignore_for_file: use_build_context_synchronously, avoid_web_libraries_in_flutter
import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:admin_movie/presentation/screens/create_post/bloc/add_update_bloc.dart';
import 'package:admin_movie/presentation/screens/create_post/bloc/create_and_edit_bloc.dart';
import 'package:admin_movie/presentation/screens/create_post/widget/text_form.dart';
import 'package:admin_movie/presentation/theme/colors.dart';
import 'package:admin_movie/presentation/theme/typography.dart';
import 'package:admin_movie/presentation/widget/horizontal_space.dart';
import 'package:admin_movie/presentation/widget/text_field.dart';
import 'package:admin_movie/presentation/widget/vertical_space.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'dart:html' as html;
import '../../../common/strings.dart';
import '../../../data/extension/bloc_uint8list.dart';
import '../../../di/dependency_injection.dart';
import '../../../domain/model/movies_response.dart';
import '../../routes/routes.dart';
import '../../widget/primary_button.dart';
import 'widget/dashed_line.dart';

class CreateAndEditPostScreen extends StatefulWidget {
  final Movie? movie;
  const CreateAndEditPostScreen({Key? key, this.movie}) : super(key: key);
  @override
  State<CreateAndEditPostScreen> createState() =>
      _CreateAndEditPostScreenState();
}

class _CreateAndEditPostScreenState extends State<CreateAndEditPostScreen> {
  late TextEditingController _showDateController;
  late TextEditingController _closeDateController;
  late TextEditingController _showTimeController;
  late TextEditingController _closeTimeController;
  late TextEditingController _titleController;
  late TextEditingController _summaryController;

  Uint8List? _bytesData;

  @override
  void initState() {
    super.initState();
    _showDateController = TextEditingController(text: widget.movie?.showDate);
    _closeDateController = TextEditingController(text: widget.movie?.closeDate);
    _showTimeController =
        TextEditingController(text: widget.movie?.timeShowDate);
    _closeTimeController =
        TextEditingController(text: widget.movie?.timeCloseDate);
    _titleController = TextEditingController(text: widget.movie?.title);
    _summaryController = TextEditingController(text: widget.movie?.description);

    context.read<CreateAndEditBloc>().add(CreateAndEditEvent.initialize(
        title: widget.movie?.title ?? '',
        summary: widget.movie?.description ?? '',
        showDate: widget.movie?.showDate ?? '',
        showTime: widget.movie?.timeShowDate ?? '',
        closeDate: widget.movie?.closeDate ?? '',
        closeTime: widget.movie?.timeCloseDate ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAndEditBloc, CreateAndEditState>(
        builder: (context, state) => Scaffold(
              backgroundColor: AppColors.white,
              body: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                _bytesData == null
                                    ? DashedLine(
                                        child: InkWell(
                                            onTap: () async {
                                              final imagePath =
                                                  await getImagePath();
                                              final imageFile = File(imagePath);
                                              context
                                                  .read<CreateAndEditBloc>()
                                                  .add(CreateAndEditEvent
                                                      .uploadImage(imageFile));
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 120.w,
                                              height: 200.h,
                                              child: Text(AppStrings.upload,
                                                  style:
                                                      AppTypography.headline6),
                                            )),
                                      )
                                    : ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image.memory(
                                          _bytesData!,
                                          width: 120.w,
                                          height: 200.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                _bytesData != null
                                    ? Positioned(
                                        right: 0,
                                        top: 0,
                                        child: IconButton(
                                          icon: Image.asset(
                                              'assets/icon/minus.png'),
                                          onPressed: () {
                                            setState(() {
                                              _bytesData = null;
                                            });
                                          },
                                        ))
                                    : const SizedBox()
                              ],
                            ),
                            Row(
                              children: [
                                PrimaryButton(
                                  onPressed: () =>
                                      _createOrUpdate(context, state),
                                  height: 40.h,
                                  width: 100.w,
                                  backgroundColor: AppColors.description,
                                  text: AppStrings.save,
                                ),
                                HorizontalSpace(10.w),
                                PrimaryButton(
                                  onPressed: () => getIt<AppRouter>()
                                      .push(HomeRoute(idScreen: 1)),
                                  height: 40.h,
                                  width: 100.w,
                                  backgroundColor: AppColors.description,
                                  text: AppStrings.clear,
                                )
                              ],
                            )
                          ]),
                    ),
                    VerticalSpace(20.h),
                    showDate(context,
                        name: AppStrings.showDate,
                        controller: _showDateController,
                        timeController: _showTimeController,
                        onConfirm: (value) => context
                            .read<CreateAndEditBloc>()
                            .add(CreateAndEditEvent.changeShowDate(value)),
                        onConfirmTime: (value) => context
                            .read<CreateAndEditBloc>()
                            .add(CreateAndEditEvent.changeShowTime(value))),
                    VerticalSpace(20.h),
                    showDate(context,
                        name: AppStrings.closeDate,
                        controller: _closeDateController,
                        timeController: _closeTimeController,
                        onConfirm: (value) => context
                            .read<CreateAndEditBloc>()
                            .add(CreateAndEditEvent.changeCloseDate(value)),
                        onConfirmTime: (value) => context
                            .read<CreateAndEditBloc>()
                            .add(CreateAndEditEvent.changeCloseTime(value))),
                    VerticalSpace(20.h),
                    showForm(context,
                        titleController: _titleController,
                        summaryController: _summaryController),
                    // widget.movie != null
                    //     ? TicketWidget(tickets: widget.movie!.watchlist)
                    //     : const SizedBox(),
                    VerticalSpace(20.h),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        width: 600.w,
                        child: Column(children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(AppStrings.notification,
                                  style: AppTypography.title)
                            ],
                          ),
                          TextFormField(
                            minLines: 5,
                            maxLines: 6,
                            onChanged: (value) => context
                                .read<CreateAndEditBloc>()
                                .add(CreateAndEditEvent.changeNotification(
                                    value)),
                            decoration: InputDecoration(
                              hintText: AppStrings.enterSummary,
                              filled: true,
                              fillColor: AppColors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1,
                                      color: AppColors.backgroundLogin),
                                  borderRadius: BorderRadius.circular(10.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1,
                                      color: AppColors.backgroundLogin),
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                          )
                        ]))
                  ],
                ),
              )),
            ));
  }

  Widget showDate(BuildContext context,
      {required String name,
      required TextEditingController controller,
      required TextEditingController timeController,
      Function(String)? onConfirm,
      Function(String)? onConfirmTime}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        width: 500.w,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            name,
            style: AppTypography.title,
          ),
          VerticalSpace(10.h),
          Row(children: [
            SizedBox(
              width: 200.w,
              child: BuildShowDateTimeField(
                placeholder: AppStrings.showDatePlaceholder,
                showDateController: controller,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, //context of current state
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));
                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    onConfirm?.call(formattedDate);
                    setState(() {
                      controller.text = formattedDate;
                    });
                  } else {
                    print("Date is not selected");
                  }
                },
              ),
            ),
            HorizontalSpace(10.h),
            SizedBox(
                width: 150.w,
                child: BuildShowDateTimeField(
                  placeholder: AppStrings.showTimePlaceholder,
                  showDateController: timeController,
                  onTap: () async {
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
                      DateTime parsedTime = DateFormat.jm()
                          .parse(pickedTime.format(context).toString());
                      String formattedTime =
                          DateFormat('HH:mm:ss').format(parsedTime);
                      onConfirmTime?.call(formattedTime);
                      setState(() {
                        timeController.text = formattedTime;
                      });
                    } else {
                      print("Time is not selected");
                    }
                  },
                ))
          ])
        ]));
  }

  Widget showForm(BuildContext context,
      {required TextEditingController titleController,
      required TextEditingController summaryController}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      width: 600.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.movieTitle,
            style: AppTypography.title,
          ),
          VerticalSpace(10.h),
          FormTextField(
            controller: titleController,
            placeholder: AppStrings.enterTitle,
            colorBorderSide: AppColors.backgroundLogin,
            onChanged: (value) => context
                .read<CreateAndEditBloc>()
                .add(CreateAndEditEvent.changeMovieTitle(value)),
          ),
          VerticalSpace(20.h),
          Text(
            AppStrings.summary,
            style: AppTypography.title,
          ),
          VerticalSpace(10.h),
          TextFormField(
            controller: summaryController,
            minLines: 5,
            maxLines: 6,
            decoration: InputDecoration(
                hintText: AppStrings.enterSummary,
                filled: true,
                fillColor: AppColors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: AppColors.backgroundLogin),
                    borderRadius: BorderRadius.circular(10.r)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: AppColors.backgroundLogin),
                    borderRadius: BorderRadius.circular(10.r))),
            onChanged: (value) => context
                .read<CreateAndEditBloc>()
                .add(CreateAndEditEvent.changeSummary(value)),
          )
        ],
      ),
    );
  }

  void _createOrUpdate(BuildContext context, CreateAndEditState state) {
    if (widget.movie == null) {
      context.read<AddUpdateBloc>().add(AddUpdateEvent.addMovie(
          Movie(
              title: state.title,
              timeCloseDate: state.closeTime,
              closeDate: state.closeDate,
              showDate: state.showDate,
              timeShowDate: state.showTime,
              description: state.summary),
          state.image!));
    } else {
      context.read<AddUpdateBloc>().add(
            AddUpdateEvent.updateMovie(
                Movie(
                    id: widget.movie!.id,
                    title: state.title,
                    timeCloseDate: state.closeTime,
                    closeDate: state.closeDate,
                    showDate: state.showDate,
                    timeShowDate: state.showTime,
                    description: state.summary),
                widget.movie!.id),
          );
    }
  }

  Future<String> getImagePath() async {
    final completer = Completer<String>();

    // Create a new file input element
    final input = html.FileUploadInputElement();

    // Set input accept type to only allow images
    input.accept = 'image/*';

    // Add change event listener to the input element
    input.onChange.listen((event) {
      // Get the selected file
      final file = input.files!.first;

      // Create a new file reader
      final reader = html.FileReader();

      // Add load event listener to the file reader
      reader.onLoad.listen((event) {
        // Get the image data URL
        final imageDataUrl = reader.result as String?;

        completer.complete(imageDataUrl);
      });

      // Read the file as data URL
      reader.readAsDataUrl(file);
    });
    input.click();

    return completer.future;
  }

  Future<File> getImageFileFromPath(String imagePath) async {
    final completer = Completer<File>();
    final input = html.FileUploadInputElement();
    input.accept = 'image/*';
    input.click();

    input.onChange.listen((event) {
      final file = input.files!.first;
      final reader = html.FileReader();

      reader.readAsArrayBuffer(file);

      reader.onLoadEnd.listen((event) async {
        final blob = html.Blob([reader.result]);
        final imageFile = File(imagePath);
        completer.complete(imageFile);
      });
    });

    return completer.future;
  }
}
