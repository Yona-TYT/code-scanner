# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

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

# ez-vcard
-keep class ezvcard.* { *; }  # keep all vCard properties (created at runtime)


#ACRA specifics
# Restore some Source file names and restore approximate line numbers in the stack traces,
# otherwise the stack traces are pretty useless
-keepattributes SourceFile,LineNumberTable

# ACRA needs "annotations" so add this...
# Note: This may already be defined in the default "proguard-android-optimize.txt"
# file in the SDK. If it is, then you don't need to duplicate it. See your
# "project.properties" file to get the path to the default "proguard-android-optimize.txt".
-keepattributes *Annotation*

# ACRA loads Plugins using reflection, so we need to keep all Plugin classes
-keep class * implements org.acra.plugins.Plugin {*;}

# ACRA uses enum fields in annotations, so we have to keep those
-keep enum org.acra.** {*;}

-keep class org.acra.ACRA {
    *;
}

# To prevent the MailSenderConfiguration constructor not found from crashing the app.
-keep class org.acra.config.** {*;}

-keepnames class org.acra.config.MailSenderConfiguration  {*;}

-keepnames class org.acra.ReportField {
    *;
}

# keep this otherwise it is removed by ProGuard
-keep public class org.acra.ErrorReporter {
    public java.lang.String putCustomData(java.lang.String,java.lang.String);
    public java.lang.String removeCustomData(java.lang.String);
}

# keep this otherwise it is removed by ProGuard
-keep public class org.acra.ErrorReporter {
    public void handleSilentException(java.lang.Throwable);
}
-dontwarn com.faendir.kotlin.autodsl.DslInspect
-dontwarn com.faendir.kotlin.autodsl.DslMandatory
-dontwarn com.google.auto.service.AutoService -dontwarn com.sun.org.apache.xml.internal.utils.PrefixResolver
-dontwarn java.beans.BeanInfo
-dontwarn java.beans.IndexedPropertyDescriptor
-dontwarn java.beans.IntrospectionException
-dontwarn java.beans.Introspector
-dontwarn java.beans.MethodDescriptor
-dontwarn java.beans.PropertyDescriptor
-dontwarn java.rmi.Remote
-dontwarn java.rmi.RemoteException
-dontwarn java.rmi.server.RemoteObject
-dontwarn java.rmi.server.UnicastRemoteObject
-dontwarn javax.swing.tree.TreeNode
-dontwarn org.apache.xml.utils.PrefixResolver
-dontwarn org.jaxen.BaseXPath
-dontwarn org.jaxen.FunctionContext
-dontwarn org.jaxen.JaxenException
-dontwarn org.jaxen.NamespaceContext
-dontwarn org.jaxen.Navigator
-dontwarn org.jaxen.VariableContext
-dontwarn org.jaxen.XPathFunctionContext
-dontwarn org.jaxen.dom.DocumentNavigator
-dontwarn org.python.core.Py
-dontwarn org.python.core.PyDictionary
-dontwarn org.python.core.PyException
-dontwarn org.python.core.PyFloat
-dontwarn org.python.core.PyInteger
-dontwarn org.python.core.PyLong
-dontwarn org.python.core.PyNone
-dontwarn org.python.core.PyObject
-dontwarn org.python.core.PySequence
-dontwarn org.python.core.PyString
-dontwarn org.python.core.PyStringMap
-dontwarn org.python.core.PySystemState
-dontwarn org.zeroturnaround.javarebel.ClassEventListener
-dontwarn org.zeroturnaround.javarebel.Reloader
-dontwarn org.zeroturnaround.javarebel.ReloaderFactory

