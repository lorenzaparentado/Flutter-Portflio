import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/content_models.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import 'package:flutter_portfolio/styles/text_styles_web.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.detail});

  final PortfolioDetail detail;

  bool _isCompact(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 760;

  @override
  Widget build(BuildContext context) {
    final compact = _isCompact(context);
    final size = MediaQuery.sizeOf(context);
    final horizontal = compact ? 24.0 : (size.width * .067).clamp(48.0, 100.0);
    final vertical = compact ? 24.0 : (size.height * .06).clamp(44.0, 80.0);

    return Scaffold(
      backgroundColor: AppColors.lightTan,
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _backButton(context),
              SizedBox(height: compact ? 26 : 44),
              _hero(context),
              SizedBox(height: compact ? 34 : 56),
              _story(context),
              if (detail.links.isNotEmpty) ...[
                SizedBox(height: compact ? 28 : 42),
                _links(context),
              ],
              SizedBox(height: compact ? 8 : 18),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    final compact = _isCompact(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomContainer(
            boxColor: AppColors.mediumGreen,
            boxShadowColor: AppColors.shadowGreen,
            offset: compact ? 3 : 5,
            borderRadius: compact ? 9 : 12,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: compact ? 12 : 16, vertical: compact ? 7 : 10),
              child: Text(
                AppStrings.backToPortfolio,
                style: compact
                    ? headerSmallMobile(AppColors.lightTan, context)
                    : headerSmallestWeb(AppColors.lightTan, context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _hero(BuildContext context) {
    final compact = _isCompact(context);
    final details = _details(context);
    final illustration = _illustration(context);

    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      alignment: Alignment.center,
      child: compact
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                details,
                const SizedBox(height: 28),
                illustration,
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 6, child: details),
                const SizedBox(width: 52),
                Expanded(flex: 5, child: illustration),
              ],
            ),
    );
  }

  Widget _details(BuildContext context) {
    final compact = _isCompact(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detail.title,
          style: compact
              ? headerBigMobile(AppColors.darkestBrown, context)
              : headerBigWeb(AppColors.darkestBrown, context),
        ),
        const SizedBox(height: 16),
        Text(
          detail.overview,
          style: compact
              ? bodyMobile(AppColors.darkestBrown, context)
              : bodyMediumWeb(AppColors.darkestBrown, context),
        ),
        SizedBox(height: compact ? 24 : 34),
        Wrap(
          spacing: compact ? 22 : 44,
          runSpacing: 16,
          children: [
            _meta(context, AppStrings.toolsLabel, _toolChips(context)),
            _meta(
                context,
                AppStrings.durationLabel,
                Text(
                  detail.dates,
                  style: compact
                      ? bodyMobile(AppColors.darkestBrown, context)
                      : bodyMediumWeb(AppColors.darkestBrown, context),
                )),
          ],
        ),
      ],
    );
  }

  Widget _meta(BuildContext context, String label, Widget child) {
    final compact = _isCompact(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: compact
              ? headerSmallMobile(AppColors.darkestBrown, context)
              : headerSmallestWeb(AppColors.darkestBrown, context),
        ),
        SizedBox(height: compact ? 10 : 14),
        child,
      ],
    );
  }

  Widget _toolChips(BuildContext context) {
    final compact = _isCompact(context);
    return Wrap(
      spacing: compact ? 8 : 10,
      runSpacing: compact ? 8 : 10,
      children: detail.technologies
          .take(4)
          .map((technology) => CustomContainer(
                boxColor: AppColors.mediumGreen,
                boxShadowColor: AppColors.shadowGreen,
                offset: compact ? 2 : 3,
                borderRadius: compact ? 7 : 9,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: compact ? 8 : 10, vertical: compact ? 4 : 5),
                  child: Text(
                    technology,
                    style: compact
                        ? bodyMobile(AppColors.lightTan, context)
                        : bodySmallWeb(AppColors.lightTan, context),
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget _illustration(BuildContext context) {
    final compact = _isCompact(context);
    return AspectRatio(
      aspectRatio: compact ? 1.55 : 1.18,
      child: CustomContainer(
        boxColor: AppColors.mediumGreen,
        boxShadowColor: AppColors.shadowGreen,
        offset: compact ? 5 : 8,
        borderRadius: compact ? 20 : 28,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(compact ? 20 : 28),
          child: detail.imageAsset == null
              ? Center(
                  child: Icon(Icons.work_outline_rounded,
                      color: AppColors.lightTan.withValues(alpha: .35),
                      size: compact ? 58 : 82),
                )
              : Image.asset(
                  detail.imageAsset!,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
        ),
      ),
    );
  }

  Widget _story(BuildContext context) {
    final compact = _isCompact(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 940),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detail.role,
            style: compact
                ? headerMediumMobile(AppColors.darkestBrown, context)
                : headerMediumWeb(AppColors.darkestBrown, context),
          ),
          SizedBox(height: compact ? 20 : 30),
          ...detail.highlights.map(
            (highlight) => Padding(
              padding: EdgeInsets.only(bottom: compact ? 16 : 20),
              child: Text(
                '${AppStrings.bullet} $highlight',
                style: compact
                    ? bodyMobile(AppColors.darkestBrown, context)
                    : bodyMediumWeb(AppColors.darkestBrown, context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _links(BuildContext context) {
    final compact = _isCompact(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 940),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.detailProjectsHeading,
            style: compact
                ? headerMediumMobile(AppColors.darkestBrown, context)
                : headerMediumWeb(AppColors.darkestBrown, context),
          ),
          SizedBox(height: compact ? 16 : 24),
          Wrap(
            spacing: 14,
            runSpacing: 14,
            children: detail.links
                .map((link) => InkWell(
                      onTap: () => _openLink(link.url),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CustomContainer(
                          boxColor: AppColors.mediumGreen,
                          boxShadowColor: AppColors.shadowGreen,
                          offset: compact ? 3 : 5,
                          borderRadius: compact ? 8 : 10,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: compact ? 10 : 14,
                                vertical: compact ? 6 : 8),
                            child: Text(
                              link.label,
                              style: compact
                                  ? headerSmallMobile(
                                      AppColors.lightTan, context)
                                  : headerSmallestWeb(
                                      AppColors.lightTan, context),
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $uri');
    }
  }
}
