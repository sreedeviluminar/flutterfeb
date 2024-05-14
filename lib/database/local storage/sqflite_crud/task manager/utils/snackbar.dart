import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

showSuccessSnackBar(context) => showTopSnackBar(
      Overlay.of(context),
      const CustomSnackBar.success(
        message: "Data Added Succesfully",
      ),
    );

showErrorSnackBar(context) => showTopSnackBar(
      Overlay.of(context),
      const CustomSnackBar.error(
        message: "Something went wrong!!!!",
      ),
    );
