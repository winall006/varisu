import 'package:flutter/cupertino.dart';

class RowItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  const RowItemWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return _buildItem(
      context,
    );
  }

  CupertinoButton _buildItem(
    BuildContext context,
  ) {
    return CupertinoButton(
      onPressed: onTap,
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [
          _buildContainer(
            context,
          ),
          _buildSelectButton(
            context,
          ),
          _buildParameters(
            context,
          ),
        ],
      ),
    );
  }

  Positioned _buildSelectButton(
    BuildContext context,
  ) {
    return Positioned(
      top: 8.5,
      right: 8.5,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: _buildButton(
              context,
            ),
          ),
        ],
      ),
    );
  }

  Align _buildContainer(
    BuildContext context,
  ) {
    return Align(
      alignment: Alignment.topRight,
      child: Opacity(
        opacity: 1,
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Color(0xffD5DFF7),
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned _buildParameters(
    BuildContext context,
  ) {
    return Positioned(
      top: 14.5,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildImage(),
          SizedBox(width: 20),
          _buildTitleSubtitle(
            context,
          ),
        ],
      ),
    );
  }

  SizedBox _buildImage() {
    return SizedBox(
      height: 52,
      width: 52,
      child: Image.asset('assets/image/thalapathy.jpeg'),
    );
  }

  Column _buildTitleSubtitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(
          context,
        ),
        _buildSubtitle(
          context,
        )
      ],
    );
  }

  Text _buildTitle(
    BuildContext context,
  ) {
    return Text(
      "Varisu",
    );
  }

  Widget _buildSubtitle(
    BuildContext context,
  ) {
    return Text(
      "Thee Thalapathy!",
    );
  }

  Container _buildButton(
    BuildContext context,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xff0E44E1).withOpacity(.15),
      ),
      child: Text(
        'Select »',
      ),
    );
  }
}
