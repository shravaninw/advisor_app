import 'package:advisor_app/ui.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.button,
      required this.loadingValue,
      required this.buttonText})
      : super(key: key);
  final String title;
  final String description;
  final Widget button;
  final int loadingValue;
  final Widget buttonText;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 0.85,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      i == loadingValue
                          ? SizedBox(
                              height: 10,
                              width: 10,
                              child: Stack(
                                children: [
                                  CircularProgressIndicator(
                                    color: colors.black,
                                    strokeWidth: 2,
                                  ),
                                  Center(
                                    child: CircleAvatar(
                                      radius: 2,
                                      backgroundColor:
                                          colors.black.withOpacity(0.2),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: colors.black.withOpacity(0.2),
                              ),
                            )
                  ],
                ),
                AppHeadLine4(title),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: BodyText2(description),
                ),
              ].mapPadding(padding: EdgeInsets.all(8)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    context.navigation.login();
                  },
                  child: buttonText),
              button,
            ].mapPadding(
              padding: EdgeInsets.all(16),
            ),
          ),
        ],
      ),
    );
  }
}
