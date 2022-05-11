part of 'campaigns_page.dart';

class TargetTypeTag extends StatelessWidget {
  final String targetType;

  const TargetTypeTag({
    Key? key,
    required this.targetType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 20,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
          color: Colors.blue,
        ),
        child: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: targetType,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
