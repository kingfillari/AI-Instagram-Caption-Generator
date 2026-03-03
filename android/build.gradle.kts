// Top-level build.gradle.kts for project (Flutter + Firebase)
plugins {
    id("com.android.application") version "8.3.0" apply false
    id("org.jetbrains.kotlin.android") version "1.9.0" apply false
    id("com.google.gms.google-services") version "4.4.4" apply false
}

// ❌ REMOVE repositories from here!
// buildscript { ... } block is not needed for pluginManagement
// allprojects { ... } block is not needed in Gradle 8+ Kotlin DSL

tasks.register("clean", Delete::class) {
    delete(rootProject.buildDir)
}