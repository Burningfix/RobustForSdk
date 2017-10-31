# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\AndroidSdk/tools/proguard/proguard-android.txt
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

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


# ����robust���޸�
-keep class com.meituan.robust.**{*;}

-keep class com.orhanobut.logger.**{*;}

# �����༰�����г�Ա��������
-keep class com.oubowu.sdk.** {*;}

-keep class com.oubowu.secret.** {*;}

#---------------------------------------------------------------------------
-ignorewarnings

-keepattributes Signature

# ������BmobSDK
-keep class cn.bmob.** {*;}

-keep class cn.bmob.v3.** {*;}

# ��֤�̳���BmobObject��BmobUser���JavaBean��������
-keep class * extends cn.bmob.v3.BmobObject {
    *;
}

# gson
-keep class com.google.gson.** { *; }
-keep class com.google.gson.JsonObject { *; }

# �����ʹ����okhttp��okio�İ�����������»�������
-dontwarn com.squareup.okhttp.**
-keep class com.squareup.okhttp.** { *;}
-keep interface com.squareup.okhttp.** { *; }
-dontwarn okio.**

# �������Ҫ����6.0ϵͳ���벻Ҫ����org.apache.http.legacy.jar
 -dontwarn android.net.compatibility.**
 -dontwarn android.net.http.**
 -dontwarn com.android.internal.http.multipart.**
 -dontwarn org.apache.commons.**
 -dontwarn org.apache.http.**
 -keep class android.net.compatibility.**{*;}
 -keep class android.net.http.**{*;}
 -keep class com.android.internal.http.multipart.**{*;}
 -keep class org.apache.commons.**{*;}
 -keep class org.apache.http.**{*;}

 # rxjava
 -dontwarn sun.misc.**
 -keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
  long producerIndex;
  long consumerIndex;
 }
 -keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
  rx.internal.util.atomic.LinkedQueueNode producerNode;
 }
 -keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
  rx.internal.util.atomic.LinkedQueueNode consumerNode;
 }

 -keep class rx.**{*;}

 -keep class okio.**{*;}


#---------------------------------------------------------------------------


