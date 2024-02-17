import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? flexibleSpace;
  final double? elevation;
  final Color? backgroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final TextStyle? textTheme;
  final bool? primary;
  final bool? centerTitle;
  final double? titleSpacing;
  final double? toolbarOpacity;
  final double? bottomOpacity;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.flexibleSpace,
    this.elevation,
    this.backgroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.titleSpacing,
    this.toolbarOpacity,
    this.bottomOpacity,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
      leading: leading,
      flexibleSpace: flexibleSpace,
      elevation: elevation,
      backgroundColor: backgroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      titleTextStyle: textTheme,
      primary: primary ?? true,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity ?? 1.0,
      bottomOpacity: bottomOpacity ?? 1.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
