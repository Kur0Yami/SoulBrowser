package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import androidx.browser.customtabs.CustomTabsCallback;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbhm extends CustomTabsCallback {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f4679a = new AtomicBoolean(false);
    public final List b = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.lb)).split(","));

    /* renamed from: c, reason: collision with root package name */
    public final zzbhp f4680c;
    public final CustomTabsCallback d;
    public final zzdxj e;

    public zzbhm(zzbhp zzbhpVar, CustomTabsCallback customTabsCallback, zzdxj zzdxjVar) {
        this.d = customTabsCallback;
        this.f4680c = zzbhpVar;
        this.e = zzdxjVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void a(String str, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.a(str, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final Bundle b(String str, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            return customTabsCallback.b(str, bundle);
        }
        return null;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void d(int i, int i2, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.d(i, i2, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void e(Bundle bundle) {
        this.f4679a.set(false);
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.e(bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void g(int i, Bundle bundle) {
        this.f4679a.set(false);
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.g(i, bundle);
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        final zzbhp zzbhpVar = this.f4680c;
        zzbhpVar.j = currentTimeMillis;
        List list = this.b;
        if (list != null && list.contains(String.valueOf(i))) {
            zzbhpVar.i = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ib)).intValue();
            if (zzbhpVar.e == null) {
                zzbhpVar.e = new Runnable() { // from class: com.google.android.gms.internal.ads.zzbho
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzbhp.this.d();
                    }
                };
            }
            zzbhpVar.d();
            com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zze(this.e, null, "pact_action", new Pair("pe", "pact_reqpmc"));
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void h(String str, Bundle bundle) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("gpa", -1) == 0) {
                this.f4679a.set(true);
                com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zze(this.e, null, "pact_action", new Pair("pe", "pact_con"));
                this.f4680c.a(jSONObject.getString("paw_id"));
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Message is not in JSON format: ", e);
        }
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.h(str, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void i(int i, Uri uri, boolean z, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.i(i, uri, z, bundle);
        }
    }
}
