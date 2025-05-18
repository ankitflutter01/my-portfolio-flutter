class Project {
  final String name;
  final String description;
  final String skills;
  final String image;
  final String link;
  Project(this.name, this.skills,this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Knovos Manage',
    'Bloc, Dynamic Form, XML, Module Permission, Status Handling',
    'Knovos Manage is an all-in-one process management app built for modern businesses and legal teams.Seamlessly connect, collaborate, and stay on top of every task with ease.From legal matter tracking to billing and resource management, it simplifies complex workflows.Ideal for law firms and corporations, even with remote teams, Knovos Manage enhances visibility and productivity.Manage everything—from eDiscovery to court reporting—within a secure, intuitive platform.Boost efficiency, reduce friction, and achieve your goals with Knovos Manage.',
    'assets/images/coffee.png',
    'https://github.com/Hamad-Anwar/Coffe-Shop-Beautifull-UI',
  ),
  Project(
    'Knovos Rooms',
    'GetX, Real-Time Document Collaboration, Workflow Management, Module Permission, Download Document',
    'Knovos Rooms® is a secure, real-time content collaboration platform designed for remote and hybrid teams.It offers seamless document sharing, editing, and version control with advanced encryption (AES-256) and SSL security.Features like multi-stage approvals, online MS Office editing, and integrated email ensure efficient workflows.IT teams benefit from full visibility, access control, and audit tracking to maintain data hygiene.The intuitive UI supports drag-and-drop uploads, digital watermarks, OCR, and customizable metadata.Smart tools like Q&A management, blackline revision, and document subscriptions enhance collaboration.Stay compliant, secure, and productive—all within one powerful, centralized platform.',
    'assets/images/car.png',
    'https://github.com/Hamad-Anwar/Car-Controller-Getx-Flutter',
  ),
  Project(
      'Wollatte',
      'Bloc, Local Auth, Push Notification, Monthly Expense Management, High-Level Security, Categorized Spending Insights, Paperless Receipt Storage',
      'In the Wollette app, users can effortlessly manage their monthly spending, handle account and cash transactions, and seamlessly link their accounts for transaction tracking. The application provides a high level of security. Users can categorically view their expenditures and stay informed about trending products in their area. Additionally, all transaction paperless receipts are easily accessible within the application.',
      'assets/images/alarm.jpg',
      'https://github.com/Hamad-Anwar/Neumorphic-Analog-Clockify'),
  Project(
      'Meditation for actor',
      'Provider, InApp Purchase, Push Notification,Background Music play, Cate, Audition Timeline Management, Mindfulness & Focus Tools, Health & Wellbeing Benefits',
      'Meditation for actor - Various studies have shown that mindfulness and meditation practice results in improved concentration/focus and emotional regulation. It’s also scientifically proven to improve anxiety levels, reduce blood pressure, lower the risk of depression, and increase body satisfaction.In this application, the user can meditate based on their routine. The user can add audition time line, checklist and meditate through this application. The user can purchase the subscription plan also. ',
      'assets/images/alarm.jpg',
      'https://github.com/Hamad-Anwar/Neumorphic-Analog-Clockify'),
  Project(
      'AI Draw',
      'GetX, AI-Powered Image Customization, In-App Purchases & Subscriptions, Push Notification, FVM (Flutter Version Management) Integration',
      'In the AI Draw application, users have the ability to create personalized portraits of their pets or themselves and customize the images. Additionally, users can edit and modify their images using the application features.Key Features - In app product purchase and subscription using revenuecat, FVM integrations, Firebase notification, hydrated bloc cubit for storing data, copy with bloc methodology.State Management - Bloc Cub',
      'assets/images/alarm.jpg',
      'https://github.com/Hamad-Anwar/Neumorphic-Analog-Clockify'),
  Project(
      'PMI San Francisco Bay Area Chapter.',
      'Bloc, Event Scheduling, Notifications & Alerts, Push Notification, Query Handling, Firebase Chat, Push Notification, Stipe Connect',
      'An event management application allows users to schedule events, notify people, sell tickets and manage their tickets from the backend easily. Consequently, youll be able to sync all of the participants information swiftly. The event management app also allows organizers to keep a track of guests and answer queries at ease in a few clicks.',
      'assets/images/cui.png',
      'https://github.com/Hamad-Anwar/'),
  // Project(
  //     'Power Of Prayer',
  //     'Its interface was created to be user-friendly, straightforward, and intuitive. The Power of Prayer apps primary objective is to listen to daily prayers.',
  //     'assets/images/player.png',
  //     'https://github.com/Hamad-Anwar/Neumorphic-Music_Player-Flutter'),
  Project(
      'City Ride Application',
      'GetX, Ride Booking, Real-Time Driver Tracking, Location, Ride History, Firebase Chat, Push Notification',
      'In this application, The use of the City Ride app, drivers and ride services may interact with customers and businesses. In cities where City Ride is available, you can use the City ride app to request a ride.An estimated arrival time for the driver travelling to your pickup location is shown on the app when a nearby driver accepts your request.',
      'assets/images/recipe.png',
      'https://github.com/Hamad-Anwar/Food-Recipe-App-Flutter'),
];
