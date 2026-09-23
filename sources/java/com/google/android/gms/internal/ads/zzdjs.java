package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzdjs extends zzcvk {
    public final Context l;
    public final WeakReference m;
    public final zzdhv n;
    public final zzdlh o;
    public final zzcwf p;
    public final zzfup q;
    public final zzdax r;
    public final zzcdf s;
    public final zzdxe t;
    public boolean u;

    public zzdjs(zzcvj zzcvjVar, Context context, zzcir zzcirVar, zzdhv zzdhvVar, zzdlh zzdlhVar, zzcwf zzcwfVar, zzfup zzfupVar, zzdax zzdaxVar, zzcdf zzcdfVar, zzdxe zzdxeVar) {
        super(zzcvjVar);
        this.u = false;
        this.l = context;
        this.m = new WeakReference(zzcirVar);
        this.n = zzdhvVar;
        this.o = zzdlhVar;
        this.p = zzcwfVar;
        this.q = zzfupVar;
        this.r = zzdaxVar;
        this.s = zzcdfVar;
        this.t = zzdxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(Activity activity, boolean z) {
        zzfhr zzC;
        int d;
        Context context = this.l;
        zzdax zzdaxVar = this.r;
        zzdhv zzdhvVar = this.n;
        zzdhvVar.s0(zzdhu.f5806a);
        com.google.android.gms.ads.internal.zzt.zzc();
        zzdlh zzdlhVar = this.o;
        if (!com.google.android.gms.ads.internal.util.zzs.zzT(zzdlhVar.zzb())) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.We)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzS(context, this.b, this.t);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g1)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                if (com.google.android.gms.ads.internal.util.zzs.zzL(context)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies");
                    zzdaxVar.zze();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h1)).booleanValue()) {
                        this.q.a(this.f5506a.b.b.b);
                        return;
                    }
                    return;
                }
            }
        }
        zzcir zzcirVar = (zzcir) this.m.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ld)).booleanValue() && zzcirVar != null && (zzC = zzcirVar.zzC()) != null && zzC.r0) {
            int i2 = zzC.s0;
            zzcdf zzcdfVar = this.s;
            synchronized (zzcdfVar.f5060c) {
                d = zzcdfVar.h.d();
            }
            if (i2 != d) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The interstitial consent form has been shown.");
                zzdaxVar.zzc(zzfjm.d(12, "The consent form has already been shown.", null));
                return;
            }
        }
        if (this.u) {
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The interstitial ad has been shown.");
            zzdaxVar.zzc(zzfjm.d(10, null, null));
        }
        if (!this.u) {
            if (activity == null) {
                activity = context;
            }
            try {
                zzdlhVar.a(z, activity, zzdaxVar);
                zzdhvVar.s0(zzdht.f5805a);
                this.u = true;
            } catch (zzdlg e) {
                zzdaxVar.o(e);
            }
        }
    }

    public final void finalize() {
        try {
            final zzcir zzcirVar = (zzcir) this.m.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z7)).booleanValue()) {
                if (!this.u && zzcirVar != null) {
                    ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjr
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
