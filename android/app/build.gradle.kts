plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    // Le plugin Gradle Flutter doit être appliqué après ceux d'Android et Kotlin.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "bf.transbooking.transbooking_bf"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "30.0.15729638"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        applicationId = "bf.transbooking.transbooking_bf"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Signature de debug pour l'instant : permet `flutter run --release`.
            // À remplacer par une vraie clé avant publication.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

// Kotlin doit cibler le même bytecode que Java (17), sinon Gradle échoue sur
// « Inconsistent JVM-target compatibility ».
kotlin {
    compilerOptions {
        jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
    }
}

flutter {
    source = "../.."
}
