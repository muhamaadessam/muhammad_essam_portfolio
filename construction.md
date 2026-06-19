# 🏗️ Construction — Muhammad Essam Portfolio

> **Version:** 1.0.0  
> **Platform:** Flutter Web  
> **Live:** [muhamaadessam.github.io](https://muhamaadessam.github.io)

---

## Table of Contents

- [Overview](#overview)
- [Tech Stack](#tech-stack)
- [Architecture](#architecture)
- [Folder Structure](#folder-structure)
- [Features Breakdown](#features-breakdown)
- [Data Flow](#data-flow)
- [State Management](#state-management)
- [Dependency Injection](#dependency-injection)
- [Routing & Navigation](#routing--navigation)
- [Responsive Design](#responsive-design)
- [Firebase Integration](#firebase-integration)
- [Deployment](#deployment)
- [Development Guide](#development-guide)

---

## Overview

A personal portfolio website built entirely with **Flutter Web**, showcasing projects, skills, about-me information, and contact details. The app follows **Clean Architecture** principles with a clear separation into Data, Domain, and Presentation layers per feature module.

---

## Tech Stack

| Category              | Technology                                    |
|-----------------------|-----------------------------------------------|
| **Framework**         | Flutter (SDK ^3.6.1)                          |
| **Language**          | Dart                                          |
| **State Management**  | flutter_bloc (BLoC / Cubit)                   |
| **Routing**           | go_router                                     |
| **Dependency Injection** | get_it                                     |
| **Backend / Database** | Firebase (firebase_core + cloud_firestore)   |
| **Local Storage**     | shared_preferences                            |
| **Error Handling**    | dartz (Either type) + equatable               |
| **HTTP Client**       | http                                          |
| **UI Utilities**      | shimmer, url_launcher                         |
| **Fonts**             | FiraCode-Regular (custom bundled)             |
| **CI/CD**             | GitHub Actions → GitHub Pages                 |

---

## Architecture

The project follows **Clean Architecture**, organized per feature module:

```
┌─────────────────────────────────────────────────┐
│                 Presentation                     │
│  (Screens, Components, Controller/Cubit)         │
├─────────────────────────────────────────────────┤
│                   Domain                         │
│  (Entities, Repository Contracts, Use Cases)     │
├─────────────────────────────────────────────────┤
│                    Data                          │
│  (Models, DataSources, Repository Impl)          │
└─────────────────────────────────────────────────┘
```

### Layer Responsibilities

| Layer            | Responsibility                                                                 |
|------------------|--------------------------------------------------------------------------------|
| **Presentation** | UI widgets, screens, BLoC/Cubit controllers, components                        |
| **Domain**       | Business entities, abstract repository contracts, use case definitions          |
| **Data**         | Data models (JSON mapping), local/remote data sources, repository implementations |
| **Core**         | Shared utilities, constants, error handling, DI setup, responsive helpers       |

### Key Design Decisions

- **`Either<Failure, T>`** — All use cases return `Either` from the `dartz` package for functional error handling, avoiding try/catch scattered across the codebase.
- **`BaseUseCase<T, Parameters>`** — A generic abstract class ensures consistent use case signatures across all features.
- **`Equatable`** — Used for value equality in entities, failures, and state classes.

---

## Folder Structure

```
lib/
├── main.dart                          # App entry point & Firebase init
├── firebase_options.dart              # Auto-generated Firebase config
├── res/                               # Resources (app-level)
├── routes/
│   ├── routes.dart                    # Route path constants
│   └── pages.dart                     # GoRouter configuration
│
├── Core/
│   ├── Error/
│   │   └── failure.dart               # Failure base class (ServerFailure, DatabaseFailure)
│   ├── Network/
│   │   ├── Local/
│   │   │   ├── cache_helper.dart      # SharedPreferences wrapper
│   │   │   └── constant.dart          # Storage key constants (AppStorage)
│   │   └── Remote/                    # (Reserved for remote API clients)
│   ├── components/
│   │   ├── app_responsive.dart        # Mobile/Tablet/Desktop breakpoint widget
│   │   ├── CustomWidgets/             # Reusable custom widgets
│   │   ├── Drawer/                    # App drawer component
│   │   └── SheardComponents/         # Shared UI components (shimmer, 404, etc.)
│   ├── constants/
│   │   ├── colors.dart                # App color palette
│   │   ├── text.dart                  # Text styles & typography
│   │   └── url_launcher.dart          # URL launcher helpers
│   ├── extensions/                    # Dart extension methods
│   ├── services_locator.dart          # GetIt DI registration
│   └── use_cases/
│       └── base_use_cases.dart        # BaseUseCase<T, Parameters> + NoParameters
│
└── Features/
    ├── Home/                          # Landing / hero section
    │   ├── Components/
    │   └── Screens/
    ├── AboutMe/                       # About me + fun facts
    │   ├── Data/
    │   │   ├── DataSource/            # Local & remote data sources
    │   │   ├── Models/
    │   │   └── Repository/
    │   ├── Domain/
    │   │   ├── Entities/
    │   │   ├── Repository/
    │   │   └── UseCases/
    │   └── presentation/
    │       ├── Components/
    │       ├── Screens/
    │       └── controller/            # AboutMeCubit
    ├── Skills/                        # Technical skills showcase
    │   ├── Data/
    │   │   ├── DataSource/            # Local & remote data sources
    │   │   ├── Models/
    │   │   └── Repository/
    │   ├── Domain/
    │   │   ├── Entities/
    │   │   ├── Repository/
    │   │   └── UseCases/
    │   └── Presentation/
    │       ├── Components/
    │       │   └── Sections/          # web_skills_section, etc.
    │       ├── Screens/
    │       └── controller/
    │           └── skills/            # SkillsCubit
    ├── Projects/                      # Portfolio projects gallery
    │   ├── Data/
    │   │   ├── DataSource/
    │   │   ├── Models/
    │   │   └── Repository/
    │   ├── Domain/
    │   │   ├── Entities/
    │   │   ├── Repository/
    │   │   └── UseCases/
    │   └── Presentation/
    │       ├── Components/
    │       ├── Screens/
    │       └── controller/
    │           └── projects/          # ProjectsCubit
    ├── AppBar/                        # Custom app bar
    ├── Contacts/                      # Contact information page
    ├── Profile/                       # Profile section
    └── Footer/                        # Footer component
```

---

## Features Breakdown

### 1. Home (`/`)
The landing page — acts as the hero section introducing the portfolio.

### 2. About Me (`/about-me`)
Displays personal information and **fun facts** fetched from Firebase. Uses `AboutMeCubit` for state management.

### 3. Skills (embedded section)
Showcases technical skills with dedicated sections for web skills and more. Data flows through `SkillsCubit` with both local and remote data sources.

### 4. Projects (`/projects`)
A gallery of portfolio projects loaded from Firebase via `ProjectsCubit`. Includes loading skeleton states with shimmer effects.

### 5. Contacts (`/contacts`)
Displays contact information (email, phone, LinkedIn, GitHub) cached locally from Firebase during app initialization.

### 6. AppBar & Footer
Persistent navigation bar and footer shared across all screens.

---

## Data Flow

```
Firebase (Firestore)
       │
       ▼
RemoteDataSource  ─────────────────────────────────────┐
       │                                                │
       ▼                                                ▼
  Repository (implements Base)              CacheHelper (SharedPrefs)
       │                                                │
       ▼                                                ▼
   UseCase (Either<Failure, T>)             main.dart → getPortfolioData()
       │                                   (pre-fetches user data at boot)
       ▼
   Cubit (emits States)
       │
       ▼
   UI (BlocBuilder / BlocConsumer)
```

### Bootstrap Sequence (`main.dart`)

1. `ServicesLocator().init()` — Registers all dependencies via GetIt
2. `CacheHelper.init()` — Initializes SharedPreferences
3. `usePathUrlStrategy()` — Removes `#` from web URLs
4. `AppPages.initializeRouter()` — Sets up GoRouter
5. `Firebase.initializeApp()` — Connects to Firebase
6. `getPortfolioData()` — Pre-fetches user profile data from Firestore and caches it locally

---

## State Management

**Pattern:** Cubit (from `flutter_bloc`)

All three feature Cubits are provided at the root level via `MultiBlocProvider` in `MyApp`:

| Cubit            | Feature    | Initialization       |
|------------------|------------|----------------------|
| `SkillsCubit`    | Skills     | `..getSkills()`      |
| `AboutMeCubit`   | About Me   | `..init()`           |
| `ProjectsCubit`  | Projects   | `..getProjects()`    |

Each Cubit follows the pattern:
- Calls a **UseCase**
- UseCase calls a **Repository**
- Repository calls a **DataSource** (local or remote)
- Results are wrapped in `Either<Failure, T>`
- Cubit emits appropriate success/error states

---

## Dependency Injection

**Library:** `get_it`  
**Configuration:** `lib/Core/services_locator.dart`

Registration pattern per feature:

```dart
// DataSource (LazySingleton)
sl.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());

// Repository (LazySingleton)
sl.registerLazySingleton<BaseRepository>(() => Repository(sl()));

// UseCase (LazySingleton)
sl.registerLazySingleton(() => UseCase(sl()));

// Cubit (Factory — new instance per provider)
sl.registerFactory(() => FeatureCubit(sl()));
```

> **Note:** Cubits are registered as **Factory** (new instance each time), while DataSources, Repositories, and UseCases are **LazySingleton** (created once, shared).

---

## Routing & Navigation

**Library:** `go_router`  
**Configuration:** `lib/routes/pages.dart`

| Route         | Screen            | Path         |
|---------------|-------------------|--------------|
| Home          | `HomeScreen`      | `/`          |
| Projects      | `ProjectsScreen`  | `/projects`  |
| About Me      | `AboutMeScreen`   | `/about-me`  |
| Contacts      | `ContactsScreen`  | `/contacts`  |
| 404           | `NotFoundScreen`  | (any other)  |

- Uses `usePathUrlStrategy()` to remove hash (`#`) from URLs
- Custom error page builder for 404 handling
- Global `navigatorKey` for programmatic navigation

---

## Responsive Design

**Breakpoints:** Defined in `AppResponsive` widget

| Viewport   | Width         |
|------------|---------------|
| Mobile     | `< 800px`     |
| Tablet     | `800–1199px`  |
| Desktop    | `≥ 1200px`    |

Usage:
```dart
AppResponsive(
  mobile: MobileLayout(),
  tablet: TabletLayout(),
  desktop: DesktopLayout(),
)
```

Static helpers are also available:
```dart
if (AppResponsive.isMobile(context)) { ... }
if (AppResponsive.isTablet(context)) { ... }
if (AppResponsive.isDesktop(context)) { ... }
```

---

## Firebase Integration

| Service            | Usage                                           |
|--------------------|------------------------------------------------|
| **Firestore**      | Portfolio data, skills, projects, fun facts     |
| **Firebase Core**  | App initialization                              |

### Firestore Structure

```
portfolio/
└── user_data (document)
    ├── objective: String
    ├── company: String
    ├── phone: String
    ├── email: String
    ├── name: String
    ├── linkedin: String
    ├── github: String
    ├── jop_title: String
    └── image: String
```

> User profile data is fetched once at startup and cached in `SharedPreferences` via `CacheHelper`.

---

## Deployment

### GitHub Actions CI/CD

**Workflow:** `.github/workflows/deploy.yml`

**Trigger:** Push to `main` branch

**Pipeline:**
1. Checkout repository
2. Setup Flutter `3.41.7`
3. `flutter pub get`
4. `flutter build web --release`
5. Force-push `build/web` to `muhamaadessam.github.io` repo

### Manual Deployment

A local `deploy.sh` script is also available:

```bash
./deploy.sh
```

This runs `flutter pub get` → `flutter build web` → force-pushes to GitHub Pages via SSH.

---

## Development Guide

### Prerequisites

- Flutter SDK `^3.6.1`
- Dart SDK (bundled with Flutter)
- Firebase CLI (for configuration)
- Git

### Setup

```bash
# Clone the repository
git clone https://github.com/muhamaadessam/muhammad_essam_portfolio.git
cd muhammad_essam_portfolio

# Install dependencies
flutter pub get

# Run locally
flutter run -d chrome
```

### Adding a New Feature

Follow the Clean Architecture pattern:

1. **Create the folder structure:**
   ```
   lib/Features/NewFeature/
   ├── Data/
   │   ├── DataSource/
   │   ├── Models/
   │   └── Repository/
   ├── Domain/
   │   ├── Entities/
   │   ├── Repository/
   │   └── UseCases/
   └── Presentation/
       ├── Components/
       ├── Screens/
       └── controller/
   ```

2. **Define the Entity** in `Domain/Entities/`

3. **Create the abstract Repository** in `Domain/Repository/`

4. **Implement the UseCase** extending `BaseUseCase<T, Parameters>`

5. **Build the DataSource** (local/remote) in `Data/DataSource/`

6. **Implement the Repository** in `Data/Repository/`

7. **Create the Cubit** in `Presentation/controller/`

8. **Register in DI** — Add registrations in `services_locator.dart`

9. **Add the route** in `routes.dart` and `pages.dart`

10. **Provide the Cubit** in `MultiBlocProvider` in `main.dart`

### Key Conventions

- **Responsive layouts:** Always use `AppResponsive` for layouts that vary across screen sizes
- **Error handling:** Return `Either<Failure, T>` from repositories — never throw raw exceptions
- **Loading states:** Use `shimmer` package for skeleton loading indicators
- **URL strategy:** Path-based URLs (no hash `#`) for SEO-friendly web routing
- **Caching:** User profile data is cached locally via `SharedPreferences` to reduce Firestore reads

---

## Assets

```
assets/
├── images/       # General images
├── icons/        # Icon assets
├── json/         # JSON data files
├── pdfs/         # Downloadable PDFs (resume, etc.)
├── logos/        # Brand logos (essamLogo.png, etc.)
└── fonts/        # Custom fonts (FiraCode-Regular.ttf)
```

---

> _Last updated: June 2026_
