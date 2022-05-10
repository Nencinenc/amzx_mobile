part of 'campaign_card.dart';

class _CampaignKey extends StatelessWidget {
  const _CampaignKey({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      textWeight: WeightSize.bold,
      textSize: TextSize.m,
    );
  }
}
