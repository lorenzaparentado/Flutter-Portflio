import 'content_models.dart';

/// The single source of truth for every user-facing piece of site copy.
class AppStrings {
  static const String headerFullName = 'Lorenz\nAparentado';
  static const String headerName = 'Lorenz';
  static const String landingText =
      'Computer Science @ Drexel\nSoftware Engineer @ SIG\nFull-Stack / Data / AI Systems';

  // A balanced snapshot of education and professional experience.
  static const String stat1Num = '3';
  static const String stat1Text = 'Engineering roles';
  static const String stat2Num = '4';
  static const String stat2Text = 'Co-op terms';
  static const String stat3Num = '3.91';
  static const String stat3Text = 'Drexel GPA';
  static const String stat4Num = '2027';
  static const String stat4Text = 'Graduation year';

  static const String aboutMe = 'About Me';
  static const String aboutMeText =
      "I'm a Computer Science student at Drexel University, where I'm also pursuing a minor in Data Science. My concentrations are Software Engineering and Computer Graphics, Vision, and Interaction; I hold a 3.91 GPA and expect to graduate in June 2027.\n\nI've been lucky to grow as a software engineer through co-op roles at NeuroFlow, Comcast, and Susquehanna International Group. Those experiences have helped me become comfortable moving between mobile, backend, full-stack, data, and AI-enabled work while learning how good engineering happens alongside product, design, QA, and other engineers.\n\nI still enjoy building outside of work and class. Projects like BioXplorer, Eventify, Hidden Gems, and Guess Me give me a place to explore ideas, learn new tools, and make things that feel useful or just fun.\n\nWhen I'm not at a keyboard, you'll probably find me lifting, running, climbing, making or DJing music, or tinkering with something in my homelab. I'm a pretty down-to-earth person who likes learning from people, getting outside, and finding a good reason to be excited about the next thing I'm building.";
  static const String aboutMeResumeButton = 'Check out my resume!';
  static const String aboutMeUpdated = 'Last Updated August, 2026';

  // The former work composition is now the added Education section.
  static const String work = 'Education';
  static const String educationSchool = 'Drexel University';
  static const String educationProgram =
      'B.S. Computer Science | Minor in Data Science';
  static const String educationSummary =
      'I am a five-year co-op Computer Science student with Software Engineering and Computer Graphics, Vision, and Interaction concentrations. I have a 3.91 cumulative GPA, have earned Dean\'s List recognition, and expect to graduate in June 2027.';
  static const String courseworkTitle = 'Relevant coursework';
  static const String courseworkSummary =
      'My coursework gives me a practical foundation in building reliable software, reasoning about data, and designing for people. Courses completed with strong results include:';
  static const List<String> coursework = [
    'Data Structures',
    'Systems Programming',
    'Systems Architecture',
    'Algorithms & Analysis',
    'Artificial Intelligence',
    'Software Architecture I & II',
    'Data Science Programming',
    'Web Development',
    'Human-Centered Design',
    'Probability & Statistics',
    'Concurrent Programming',
    'Software Verification & Validation',
  ];
  static const String vanguardTitle = 'Vanguard senior design project';
  static const String vanguardSummary =
      'Beginning in Fall 2026, I will work on a Vanguard-sponsored senior design project focused on AI-assisted developer productivity. The team will study how developers use AI-enabled tools, identify patterns in adoption and workflow, and turn direct developer feedback into clear, evidence-based recommendations for improving the engineering experience.';
  static const String vanguardDetail =
      'I am especially excited by the mix of software engineering, data analysis, and human-centered research: understanding how people actually work with new tools is just as important as measuring what those tools can do.';

  // Experience cards. The existing project-card visual language is retained.
  static const String projects = 'Experience';
  static const String projectOpen = 'More Details';

  static const String project1Title = 'SIG';
  static const String project1Description =
      'Software Engineer Co-op building risk, data, and developer tooling.';
  static const String project1Tech1 = 'C# / .NET';
  static const String project1Tech2 = 'Oracle SQL';
  static const String project1Tech3 = 'FastAPI';

  static const String project2Title = 'Comcast';
  static const String project2Description =
      'Full Stack Developer Co-op for Sports Experiences across devices.';
  static const String project2Tech1 = 'Flutter';
  static const String project2Tech2 = 'AWS';
  static const String project2Tech3 = 'JavaScript';

  static const String project3Title = 'NeuroFlow';
  static const String project3Description =
      'Mobile and backend engineering for a production healthcare platform.';
  static const String project3Tech1 = 'Flutter';
  static const String project3Tech2 = 'AWS Lambda';
  static const String project3Tech3 = 'PostgreSQL';

  static const String project4Title = 'Selected Projects';
  static const String project4Description =
      'Independent builds that sharpen my product sense and technical range.';
  static const String project4Tech1 = 'Flutter';
  static const String project4Tech2 = 'Python';
  static const String project4Tech3 = 'OpenAI';

  static const String contactMe = 'Contact Me';
  static const String contactDescription =
      "I'm graduating in June 2027 and always happy to connect about software engineering, interesting technical problems, or new opportunities.";
  static const String email = 'lorenzaparentado.work@gmail.com';
  static const String phoneNumber = '+1 (484) 350-8039';
  static const String linkedIn = 'laparentado';
  static const String gitHub = 'lorenzaparentado';
  static const String websiteUpdated = 'Last Updated August, 2026';

  static const String emailSubject = 'From Portfolio:';
  static const String emailBody = 'Write me a message!';
  static const String alert = 'Alert';
  static const String smsWindows = 'Cannot perform SMS functions on Windows!';
  static const String ok = 'OK';
  static const String linkedInLink = 'https://www.linkedin.com/in/laparentado';
  static const String gitHubLink = 'https://github.com/lorenzaparentado';
  static const String resumeAssetUrl =
      'assets/assets/resume/Lorenz_Aparentado_Resume.pdf';

  // Detail-page labels.
  static const String backToPortfolio = 'Back to portfolio';
  static const String toolsLabel = 'Tools';
  static const String durationLabel = 'Duration';
  static const String detailOverviewHeading = 'Overview';
  static const String detailHighlightsHeading = 'What I worked on';
  static const String detailProjectsHeading = 'Explore the projects';
  static const String detailImpactHeading = 'Impact and scope';
  static const String bullet = '•';
  static const String appTitle = 'Lorenz Aparentado Portfolio';

  // Experience detail content. Keep all editable wording here.
  static const List<PortfolioDetail> experienceDetails = [
    PortfolioDetail(
      title: 'Susquehanna International Group',
      role: 'Software Engineer Co-op | Operations Development',
      dates: 'March 2026 - Present',
      overview:
          'I build risk, data, and developer-tooling systems for the Internal Positions team, working across application, database, validation, and UI layers.',
      technologies: [
        'C#',
        '.NET',
        'Blazor',
        'Oracle SQL',
        'Apache Iceberg',
        'Python',
        'FastAPI',
      ],
      highlights: [
        'Built a C#/.NET hypothetical VaR platform that resolves instruments by multiple identifiers and automates external risk-system submissions, reducing ad hoc preparation from hours to minutes.',
        'Built an LLM-powered VaR support chatbot that turns natural-language questions into safeguarded read-only SQL with supporting CSVs for QA and investigation.',
        'Owned a risk reporting platform and automated 14 recurring position-quality and risk-exception reports for engineering and operations teams.',
        'Helped productionize VaR data pipelines with broader product coverage, position tracking, logging, and downstream research datasets.',
        'Scaled AI-assisted code review across 12+ repositories and contributed to a multi-team instrument-authoring platform.',
      ],
      imageAsset: AppAssets.sigTeamPhoto,
    ),
    PortfolioDetail(
      title: 'Comcast',
      role: 'Full Stack Developer Co-op | Sports Experiences',
      dates: 'March 2025 - September 2025',
      overview:
          'I prototyped cross-platform sports and connected-home experiences across mobile, web, and TV while collaborating with teams around the broader Xfinity ecosystem.',
      technologies: [
        'Flutter',
        'Kotlin',
        'Swift',
        'JavaScript',
        'AWS Lambda',
        'S3',
        'CloudFront',
      ],
      highlights: [
        'Built a Flutter sports app prototype with eight features including real-time stats, team favoriting, badges, and interactive challenges.',
        'Integrated authentication and existing backend services while validating the prototype across supported devices.',
        'Partnered on iOS, Android, web, and TV prototypes for a future Comcast rollout.',
        'Led a Twitch-style live-chat hackathon prototype designed around thousands of concurrent users and co-created an Xfinity WiFi safety demo for senior leadership.',
      ],
      imageAsset: AppAssets.comcastTeamPhoto,
    ),
    PortfolioDetail(
      title: 'NeuroFlow',
      role: 'Software Engineering Associate & Co-op | Mobile Engineering',
      dates: 'April 2024 - March 2025 | September 2025 - March 2026',
      overview:
          'I shipped production mobile and backend work for a healthcare technology product while collaborating closely with design and QA through release.',
      technologies: [
        'Flutter',
        'Kotlin',
        'Swift',
        'Flask',
        'AWS Lambda',
        'PostgreSQL',
        'Retool',
      ],
      highlights: [
        'Led part of a Kotlin/Swift-to-Flutter migration that reduced feature file count and complexity by 50%.',
        'Developed mobile features including notifications reaching 100,000+ customers and third-party gift-card rewards.',
        'Built External Health Records integrations with AWS Lambda and optimized targeted backend APIs.',
        'Delivered 40+ production merge requests across frontend, backend, and mobile repositories.',
        'Helped shape a 3-4 month Flutter roadmap and mentored a new developer to full productivity in two weeks.',
      ],
      imageAsset: AppAssets.neuroFlowTeamPhoto,
    ),
    PortfolioDetail(
      title: 'Selected Projects',
      role: 'Independent builds, hackathons, and product experiments',
      dates: '2023 - Present',
      overview:
          'Projects are where I explore product ideas, learn unfamiliar tools, and practice taking a concept from a rough sketch to a working experience.',
      technologies: [
        'Flutter',
        'Python',
        'OpenAI API',
        'TensorFlow',
        'PostgreSQL',
      ],
      highlights: [
        'BioXplorer: an AI education platform with GPT-4 chat, TensorFlow animal detection, geolocation, and species learning; it won HackRU\'s education track.',
        'Eventify: an event discovery and planning app with authentication, RSVP flows, Ticketmaster integration, geocoding, and PostgreSQL.',
        'Hidden Gems: a Flutter app for discovering and saving local spots with maps, authentication, and Supabase-backed data.',
        'Guess Me: a couples game centered on quick answer, guess, and reveal rounds with categories, scoring, and streaks.',
      ],
      links: [
        DetailLink('Eventify', 'https://github.com/lorenzaparentado/Eventify'),
        DetailLink('Hidden Gems',
            'https://github.com/lorenzaparentado/hidden-gems-v1'),
      ],
    ),
  ];
}

class AppAssets {
  static const String headshot = 'assets/images/headshot.jpg';
  static const String sigLogo = 'assets/images/company_logos/sig.png';
  static const String comcastLogo = 'assets/images/company_logos/comcast.png';
  static const String neuroFlowLogo =
      'assets/images/company_logos/neuroflow.png';
  static const String sigTeamPhoto = 'assets/images/experience/sig-team.jpg';
  static const String comcastTeamPhoto =
      'assets/images/experience/comcast-team.jpg';
  static const String neuroFlowTeamPhoto =
      'assets/images/experience/neuroflow-team.jpg';
}
