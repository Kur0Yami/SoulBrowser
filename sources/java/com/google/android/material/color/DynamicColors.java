package com.google.android.material.color;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import j$.util.DesugarCollections;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class DynamicColors {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f11732a;
    public static final Map b;

    /* renamed from: com.google.android.material.color.DynamicColors$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements DeviceSupportCondition {
        @Override // com.google.android.material.color.DynamicColors.DeviceSupportCondition
        public final boolean a() {
            return true;
        }
    }

    /* renamed from: com.google.android.material.color.DynamicColors$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements DeviceSupportCondition {

        /* renamed from: a, reason: collision with root package name */
        public Long f11733a;

        @Override // com.google.android.material.color.DynamicColors.DeviceSupportCondition
        public final boolean a() {
            if (this.f11733a == null) {
                try {
                    Method declaredMethod = Build.class.getDeclaredMethod("getLong", String.class);
                    declaredMethod.setAccessible(true);
                    Long l = (Long) declaredMethod.invoke(null, "ro.build.version.oneui");
                    l.longValue();
                    this.f11733a = l;
                } catch (Exception unused) {
                    this.f11733a = -1L;
                }
            }
            if (this.f11733a.longValue() < 40100) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface DeviceSupportCondition {
        boolean a();
    }

    /* loaded from: classes3.dex */
    public static class DynamicColorsActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPreCreated(Activity activity, Bundle bundle) {
            DynamicColors.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    /* loaded from: classes3.dex */
    public interface OnAppliedCallback {
    }

    /* loaded from: classes3.dex */
    public interface Precondition {
    }

    static {
        Object obj = new Object();
        Object obj2 = new Object();
        HashMap hashMap = new HashMap();
        hashMap.put("fcnt", obj);
        hashMap.put("google", obj);
        hashMap.put("hmd global", obj);
        hashMap.put("infinix", obj);
        hashMap.put("infinix mobility limited", obj);
        hashMap.put("itel", obj);
        hashMap.put("kyocera", obj);
        hashMap.put("lenovo", obj);
        hashMap.put("lge", obj);
        hashMap.put("meizu", obj);
        hashMap.put("motorola", obj);
        hashMap.put("nothing", obj);
        hashMap.put("oneplus", obj);
        hashMap.put("oppo", obj);
        hashMap.put("realme", obj);
        hashMap.put("robolectric", obj);
        hashMap.put("samsung", obj2);
        hashMap.put("sharp", obj);
        hashMap.put("shift", obj);
        hashMap.put("sony", obj);
        hashMap.put("tcl", obj);
        hashMap.put("tecno", obj);
        hashMap.put("tecno mobile limited", obj);
        hashMap.put("vivo", obj);
        hashMap.put("wingtech", obj);
        hashMap.put("xiaomi", obj);
        f11732a = DesugarCollections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("asus", obj);
        hashMap2.put("jio", obj);
        b = DesugarCollections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (androidx.core.os.BuildCompat.a("Tiramisu") == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.app.Activity r2) {
        /*
            int r2 = android.os.Build.VERSION.SDK_INT
            r0 = 31
            if (r2 >= r0) goto L7
            goto L48
        L7:
            int r0 = androidx.core.os.BuildCompat.f702a
            r0 = 33
            if (r2 >= r0) goto L49
            r0 = 32
            if (r2 < r0) goto L20
            java.lang.String r2 = android.os.Build.VERSION.CODENAME
            java.lang.String r0 = "CODENAME"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            java.lang.String r2 = "Tiramisu"
            boolean r2 = androidx.core.os.BuildCompat.a(r2)
            if (r2 != 0) goto L49
        L20:
            java.lang.String r2 = android.os.Build.MANUFACTURER
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r2 = r2.toLowerCase(r0)
            java.util.Map r1 = com.google.android.material.color.DynamicColors.f11732a
            java.lang.Object r2 = r1.get(r2)
            com.google.android.material.color.DynamicColors$DeviceSupportCondition r2 = (com.google.android.material.color.DynamicColors.DeviceSupportCondition) r2
            if (r2 != 0) goto L40
            java.lang.String r2 = android.os.Build.BRAND
            java.lang.String r2 = r2.toLowerCase(r0)
            java.util.Map r0 = com.google.android.material.color.DynamicColors.b
            java.lang.Object r2 = r0.get(r2)
            com.google.android.material.color.DynamicColors$DeviceSupportCondition r2 = (com.google.android.material.color.DynamicColors.DeviceSupportCondition) r2
        L40:
            if (r2 == 0) goto L48
            boolean r2 = r2.a()
            if (r2 != 0) goto L49
        L48:
            return
        L49:
            r2 = 0
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.color.DynamicColors.a(android.app.Activity):void");
    }
}
