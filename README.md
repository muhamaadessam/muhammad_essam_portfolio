# Muhammad Essam — Portfolio (Flutter Web)

A personal portfolio built entirely with **Flutter Web**, structured with **Clean Architecture** and **Cubit (flutter_bloc)**.

> **Status:** This is the previous version of my portfolio. The current site, [muhammadessam.me](https://muhammadessam.me), is a separate Next.js project in [muhamaadessam.github.io](https://github.com/muhamaadessam/muhamaadessam.github.io).
> This repository stays public as a reference for how I structure a Flutter app.

## What this project shows

- **Clean Architecture per feature:** each feature (`AboutMe`, `Skills`, `Projects`) has its own `Data`, `Domain`, and `Presentation` layers.
- **Functional error handling:** every use case returns `Either<Failure, T>` (`dartz`), so failures are handled in one place instead of scattered `try/catch`.
- **One use case contract:** `BaseUseCase<T, Parameters>` keeps use case signatures consistent across features.
- **Dependency injection with `get_it`:** data sources, repositories, and use cases are lazy singletons; Cubits are factories.
- **Web routing with `go_router`:** path-based URLs (no `#`) and a custom 404 page.
- **Responsive layout:** one `AppResponsive` widget with mobile (< 800px), tablet (800–1199px), and desktop (≥ 1200px) breakpoints.
- **Firestore + local cache:** profile data is fetched once at startup and cached with `shared_preferences` to reduce reads.

## Architecture

```
Firestore
   │
   ▼
RemoteDataSource ──► Repository ──► UseCase ──► Cubit ──► UI
                      (implements    (Either<     (emits
                       contract)      Failure,T>)  states)
```

```
lib/
├── Core/          # DI, errors, base use case, responsive helpers, shared widgets
├── Features/
│   ├── AboutMe/   # Data / Domain / Presentation
│   ├── Skills/    # Data / Domain / Presentation
│   ├── Projects/  # Data / Domain / Presentation
│   └── Home, AppBar, Contacts, Footer, Profile
└── routes/        # go_router config
```

Full technical documentation — layer responsibilities, DI registration, bootstrap sequence, Firestore schema, and a step-by-step guide for adding a feature — is in **[construction.md](construction.md)**.

## Tech stack

| Area | Tools |
|---|---|
| Framework | Flutter (Dart SDK ^3.6.1) |
| State management | flutter_bloc (Cubit) |
| Routing | go_router |
| Dependency injection | get_it |
| Data | Cloud Firestore, shared_preferences |
| Error handling | dartz, equatable |
| UI | shimmer, url_launcher |
| CI/CD | GitHub Actions |

## Run locally

```bash
git clone https://github.com/muhamaadessam/muhammad_essam_portfolio.git
cd muhammad_essam_portfolio
flutter pub get
flutter run -d chrome
```

The app reads its content from a Firebase project. To run it against your own data, generate your own `lib/firebase_options.dart` with the FlutterFire CLI and create the `portfolio/user_data` document described in [construction.md](construction.md#firebase-integration).

## Deployment

[`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) builds the web app and publishes `build/web` to GitHub Pages. It runs **manually only** (`workflow_dispatch`), because the old Pages repository now hosts the new Next.js site.

## Contact

- Portfolio: [muhammadessam.me](https://muhammadessam.me)
- LinkedIn: [muhammadessam159](https://www.linkedin.com/in/muhammadessam159/)
- Email: muhammad159e@gmail.com
