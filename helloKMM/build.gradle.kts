import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework

plugins {
    kotlin("multiplatform")
    id("com.android.library")
}

kotlin {
    val xcf = XCFramework()
    android()
    ios {
        binaries.framework {
            baseName = "helloKMM"
            version = "1.0.2"
            xcf.add(this)
        }
    }

    sourceSets {
        val commonMain by getting
        val androidMain by getting
        val iosMain by getting
    }
}

android {
    compileSdk = 30
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")
    defaultConfig {
        minSdk = 19
        targetSdk = 30
    }
}
