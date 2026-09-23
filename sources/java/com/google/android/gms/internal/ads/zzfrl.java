package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.os.Handler;
import android.provider.Settings;
import android.view.View;
import android.webkit.WebView;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfrl extends zzfrh {

    /* renamed from: a, reason: collision with root package name */
    public final zzfrj f7597a;
    public zzfsv d;
    public final String g;
    public final zzfsj b = new zzfsj();
    public boolean e = false;
    public boolean f = false;

    /* renamed from: c, reason: collision with root package name */
    public zzftw f7598c = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzftw, java.lang.ref.WeakReference] */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.google.android.gms.internal.ads.zzftx, java.lang.ref.WeakReference] */
    public zzfrl(zzfri zzfriVar, zzfrj zzfrjVar, String str) {
        this.f7597a = zzfrjVar;
        this.g = str;
        zzfrk zzfrkVar = zzfrjVar.g;
        if (zzfrkVar != zzfrk.HTML && zzfrkVar != zzfrk.JAVASCRIPT) {
            this.d = new zzfsz(str, DesugarCollections.unmodifiableMap(zzfrjVar.d));
        } else {
            WebView webView = zzfrjVar.b;
            zzfsv zzfsvVar = new zzfsv(str);
            if (!webView.getSettings().getJavaScriptEnabled()) {
                webView.getSettings().setJavaScriptEnabled(true);
            }
            zzfsvVar.b = new WeakReference(webView);
            this.d = zzfsvVar;
        }
        this.d.a();
        zzfsf.f7617c.f7618a.add(this);
        zzfsv zzfsvVar2 = this.d;
        WebView c2 = zzfsvVar2.c();
        String str2 = zzfsvVar2.f7634a;
        JSONObject jSONObject = new JSONObject();
        zzftb.b(jSONObject, "impressionOwner", zzfriVar.f7592a);
        zzftb.b(jSONObject, "mediaEventsOwner", zzfriVar.b);
        zzftb.b(jSONObject, "creativeType", zzfriVar.d);
        zzftb.b(jSONObject, "impressionType", zzfriVar.e);
        zzftb.b(jSONObject, "isolateVerificationScripts", Boolean.valueOf(zzfriVar.f7593c));
        zzfsm.f7625a.a(c2, "init", jSONObject, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.zzftw, java.lang.ref.WeakReference] */
    @Override // com.google.android.gms.internal.ads.zzfrh
    public final void a(View view) {
        if (!this.f && ((View) this.f7598c.get()) != view) {
            this.f7598c = new WeakReference(view);
            zzfsv zzfsvVar = this.d;
            zzfsvVar.getClass();
            zzfsvVar.f7635c = System.nanoTime();
            zzfsvVar.d = 1;
            Collection<zzfrl> unmodifiableCollection = DesugarCollections.unmodifiableCollection(zzfsf.f7617c.f7618a);
            if (unmodifiableCollection != null && !unmodifiableCollection.isEmpty()) {
                for (zzfrl zzfrlVar : unmodifiableCollection) {
                    if (zzfrlVar != this && ((View) zzfrlVar.f7598c.get()) == view) {
                        zzfrlVar.f7598c.clear();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrh
    public final void b() {
        if (this.f) {
            return;
        }
        this.f7598c.clear();
        if (!this.f) {
            this.b.f7622a.clear();
        }
        boolean z = true;
        this.f = true;
        zzfsv zzfsvVar = this.d;
        zzfsm.f7625a.a(zzfsvVar.c(), "finishSession", zzfsvVar.f7634a);
        zzfsf zzfsfVar = zzfsf.f7617c;
        ArrayList arrayList = zzfsfVar.f7618a;
        ArrayList arrayList2 = zzfsfVar.b;
        if (arrayList2.size() <= 0) {
            z = false;
        }
        arrayList.remove(this);
        arrayList2.remove(this);
        if (z && arrayList2.size() <= 0) {
            zzfsn a2 = zzfsn.a();
            a2.getClass();
            zzftp zzftpVar = zzftp.g;
            zzftpVar.getClass();
            Handler handler = zzftp.i;
            if (handler != null) {
                handler.removeCallbacks(zzftp.k);
                zzftp.i = null;
            }
            zzftpVar.f7648a.clear();
            zzftp.h.post(new zzftk(zzftpVar));
            zzfse zzfseVar = zzfse.h;
            zzfseVar.f7619c = false;
            zzfseVar.g = null;
            zzfsb zzfsbVar = a2.b;
            zzfsbVar.b.getContentResolver().unregisterContentObserver(zzfsbVar);
        }
        this.d.b();
        this.d = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrh
    public final void c(View view, zzfro zzfroVar) {
        if (this.f) {
            return;
        }
        this.b.a(view, zzfroVar);
    }

    public final void d() {
        boolean z;
        Date date;
        boolean z2;
        if (!this.e && this.d != null) {
            this.e = true;
            ArrayList arrayList = zzfsf.f7617c.b;
            if (arrayList.size() > 0) {
                z = true;
            } else {
                z = false;
            }
            arrayList.add(this);
            if (!z) {
                zzfsn a2 = zzfsn.a();
                a2.getClass();
                zzfse zzfseVar = zzfse.h;
                zzfseVar.g = a2;
                zzfseVar.f7619c = true;
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                if (runningAppProcessInfo.importance != 100 && !zzfseVar.a()) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                zzfseVar.f = z2;
                zzfseVar.b(z2);
                zzftp.g.getClass();
                zzftp.b();
                zzfsb zzfsbVar = a2.b;
                zzfsbVar.getClass();
                zzfsbVar.f.submit(new zzfsa(zzfsbVar));
                zzfsbVar.b.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, zzfsbVar);
            }
            float f = zzfsn.a().f7626a;
            zzfsv zzfsvVar = this.d;
            zzfsm.f7625a.a(zzfsvVar.c(), "setDeviceVolume", Float.valueOf(f), zzfsvVar.f7634a);
            zzfsv zzfsvVar2 = this.d;
            Date date2 = zzfsd.e.f7615a;
            if (date2 != null) {
                date = (Date) date2.clone();
            } else {
                date = null;
            }
            zzfsvVar2.f(date);
            this.d.d(this, this.f7597a);
        }
    }
}
