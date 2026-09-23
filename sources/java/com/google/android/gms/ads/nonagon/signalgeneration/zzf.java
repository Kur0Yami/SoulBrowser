package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.WebViewFeatureInternal;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzgtn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3276a;
    public final ApplicationInfo b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3277c;
    public final VersionInfoParcel d;
    public final JSONObject e = new JSONObject();
    public final AtomicBoolean f = new AtomicBoolean(false);

    public zzf(Context context, ArrayList arrayList, VersionInfoParcel versionInfoParcel) {
        this.f3276a = context;
        this.b = context.getApplicationInfo();
        this.f3277c = arrayList;
        this.d = versionInfoParcel;
    }

    public final void zza(@Nullable WebView webView) {
        if (!this.f.getAndSet(true)) {
            PackageInfo packageInfo = null;
            ApplicationInfo applicationInfo = this.b;
            if (applicationInfo != null) {
                try {
                    packageInfo = Wrappers.packageManager(this.f3276a).getPackageInfo(applicationInfo.packageName, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            JSONObject jSONObject = this.e;
            if (packageInfo != null) {
                try {
                    jSONObject.put("vc", packageInfo.versionCode);
                    jSONObject.put("vnm", packageInfo.versionName);
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("PawAppSignalGenerator.initialize", e);
                }
            }
            if (applicationInfo != null) {
                jSONObject.put("pn", applicationInfo.packageName);
            }
            ArrayList arrayList = this.f3277c;
            ArrayList arrayList2 = new ArrayList();
            for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.gb)).split(",", -1)) {
                if (arrayList.contains(str)) {
                    arrayList2.add(str);
                }
            }
            jSONObject.put("eid", arrayList2);
            jSONObject.put("js", this.d.afmaVersion);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj != null) {
                    jSONObject.put(next, Base64.encodeToString(obj.toString().getBytes(), 2));
                }
            }
            if (((Boolean) zzbip.b.c()).booleanValue() && WebViewFeature.a("DOCUMENT_START_SCRIPT") && webView != null) {
                String format = String.format(Locale.getDefault(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.fb), zzb());
                zzgtn q = zzgtn.q();
                boolean z = WebViewCompat.f1792a;
                if (WebViewFeatureInternal.k.d()) {
                    return;
                }
                throw WebViewFeatureInternal.a();
            }
        }
    }

    public final JSONObject zzb() {
        if (!this.f.get()) {
            zza(null);
        }
        return this.e;
    }
}
