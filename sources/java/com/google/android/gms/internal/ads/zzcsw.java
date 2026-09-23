package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;

/* loaded from: classes.dex */
public final class zzcsw extends zzcvk {
    public final zzcir l;
    public final int m;
    public final Context n;
    public final zzcsk o;
    public final zzdlh p;
    public final zzdhv q;
    public final zzdax r;
    public final boolean s;
    public final zzcdf t;
    public final zzdxe u;
    public boolean v;

    public zzcsw(zzcvj zzcvjVar, Context context, zzcir zzcirVar, int i, zzcsk zzcskVar, zzdlh zzdlhVar, zzdhv zzdhvVar, zzdax zzdaxVar, zzcdf zzcdfVar, zzdxe zzdxeVar) {
        super(zzcvjVar);
        this.v = false;
        this.l = zzcirVar;
        this.n = context;
        this.m = i;
        this.o = zzcskVar;
        this.p = zzdlhVar;
        this.q = zzdhvVar;
        this.r = zzdaxVar;
        this.s = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p6)).booleanValue();
        this.t = zzcdfVar;
        this.u = zzdxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15, types: [android.content.Context] */
    public final void c(Activity activity, boolean z) {
        zzcir zzcirVar;
        zzfhr zzC;
        int d;
        zzdhv zzdhvVar = this.q;
        zzdax zzdaxVar = this.r;
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.n;
        }
        boolean z2 = this.s;
        if (z2) {
            zzdhvVar.s0(zzdhu.f5806a);
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        zzdlh zzdlhVar = this.p;
        if (!com.google.android.gms.ads.internal.util.zzs.zzT(zzdlhVar.zzb())) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.We)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzS(activity2, this.b, this.u);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g1)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                if (com.google.android.gms.ads.internal.util.zzs.zzL(activity2)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies");
                    zzdaxVar.zze();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h1)).booleanValue()) {
                        new zzfup(activity2.getApplicationContext(), com.google.android.gms.ads.internal.zzt.zzs().zza()).a(this.f5506a.b.b.b);
                        return;
                    }
                    return;
                }
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ld)).booleanValue() && (zzcirVar = this.l) != null && (zzC = zzcirVar.zzC()) != null && zzC.r0) {
            int i2 = zzC.s0;
            zzcdf zzcdfVar = this.t;
            synchronized (zzcdfVar.f5060c) {
                d = zzcdfVar.h.d();
            }
            if (i2 != d) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The app open consent form has been shown.");
                zzdaxVar.zzc(zzfjm.d(12, "The consent form has already been shown.", null));
                return;
            }
        }
        if (this.v) {
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("App open interstitial ad is already visible.");
            zzdaxVar.zzc(zzfjm.d(10, null, null));
        }
        if (!this.v) {
            try {
                zzdlhVar.a(z, activity2, zzdaxVar);
                if (z2) {
                    zzdhvVar.s0(zzdht.f5805a);
                }
                this.v = true;
            } catch (zzdlg e) {
                zzdaxVar.o(e);
            }
        }
    }

    public final void d() {
        zzdbj zzdbjVar = this.f5507c;
        zzdbjVar.getClass();
        zzdbjVar.s0(new zzdbh(null));
        zzcir zzcirVar = this.l;
        if (zzcirVar != null) {
            zzcirVar.destroy();
        }
    }

    public final void e(int i, long j) {
        String str;
        zzcsk zzcskVar = this.o;
        zzdxd a2 = zzcskVar.f5437a.a();
        a2.b("gqi", zzcskVar.b.b.b.b);
        a2.b("action", "ad_closed");
        a2.b("show_time", String.valueOf(j));
        a2.b("ad_format", "app_open_ad");
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            str = "u";
                        } else {
                            str = "ac";
                        }
                    } else {
                        str = "cb";
                    }
                } else {
                    str = "cc";
                }
            } else {
                str = "bb";
            }
        } else {
            str = "h";
        }
        a2.b("acr", str);
        a2.c();
    }
}
