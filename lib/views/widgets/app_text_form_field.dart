import '../../ui.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    this.hintText,
    this.borderRadius,
    this.prefix,
    this.controller,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.isObscure = false,
    this.label,
    this.suffix,
  }) : super(key: key);

  final String? hintText;
  final double? borderRadius;
  final Widget? prefix, suffix;
  final Widget? label;

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      keyboardType: keyboardType,
      controller: controller,
      style: TextStyle(color: colors.black),
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        suffixIcon: suffix,
        contentPadding: EdgeInsets.all(24),
        border: UnderlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        prefix: prefix,
        label: label,
        hintText: hintText,
      ),
    );
  }
}
