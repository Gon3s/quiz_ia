import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'appbar_widget.dart';

class ScaffoldWidget extends ConsumerStatefulWidget {
  final Widget title;

  final bool displayAppBar;
  final List<Widget> appBarActions;

  final bool displayBottomNavigationBar;
  final int currentIndex;

  final bool displayFloatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final void Function()? onFloatingActionButtonPressed;
  final Widget? floatingActionButtonIcon;

  final Widget body;

  const ScaffoldWidget({
    super.key,
    required this.title,
    required this.displayAppBar,
    required this.body,
    this.appBarActions = const [],
    this.displayBottomNavigationBar = false,
    this.currentIndex = 0,
    this.displayFloatingActionButton = false,
    this.floatingActionButtonLocation,
    this.onFloatingActionButtonPressed,
    this.floatingActionButtonIcon,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CustomScaffoldState();
  }
}

class _CustomScaffoldState extends ConsumerState<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.displayAppBar
          ? AppBarWidget(
              title: widget.title,
              actions: widget.appBarActions,
            )
          : null,
      body: widget.body,
      floatingActionButton: widget.displayFloatingActionButton
          ? FloatingActionButton(
              onPressed: widget.onFloatingActionButtonPressed,
              child: widget.floatingActionButtonIcon,
            )
          : null,
      floatingActionButtonLocation: widget.floatingActionButtonLocation ?? FloatingActionButtonLocation.endFloat,
    );
  }
}
