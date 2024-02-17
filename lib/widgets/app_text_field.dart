import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final String? title;
  final String? hint;
  final bool menditry;
  final int? lines;
  final Widget? titleWidget;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? inputType;
  final TextInputAction? action;
  final TextAlign? textAlign;
  final Widget? suffix;
  final bool? password;
  final double? vPadding;
  final EdgeInsetsGeometry? hPadding;
  final bool isExpanded;
  final Color? fillColor;
  final Color? borderSideColor;
  final double? sizedBoxWidth;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final bool? isMendotary;
  final double? width;
  final onSuffixTap;
  final bool? isDropDownShowing;
  final String? placeHolderText;
  final String? errorText;
  final Widget? prefix;
  final int? maxLength;
  final Function(bool)? onPrefixTap;
  final String? prefixText;
  final bool? editabled;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final Color? titleColor;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enableCopyPaste;
  final VoidCallback? onTap;

  const AppTextField({
    super.key,
    this.title,
    this.onTap,
    this.hint,
    this.vPadding,
    this.onChanged,
    this.lines,
    this.titleWidget,
    this.action,
    this.inputType,
    this.validator,
    this.password,
    this.suffix,
    this.inputFormatters,
    this.textAlign,
    this.sizedBoxWidth,
    this.fillColor,
    this.isExpanded = true,
    this.hPadding,
    this.borderSideColor,
    this.controller,
    this.focusNode,
    this.isMendotary,
    this.width,
    this.onSuffixTap,
    this.isDropDownShowing = false,
    this.placeHolderText,
    this.errorText,
    this.prefix,
    this.maxLength,
    this.onPrefixTap,
    this.prefixText,
    this.editabled,
    this.readOnly = false,
    this.menditry = false,
    this.padding,
    this.titleColor,
    this.enableCopyPaste = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: padding != null
                    ? const EdgeInsets.symmetric(horizontal: 20)
                    : EdgeInsets.zero,
                child: Text(
                  title ?? "",
                  style: TextStyle(
                    color: titleColor ?? Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              menditry
                  ? const Text(
                      '*',
                      style: TextStyle(color: Colors.red),
                    )
                  : const SizedBox.shrink()
            ],
          ),
          const SizedBox(
            height: 05,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: inputType,
            readOnly: readOnly,
            onTap: onTap,
            cursorColor: titleColor ?? Colors.black,
            maxLines: password == true ? 1 : lines,
            obscureText: lines == null ? password == true : false,
            validator: validator ?? validator,
            maxLength: maxLength,
            textAlign: textAlign ?? TextAlign.start,
            focusNode: focusNode,
            enabled: editabled ?? true,
            textInputAction: action ?? TextInputAction.done,
            textAlignVertical: TextAlignVertical.center,
            onChanged: onChanged,
            inputFormatters: inputFormatters,
            enableInteractiveSelection: enableCopyPaste ?? false,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            decoration: InputDecoration(
                hintText: (hint ?? '').isNotEmpty ? capitalize(hint ?? '') : "",
                counterText: "",
                errorText: errorText,
                filled: false,
                errorMaxLines: 2,
                prefixIcon: prefix,
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                suffixIconColor: Theme.of(context).colorScheme.primaryContainer,
                suffixIcon: suffix),
          ),
        ],
      ),
    );
  }

  String capitalize(String value) {
    if (value.trim().isEmpty) return "";
    return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
  }
}
