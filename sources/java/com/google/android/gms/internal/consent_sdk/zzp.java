package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentRequestParameters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class zzp {

    /* renamed from: a, reason: collision with root package name */
    public final zzn f10068a;
    public final Activity b;

    /* renamed from: c, reason: collision with root package name */
    public final ConsentDebugSettings f10069c;

    public /* synthetic */ zzp(zzn zznVar, Activity activity, ConsentDebugSettings consentDebugSettings, ConsentRequestParameters consentRequestParameters) {
        this.f10068a = zznVar;
        this.b = activity;
        this.f10069c = consentDebugSettings;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.consent_sdk.zzcl, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzch] */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzcf] */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.android.gms.internal.consent_sdk.zzcj, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.google.android.gms.internal.consent_sdk.zzci, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v4, types: [com.google.android.gms.internal.consent_sdk.zzck, java.lang.Object] */
    public static zzcl a(zzp zzpVar) {
        Bundle bundle;
        String str;
        ArrayList arrayList;
        PackageInfo packageInfo;
        long j;
        View decorView;
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        ?? obj = new Object();
        obj.e = Collections.EMPTY_MAP;
        obj.i = Collections.EMPTY_LIST;
        zzn zznVar = zzpVar.f10068a;
        Application application = zznVar.f10052a;
        String str2 = null;
        if (!TextUtils.isEmpty(null)) {
            str = null;
        } else {
            try {
                bundle = application.getPackageManager().getApplicationInfo(application.getPackageName(), Uuid.SIZE_BITS).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                str = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                throw new zzg(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
        }
        obj.f9982a = str;
        if (!zzpVar.f10069c.f12064a) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(zzcg.f9974c);
            arrayList = arrayList2;
        }
        obj.i = arrayList;
        obj.e = zznVar.b.a();
        obj.d = Boolean.FALSE;
        obj.f9983c = Locale.getDefault().toLanguageTag();
        ?? obj2 = new Object();
        obj2.f9976c = 1;
        int i = Build.VERSION.SDK_INT;
        obj2.b = Integer.valueOf(i);
        obj2.f9975a = Build.MODEL;
        obj2.f9976c = 2;
        obj.b = obj2;
        Configuration configuration = application.getResources().getConfiguration();
        application.getResources().getConfiguration();
        ?? obj3 = new Object();
        ?? r6 = Collections.EMPTY_LIST;
        obj3.d = r6;
        obj3.f9979a = Integer.valueOf(configuration.screenWidthDp);
        obj3.b = Integer.valueOf(configuration.screenHeightDp);
        obj3.f9980c = Double.valueOf(application.getResources().getDisplayMetrics().density);
        if (i >= 28) {
            Window window = zzpVar.b.getWindow();
            if (window == null) {
                decorView = null;
            } else {
                decorView = window.getDecorView();
            }
            if (decorView == null) {
                rootWindowInsets = null;
            } else {
                rootWindowInsets = decorView.getRootWindowInsets();
            }
            if (rootWindowInsets == null) {
                displayCutout = null;
            } else {
                displayCutout = rootWindowInsets.getDisplayCutout();
            }
            if (displayCutout != null) {
                displayCutout.getSafeInsetBottom();
                r6 = new ArrayList();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    if (rect != null) {
                        ?? obj4 = new Object();
                        obj4.b = Integer.valueOf(rect.left);
                        obj4.f9978c = Integer.valueOf(rect.right);
                        obj4.f9977a = Integer.valueOf(rect.top);
                        obj4.d = Integer.valueOf(rect.bottom);
                        r6.add(obj4);
                    }
                }
            }
        }
        obj3.d = r6;
        obj.f = obj3;
        try {
            packageInfo = application.getPackageManager().getPackageInfo(application.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        ?? obj5 = new Object();
        obj5.f9972a = application.getPackageName();
        CharSequence applicationLabel = application.getPackageManager().getApplicationLabel(application.getApplicationInfo());
        if (applicationLabel != null) {
            str2 = applicationLabel.toString();
        }
        obj5.b = str2;
        if (packageInfo != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                j = packageInfo.getLongVersionCode();
            } else {
                j = packageInfo.versionCode;
            }
            obj5.f9973c = Long.toString(j);
        }
        obj.g = obj5;
        ?? obj6 = new Object();
        obj6.f9981a = "4.0.0";
        obj.h = obj6;
        return obj;
    }
}
