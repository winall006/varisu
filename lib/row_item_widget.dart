import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodRowItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  const PaymentMethodRowItemWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return _buildPaymentMethodItem(
      context,
    );
  }

  CupertinoButton _buildPaymentMethodItem(
    BuildContext context,
  ) {
    return CupertinoButton(
      onPressed: onTap,
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [
          _buildPaymentMethodContainer(
            context,
          ),
          _buildPaymentMethodSelectButton(
            context,
          ),
          _buildPaymentMethodParameters(
            context,
          ),
        ],
      ),
    );
  }

  Positioned _buildPaymentMethodSelectButton(
    BuildContext context,
  ) {
    return Positioned(
      top: 8.5,
      right: 8.5,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: _buildSelectPaymentMethodButton(
              context,
            ),
          ),
        ],
      ),
    );
  }

  Align _buildPaymentMethodContainer(
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

  Positioned _buildPaymentMethodParameters(
    BuildContext context,
  ) {
    return Positioned(
      top: 14.5,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPaymentMethodImage(),
          SizedBox(width: 20),
          _buildPaymentMethodTitleSubtitle(
            context,
          ),
        ],
      ),
    );
  }

  SizedBox _buildPaymentMethodImage() {
    return SizedBox(
      height: 52,
      width: 52,
      child: Image.asset('assets/image/thalapathy.jpeg'),
    );
  }

  Column _buildPaymentMethodTitleSubtitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPaymentMethodTitle(
          context,
        ),
        _buildPaymentMethodSubtitle(
          context,
        )
      ],
    );
  }

  Text _buildPaymentMethodTitle(
    BuildContext context,
  ) {
    return Text(
      "Varisu",
    );
  }

  Widget _buildPaymentMethodSubtitle(
    BuildContext context,
  ) {
    return Text(
      "Thee Thalapathy!",
    );
  }

  Container _buildSelectPaymentMethodButton(
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

  // Color selectPaymentMethodButtonColor(
  //     BuildContext context, PaymentMethod paymentMethod) {
  //   return conditionalAvailability<Color>(
  //     context,
  //     paymentMethod,
  //     ifDisabled: Theme.of(context).disabledColor,
  //     ifEnabled: SBTheme.of(context).accentBoxColor.withOpacity(0.15),
  //   );
  // }

}
