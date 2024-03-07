import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarWidget extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.displayLeading = false,
    this.actions = const [],
  });

  final Widget title;
  final bool displayLeading;
  final List<Widget> actions;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CustomAppBarState();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends ConsumerState<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: true,
      actions: widget.actions.isNotEmpty ? widget.actions : const [],
    );
  }
}
