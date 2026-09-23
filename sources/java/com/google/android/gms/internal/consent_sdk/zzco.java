package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzco {

    /* renamed from: a, reason: collision with root package name */
    public final Application f9987a;
    public zzha b;
    public zzgw d;

    /* renamed from: c, reason: collision with root package name */
    public zzgt f9988c = null;
    public String e = null;

    public zzco(Application application) {
        this.f9987a = application;
    }

    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.android.gms.internal.consent_sdk.zzdk, java.lang.Object] */
    public final zzif a(int i, String str, long j) {
        Bundle bundle;
        long j2;
        zzid m = zzif.m();
        zzgu m2 = zzhc.m();
        zzgx m3 = zzgy.m();
        m3.e();
        zzgy.p((zzgy) m3.f, i);
        if (str != null) {
            m3.e();
            zzgy.n((zzgy) m3.f, str);
        }
        if (j > 0) {
            m3.e();
            zzgy.o((zzgy) m3.f, j);
        }
        zzgy zzgyVar = (zzgy) m3.c();
        m2.e();
        zzhc.r((zzhc) m2.f, zzgyVar);
        String str2 = this.e;
        PackageInfo packageInfo = null;
        Application application = this.f9987a;
        if (str2 == null) {
            try {
                bundle = application.getPackageManager().getApplicationInfo(application.getPackageName(), Uuid.SIZE_BITS).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                this.e = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            }
            if (TextUtils.isEmpty(this.e)) {
                Log.w("UserMessagingPlatform", "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
            str2 = this.e;
        }
        if (str2 != null) {
            m2.e();
            zzhc.o((zzhc) m2.f, str2);
        }
        zzha zzhaVar = this.b;
        if (zzhaVar == null) {
            zzgz m4 = zzha.m();
            m4.e();
            zzha.n((zzha) m4.f);
            zzhaVar = (zzha) m4.c();
            this.b = zzhaVar;
        }
        m2.e();
        zzhc.s((zzhc) m2.f, zzhaVar);
        zzgw zzgwVar = this.d;
        if (zzgwVar == null) {
            zzgv m5 = zzgw.m();
            int i2 = Build.VERSION.SDK_INT;
            m5.e();
            zzgw.n((zzgw) m5.f, i2);
            String str3 = Build.MODEL;
            m5.e();
            zzgw.o((zzgw) m5.f);
            m5.e();
            zzgw.q((zzgw) m5.f);
            String str4 = Build.VERSION.RELEASE;
            m5.e();
            zzgw.p((zzgw) m5.f);
            zzgwVar = (zzgw) m5.c();
            this.d = zzgwVar;
        }
        m2.e();
        zzhc.q((zzhc) m2.f, zzgwVar);
        zzgt zzgtVar = this.f9988c;
        if (zzgtVar == null) {
            String packageName = application.getPackageName();
            try {
                packageInfo = application.getPackageManager().getPackageInfo(packageName, 0);
            } catch (PackageManager.NameNotFoundException unused2) {
            }
            if (packageInfo != null) {
                zzgs m6 = zzgt.m();
                if (Build.VERSION.SDK_INT >= 28) {
                    j2 = packageInfo.getLongVersionCode();
                } else {
                    j2 = packageInfo.versionCode;
                }
                String l = Long.toString(j2);
                m6.e();
                zzgt.o((zzgt) m6.f, l);
                m6.e();
                zzgt.n((zzgt) m6.f, packageName);
                this.f9988c = (zzgt) m6.c();
            }
            zzgtVar = this.f9988c;
        }
        if (zzgtVar != null) {
            m2.e();
            zzhc.p((zzhc) m2.f, zzgtVar);
        }
        String string = PreferenceManager.getDefaultSharedPreferences(application).getString("UMP_eids", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (string != null && !string.isEmpty()) {
            Iterator it = new zzdm(new zzdo(new Object()), string).iterator();
            while (true) {
                zzdc zzdcVar = (zzdc) it;
                if (!zzdcVar.hasNext()) {
                    break;
                }
                String str5 = (String) zzdcVar.next();
                m2.e();
                zzhc.n((zzhc) m2.f, str5);
            }
        }
        zzhc zzhcVar = (zzhc) m2.c();
        m.e();
        zzif.n((zzif) m.f, zzhcVar);
        long currentTimeMillis = System.currentTimeMillis();
        m.e();
        zzif.o((zzif) m.f, currentTimeMillis);
        return (zzif) m.c();
    }
}
