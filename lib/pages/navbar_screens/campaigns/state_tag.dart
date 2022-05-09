part of 'campaigns_page.dart';

class StateTag extends StatelessWidget {
  final String state;

  const StateTag({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40.0),
        ),
        color: Colors.green,
      ),
      child: Align(
        alignment: Alignment.center,
        child: CustomText(
          text: state,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
