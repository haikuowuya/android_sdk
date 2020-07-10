# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\Android\Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#-skipnonpubliclibraryclasses

#混淆优化，同时不主动合并代码
-optimizationpasses 5
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-keepattributes LineNumberTable,InnerClasses
#忽略警告
-ignorewarnings

# 可以直接写在一行
-keepattributes Signature, Deprecated, *Annotation*, EnclosingMethod
-dontwarn okio.**
-dontwarn com.squareup.okhttp.**
-dontwarn okhttp3.**
-dontwarn javax.annotation.**
-dontwarn com.android.volley.toolbox.**
-dontwarn android.support.v4.**
-dontwarn android.support.v7.**
-dontwarn io.bugtags.**
-dontwarn androidx.**


-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.ContentProvider
-keep public class com.anythink.china.common.NotificationBroadcaseReceiver
-keep public class com.anythink.china.common.ApkFileProvider


-keep public class com.anythink.banner.api.*
-keepclassmembers class com.anythink.banner.api.* {
   public *;
}

-keep public class com.anythink.nativead.api.**
-keepclassmembers class com.anythink.nativead.api.** {
   public *;
}

-keep public class com.anythink.core.activity.*
-keepclassmembers class com.anythink.core.activity.* {
   public *;
}

-keep public class com.anythink.nativead.api.**
-keepclassmembers class com.anythink.nativead.api.** {
   public *;
}

-keep public class com.anythink.nativead.banner.api.**
-keepclassmembers class com.anythink.nativead.banner.api.** {
   public *;
}

-keep public class com.anythink.nativead.splash.api.**
-keepclassmembers class com.anythink.nativead.splash.api.** {
   public *;
}

-keep public class com.anythink.nativead.views.**
-keepclassmembers class com.anythink.nativead.views.** {
   public *;
}

-keep public class com.anythink.nativead.unitgroup.api.**
-keepclassmembers class com.anythink.nativead.unitgroup.api.** {
   public *;
}

-keep public class com.anythink.rewardvideo.api.**
-keepclassmembers class com.anythink.rewardvideo.api.** {
   public *;
}

-keep public class com.anythink.rewardvideo.api.**
-keepclassmembers class com.anythink.rewardvideo.api.** {
   public *;
}

-keep public class com.anythink.banner.api.**
-keepclassmembers class com.anythink.banner.api.** {
   public *;
}

-keep public class com.anythink.banner.api.**
-keepclassmembers class com.anythink.banner.api.** {
   public *;
}

-keep public class com.anythink.interstitial.api.**
-keepclassmembers class com.anythink.interstitial.api.** {
   public *;
}

-keep public class com.anythink.interstitial.api.**
-keepclassmembers class com.anythink.interstitial.api.** {
   public *;
}

-keep public class com.anythink.splashad.api.**
-keepclassmembers class com.anythink.splashad.api.** {
   public *;
}

-keep public class com.anythink.splashad.api.**
-keepclassmembers class com.anythink.splashad.api.** {
   public *;
}

-keep public class com.anythink.network.**
-keepclassmembers class com.anythink.network.** {
   public *;
}

-keep public class com.anythink.hb.**
-keepclassmembers class com.anythink.hb.** {
   public *;
}

-keep public class com.**.api.** { *;}
-keepclassmembers class com.**.api.** {
  *;
}

-keep class com.anythink.china.api.**{ *;}

-keep public class android.support.v4.**
-keep public class android.support.v7.**

-keep public class androidx.**

-keepclassmembers class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

#保证是独立的jar,没有任何项目引用,如果不写就会认为我们所有的代码是无用的,从而把所有的代码压缩掉,导出一个空的jar
-dontshrink
#保护泛型
-keepattributes Signature

-printmapping ..//outputs/mapping.txt


#引入依赖包rt.jar（jdk路径）
#-libraryjars //Library//Java//JavaVirtualMachines//jdk1.7.0_67.jdk//Contents//Home//jre//lib//rt.jar
#引入依赖包android.jar(android SDK路径)
#-libraryjars //Users//mengfei//developer//adt-bundle-mac-x86_64-20131030//sdk//platforms//android-22//android.jar