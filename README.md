<<<<<<< HEAD
# 🚀 AI-Instagram-Caption-Generator

An AI-powered mobile application that **instantly generates Instagram captions, emojis, and hashtags** for influencers, content creators, small businesses, and social media managers.  

Built with **Flutter** (Android + iOS) and a **Node.js + Express backend**, with secure Firebase integration and SaaS-ready architecture.

---

## 📱 Features

### 🎯 Core Features (MVP)
- Generate 3 unique Instagram captions per day (free)
- Automatic emoji integration
- 10 relevant hashtag suggestions
- Tone selection: Funny, Professional, Emotional, Inspirational, Confident
- Category selection: Business, Travel, Fitness, Love, Fashion, Food, Motivation
- One-tap copy button
- Daily usage limit for free users
- Subscription unlock (Pro) for unlimited captions

### 👑 Pro Features
- Unlimited caption generation
- Advanced hashtag suggestions
- Bio generator
- Save favorite captions
- No ads
- Faster AI response

---

## 🏗 Tech Stack

### Frontend
- Flutter (Android + iOS)
- Riverpod (state management)
- Material Design 3

### Backend
- Node.js + Express
- Railway deployment (or any cloud provider)
- Firebase Admin SDK for authentication and Firestore
- OpenAI API integration

### Database
- Firebase Firestore
- Tracks users, daily limits, subscriptions

### Payments & Ads
- Google Play Billing (Android)
- Apple App Store Billing (iOS)
- Google AdMob (optional)

---

## 📂 Project Structure


lib/
│
├── core/
│ ├── constants/
│ │ └── app_constants.dart
│ ├── theme/
│ │ └── app_theme.dart
│ └── utils/
│ ├── env.dart
│ └── helpers.dart
│
├── features/
│ ├── auth/
│ │ └── auth_page.dart
│ │
│ ├── home/
│ │ └── home_page.dart
│ │
│ ├── generate/
│ │ ├── generate_page.dart
│ │ └── caption_card.dart
│ │
│ └── subscription/
│ └── subscription_page.dart
│
├── models/
│ └── caption_model.dart
│
├── services/
│ ├── ai_service.dart
│ ├── auth_service.dart
│ └── subscription_service.dart
│
├── providers/
│ ├── auth_provider.dart
│ ├── caption_provider.dart
│ └── subscription_provider.dart
│
└── main.dart


---

## 🔧 Requirements

### 1️⃣ Software
- Flutter SDK ≥ 3.11.0
- Dart SDK
- Android Studio or VS Code
- Android SDK / Xcode
- Git
- Firebase CLI (optional)

### 2️⃣ Accounts
- Firebase Account
- OpenAI API Account
- Google Play Console / Apple Developer Account
- Google AdMob Account (optional)

---

## ⚙️ Setup Instructions

### Step 1 — Clone Repository

```bash
git clone https://github.com/yourusername/AI-Instagram-Caption-Generator.git
cd AI-Instagram-Caption-Generator
Step 2 — Install Dependencies
flutter pub get
Step 3 — Configure Firebase

Create a Firebase project

Add Android & iOS apps

Download google-services.json (Android) and GoogleService-Info.plist (iOS)

Place in:

android/app/
ios/Runner/

Enable:

Authentication (Email + Google)

Firestore Database

Step 4 — Add OpenAI API Key

Create .env:

OPENAI_API_KEY=your_openai_api_key_here

Never commit your API key publicly.

Step 5 — Run App
flutter run
🔐 Security Best Practices

Never expose API keys

Use Firebase rules for Firestore security

Validate subscription status before allowing unlimited access

Implement daily usage limit server-side

💳 Monetization Model
Free Version

3 captions per day

Ads enabled

Pro Version ($6.99/month)

Unlimited captions

Advanced hashtags

Bio generator

No ads

🚀 Future Improvements

TikTok caption generator

Reel hook generator

Content calendar

Multi-language support

Analytics dashboard

Web version

🧠 Target Users

Instagram Influencers

Content Creators

Small Businesses

Social Media Managers

Entrepreneurs

📜 License

This project is free for educational and commercial use. Modify and scale as needed.

👑 Author

Built by KingFillari
Future CEO & Tech Founder


---

=======
# ai_caption_generator

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
>>>>>>> c5d350519ac8b08e10e728c757379a2ae8415a6d
