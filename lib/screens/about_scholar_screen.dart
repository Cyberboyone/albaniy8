import 'package:flutter/material.dart';
import '../theme/neumorphic.dart';

class AboutScholarScreen extends StatelessWidget {
  const AboutScholarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 20, 8),
              child: Row(
                children: [
                  NeumorphicCircleButton(
                    icon: Icons.arrow_back_rounded,
                    size: 44,
                    iconSize: 22,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Text(
                      'About the Scholar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 24),
                children: [
                  const SizedBox(height: 8),
                  Center(
                    child: Neumorphic(
                      width: 132,
                      height: 132,
                      borderRadius: 66,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/scholar_albaniy.png',
                          width: 124,
                          height: 124,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person_outline,
                              size: 48,
                              color: AppColors.textSecondary,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Center(
                    child: Text(
                      'Sheikh Muhammad Auwal Adam',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Center(
                    child: Text(
                      'Albani Zaria · 1960 – 2014',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _section(
                    'Early Life & Education',
                    'Sheikh Muhammad Auwal Adam, widely known as Albani Zaria, '
                    'was born on 27 September 1960 in Zaria, Kaduna State, '
                    'Nigeria. He received his early education locally and '
                    'attended Barewa College. He later studied mass '
                    'communication at Bayero University, Kano, and earned a '
                    'degree in information technology from the Federal '
                    'University of Technology, Yola (now Modibbo Adama '
                    'University). At the time of his death he was a '
                    'postgraduate student in Electrical Engineering at Ahmadu '
                    'Bello University, Zaria.\n\n'
                    'Alongside his secular studies he devoted many years to '
                    'the study of Islamic sciences, especially Hadith, and '
                    'adopted the name "Albani" in honour of the renowned '
                    'Hadith scholar Muhammad Nasiruddin al-Albani.',
                  ),
                  _section(
                    'Career & Activities',
                    'He was a leading figure of the Salafi movement in Nigeria '
                    'and was regarded by many contemporaries as one of the '
                    'most influential Salafi scholars of his generation. He '
                    'was among the first scholars in Nigeria to popularise '
                    'the term "Salafiyyah" among students and teachers of '
                    'Islamic knowledge.\n\n'
                    'He founded and led the Daarul Hadeethis-Salafiyyah school '
                    'and the Markazu-Salafiyya centre in Tudun Wada, Zaria, as '
                    'well as the Albaniy Science Academy in the Gaskiya area '
                    'of Zaria. He delivered weekly lectures and annual Tafsir '
                    'sessions focused on Hadith and the Qur\'an, and travelled '
                    'across northern Nigeria and neighbouring countries to '
                    'teach.',
                  ),
                  _section(
                    'Notable Works',
                    'His recorded lessons centred on the study of authentic '
                    'Hadith collections, the critique of religious innovations '
                    '(bid\'ah), and the promotion of a Salafi understanding of '
                    'Islam rooted in the Qur\'an and Sunnah. His lectures on '
                    'Sahih al-Bukhari and other classical texts remain widely '
                    'circulated among his students and listeners.',
                  ),
                  _section(
                    'Death',
                    'On the evening of 1 February 2014, after delivering his '
                    'regular Tafsir lecture at Markazu-Salafiyya in Tudun '
                    'Wada, Zaria, Sheikh Albani was attacked by gunmen near '
                    'Magume junction as he drove home with his family. He was '
                    'shot and later pronounced dead at St. Luke Hospital in '
                    'Wusasa, Zaria, aged 53. His wife and one of his sons also '
                    'lost their lives in the attack. The Boko Haram leader '
                    'Abubakar Shekau later claimed responsibility. His passing '
                    'was widely mourned across Nigeria.',
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Biographical information sourced from Wikipedia '
                      '(en.wikipedia.org/wiki/Muhammad_Auwal_Albani_Zaria).',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        fontStyle: FontStyle.italic,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _section(String title, String body) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Neumorphic(
        borderRadius: 20,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.accent,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              body,
              style: const TextStyle(
                fontSize: 13.5,
                height: 1.5,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
