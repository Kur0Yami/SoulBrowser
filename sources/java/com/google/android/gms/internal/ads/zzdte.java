package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzdte extends zzcvk {
    public final Context l;
    public final WeakReference m;
    public final zzdlh n;
    public final zzdhv o;
    public final zzdax p;
    public final zzdce q;
    public final zzcwf r;
    public final zzcaw s;
    public final zzfup t;
    public final zzfie u;
    public final zzdxe v;
    public boolean w;

    public zzdte(zzcvj zzcvjVar, Context context, zzcir zzcirVar, zzdlh zzdlhVar, zzdhv zzdhvVar, zzdax zzdaxVar, zzdce zzdceVar, zzcwf zzcwfVar, zzfhr zzfhrVar, zzfup zzfupVar, zzfie zzfieVar, zzdxe zzdxeVar) {
        super(zzcvjVar);
        String str;
        int i;
        this.w = false;
        this.l = context;
        this.n = zzdlhVar;
        this.m = new WeakReference(zzcirVar);
        this.o = zzdhvVar;
        this.p = zzdaxVar;
        this.q = zzdceVar;
        this.r = zzcwfVar;
        this.t = zzfupVar;
        zzbzy zzbzyVar = zzfhrVar.l;
        if (zzbzyVar != null) {
            str = zzbzyVar.f4991c;
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (zzbzyVar != null) {
            i = zzbzyVar.f;
        } else {
            i = 1;
        }
        this.s = new zzcaw(str, i);
        this.u = zzfieVar;
        this.v = zzdxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(Activity activity, boolean z) {
        com.google.android.gms.ads.internal.zzt.zzc();
        zzdlh zzdlhVar = this.n;
        boolean zzT = com.google.android.gms.ads.internal.util.zzs.zzT(zzdlhVar.zzb());
        Context context = this.l;
        zzdax zzdaxVar = this.p;
        if (!zzT) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.We)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzS(context, this.b, this.v);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g1)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                if (com.google.android.gms.ads.internal.util.zzs.zzL(context)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies");
                    zzdaxVar.zze();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h1)).booleanValue()) {
                        this.t.a(this.f5506a.b.b.b);
                        return;
                    }
                    return;
                }
            }
        }
        if (this.w) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The rewarded ad have been showed.");
            zzdaxVar.zzc(zzfjm.d(10, null, null));
            return;
        }
        this.w = true;
        zzdhu zzdhuVar = zzdhu.f5806a;
        zzdhv zzdhvVar = this.o;
        zzdhvVar.s0(zzdhuVar);
        if (activity == null) {
            activity = context;
        }
        try {
            zzdlhVar.a(z, activity, zzdaxVar);
            zzdhvVar.s0(zzdht.f5805a);
        } catch (zzdlg e) {
            zzdaxVar.o(e);
        }
    }

    public final Bundle d() {
        Bundle bundle;
        zzdce zzdceVar = this.q;
        synchronized (zzdceVar) {
            bundle = new Bundle(zzdceVar.f);
        }
        return bundle;
    }

    public final void finalize() {
        try {
            final zzcir zzcirVar = (zzcir) this.m.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z7)).booleanValue()) {
                if (!this.w && zzcirVar != null) {
                    ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtd
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcir.this.destroy();
                        }
                    });
                }
            } else if (zzcirVar != null) {
                zzcirVar.destroy();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }
}
