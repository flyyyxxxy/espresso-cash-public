import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/button.dart';
import '../../../ui/colors.dart';
import '../../../ui/info_icon.dart';
import '../../../ui/value_stream_builder.dart';
import '../../conversion_rates/services/watch_user_fiat_balance.dart';
import '../../ramp/widgets/ramp_buttons.dart';
import 'balance_amount.dart';

class InvestmentHeader extends StatefulWidget {
  const InvestmentHeader({super.key, required this.onSendMoneyPressed});

  final VoidCallback onSendMoneyPressed;

  @override
  State<InvestmentHeader> createState() => _InvestmentHeaderState();
}

class _InvestmentHeaderState extends State<InvestmentHeader> {
  bool _showMore = false;

  void _handleInfoPressed() => setState(() => _showMore = !_showMore);

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration:
            const BoxDecoration(color: CpColors.darkGoldBackgroundColor),
        child: _HeaderSwitcher(
          first: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _Headline(onInfo: _handleInfoPressed),
                    const SizedBox(height: 4),
                    const BalanceAmount(),
                    const SizedBox(height: 2),
                  ],
                ),
              ),
              _Buttons(onSendMoneyPressed: widget.onSendMoneyPressed),
            ],
          ),
          second: _Info(onClose: _handleInfoPressed),
          showMore: _showMore,
        ),
      );
}

class _Buttons extends StatelessWidget {
  const _Buttons({required this.onSendMoneyPressed});

  final VoidCallback onSendMoneyPressed;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          color: CpColors.dashboardBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
        ),
        child: ValueStreamBuilder<bool>(
          create: () =>
              sl<WatchUserFiatBalance>().call().map((it) => it.isZero),
          builder: (context, isZeroAmount) => Padding(
            padding:
                const EdgeInsets.only(left: 18, top: 20, right: 18, bottom: 8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  child: Text(
                    isZeroAmount
                        ? context.l10n.fundYourAccount
                        : context.l10n.investmentHeaderButtonsTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      letterSpacing: 0.23,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!isZeroAmount) ...[
                      Flexible(
                        child: CpButton(
                          minWidth: 250,
                          size: CpButtonSize.wide,
                          text: context.l10n.sendMoney,
                          onPressed: onSendMoneyPressed,
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                    const AddCashButton(size: CpButtonSize.wide),
                    if (!isZeroAmount) ...[
                      const SizedBox(width: 8),
                      const CashOutButton(size: CpButtonSize.wide),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

class _Info extends StatelessWidget {
  const _Info({required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CircleAvatar(
              maxRadius: 14,
              backgroundColor: CpColors.yellowColor,
              child: CpInfoIcon(iconColor: CpColors.darkBackgroundColor),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                context.l10n.usdcInfo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.10,
                ),
              ),
            ),
            const SizedBox(height: 16),
            CpButton(
              text: context.l10n.close,
              onPressed: onClose,
              minWidth: 250,
              size: CpButtonSize.wide,
            ),
            const SizedBox(height: 12),
          ],
        ),
      );
}

class _Headline extends StatelessWidget {
  const _Headline({required this.onInfo});

  final VoidCallback onInfo;

  @override
  Widget build(BuildContext context) {
    const baseStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.23,
    );

    return Text.rich(
      TextSpan(
        text: context.l10n.cryptoCashBalance,
        style: baseStyle,
        children: [
          const TextSpan(text: ' ', style: baseStyle),
          WidgetSpan(
            child: GestureDetector(
              onTap: onInfo,
              child: Text.rich(
                TextSpan(
                  text: context.l10n.inUsdc,
                  style: baseStyle.copyWith(color: CpColors.yellowColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderSwitcher extends StatefulWidget {
  const _HeaderSwitcher({
    required this.first,
    required this.second,
    required this.showMore,
  });

  final Widget first;
  final Widget second;
  final bool showMore;

  @override
  State<_HeaderSwitcher> createState() => _HeaderSwitcherState();
}

class _HeaderSwitcherState extends State<_HeaderSwitcher> {
  double? _firstChildHeight;

  @override
  void didUpdateWidget(covariant _HeaderSwitcher oldWidget) {
    super.didUpdateWidget(oldWidget);
    _firstChildHeight = null;
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (_firstChildHeight == null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              setState(() {
                _firstChildHeight = context.size?.height;
              });
            });
          }

          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 100),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            child: !widget.showMore
                ? widget.first
                : SizedBox(
                    key: const ValueKey('second'),
                    height: _firstChildHeight,
                    child: widget.second,
                  ),
          );
        },
      );
}
