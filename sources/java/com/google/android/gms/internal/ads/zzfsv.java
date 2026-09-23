package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.os.Build;
import android.webkit.WebView;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class zzfsv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7634a;

    /* renamed from: c, reason: collision with root package name */
    public long f7635c = System.nanoTime();
    public int d = 1;
    public zzftx b = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzftx, java.lang.ref.WeakReference] */
    public zzfsv(String str) {
        this.f7634a = str;
    }

    public void a() {
    }

    public void b() {
        this.b.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebView c() {
        return (WebView) this.b.get();
    }

    public void d(zzfrl zzfrlVar, zzfrj zzfrjVar) {
        e(zzfrlVar, zzfrjVar, null);
    }

    public final void e(zzfrl zzfrlVar, zzfrj zzfrjVar, JSONObject jSONObject) {
        String str = zzfrlVar.g;
        JSONObject jSONObject2 = new JSONObject();
        zzftb.b(jSONObject2, "environment", "app");
        zzftb.b(jSONObject2, "adSessionType", zzfrjVar.g);
        JSONObject jSONObject3 = new JSONObject();
        String str2 = Build.MANUFACTURER;
        String str3 = Build.MODEL;
        zzftb.b(jSONObject3, "deviceType", android.support.v4.media.a.q(new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str3).length()), str2, "; ", str3));
        zzftb.b(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzftb.b(jSONObject3, "os", "Android");
        zzftb.b(jSONObject2, "deviceInfo", jSONObject3);
        UiModeManager uiModeManager = zzfta.f7639a;
        zzfrn zzfrnVar = zzfrn.OTHER;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType != 1) {
                if (currentModeType == 4) {
                    zzfrnVar = zzfrn.CTV;
                }
            } else {
                zzfrnVar = zzfrn.MOBILE;
            }
        }
        zzftb.b(jSONObject2, "deviceCategory", zzfrnVar.f7600c);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzftb.b(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfrv zzfrvVar = zzfrjVar.f7594a;
        zzftb.b(jSONObject4, "partnerName", zzfrvVar.f7608a);
        zzftb.b(jSONObject4, "partnerVersion", zzfrvVar.b);
        zzftb.b(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzftb.b(jSONObject5, "libraryVersion", "1.5.2-google_20241009");
        zzftb.b(jSONObject5, "appId", zzfsk.b.f7623a.getApplicationContext().getPackageName());
        zzftb.b(jSONObject2, "app", jSONObject5);
        String str4 = zzfrjVar.f;
        if (str4 != null) {
            zzftb.b(jSONObject2, "contentUrl", str4);
        }
        String str5 = zzfrjVar.e;
        if (str5 != null) {
            zzftb.b(jSONObject2, "customReferenceData", str5);
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = DesugarCollections.unmodifiableList(zzfrjVar.f7595c).iterator();
        if (!it.hasNext()) {
            zzfsm.f7625a.a(c(), "startSession", str, jSONObject2, jSONObject6, jSONObject);
        } else {
            throw null;
        }
    }

    public final void f(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        zzftb.b(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        zzfsm.f7625a.a(c(), "setLastActivity", jSONObject);
    }
}
