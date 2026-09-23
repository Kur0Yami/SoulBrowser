package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzfho extends zzbzo {

    /* renamed from: c, reason: collision with root package name */
    public final zzfhe f7362c;
    public final zzfgv f;
    public final zzfid g;
    public zzdte h;
    public boolean i;

    public zzfho(zzfhe zzfheVar, zzfgv zzfgvVar, zzfid zzfidVar) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        this.i = false;
        this.f7362c = zzfheVar;
        this.f = zzfgvVar;
        this.g = zzfidVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0045, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.s6)).booleanValue() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
    
        if (java.util.regex.Pattern.matches(r1, r0) != false) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.google.android.gms.internal.ads.zzerd] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void c5(com.google.android.gms.internal.ads.zzbzt r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L20
            java.lang.String r0 = r5.f     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.q6     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L20
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L20
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L2c
            if (r0 != 0) goto L19
            goto L2c
        L19:
            boolean r0 = java.util.regex.Pattern.matches(r1, r0)     // Catch: java.lang.Throwable -> L20 java.lang.RuntimeException -> L22
            if (r0 == 0) goto L2c
            goto L44
        L20:
            r5 = move-exception
            goto L65
        L22:
            r0 = move-exception
            java.lang.String r1 = "NonagonUtil.isPatternMatched"
            com.google.android.gms.internal.ads.zzcda r2 = com.google.android.gms.ads.internal.zzt.zzh()     // Catch: java.lang.Throwable -> L20
            r2.f(r1, r0)     // Catch: java.lang.Throwable -> L20
        L2c:
            boolean r0 = r4.g5()     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L46
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.s6     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L20
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L20
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L20
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L20
            if (r0 != 0) goto L46
        L44:
            monitor-exit(r4)
            return
        L46:
            com.google.android.gms.internal.ads.zzfgx r0 = new com.google.android.gms.internal.ads.zzfgx     // Catch: java.lang.Throwable -> L20
            r0.<init>()     // Catch: java.lang.Throwable -> L20
            r1 = 0
            r4.h = r1     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzfhe r1 = r4.f7362c     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzfij r2 = r1.h     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzfhx r2 = r2.o     // Catch: java.lang.Throwable -> L20
            r3 = 1
            r2.f7376a = r3     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.ads.internal.client.zzm r2 = r5.f4990c     // Catch: java.lang.Throwable -> L20
            java.lang.String r5 = r5.f     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzfhm r3 = new com.google.android.gms.internal.ads.zzfhm     // Catch: java.lang.Throwable -> L20
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L20
            r1.a(r2, r5, r0, r3)     // Catch: java.lang.Throwable -> L20
            monitor-exit(r4)
            return
        L65:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L20
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfho.c5(com.google.android.gms.internal.ads.zzbzt):void");
    }

    public final synchronized void d5(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        Context context = null;
        this.f.f.set(null);
        if (this.h != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.f2(iObjectWrapper);
            }
            zzdbj zzdbjVar = this.h.f5507c;
            zzdbjVar.getClass();
            zzdbjVar.s0(new zzdbh(context));
        }
    }

    public final synchronized void e5(String str) {
        Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
        this.g.f7384a = str;
    }

    public final synchronized void f5(String str) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
        this.g.b = str;
    }

    public final synchronized boolean g5() {
        zzdte zzdteVar = this.h;
        if (zzdteVar != null) {
            if (!zzdteVar.r.f.get()) {
                return true;
            }
        }
        return false;
    }

    public final synchronized void q3(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.h != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.f2(iObjectWrapper);
            }
            zzdbj zzdbjVar = this.h.f5507c;
            zzdbjVar.getClass();
            zzdbjVar.s0(new zzdbi(context));
        }
    }

    public final synchronized void s2(IObjectWrapper iObjectWrapper) {
        try {
            Preconditions.checkMainThread("showAd must be called on the main UI thread.");
            if (this.h != null) {
                Activity activity = null;
                if (iObjectWrapper != null) {
                    Object f2 = ObjectWrapper.f2(iObjectWrapper);
                    if (f2 instanceof Activity) {
                        activity = (Activity) f2;
                    }
                }
                this.h.c(activity, this.i);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        s2(null);
    }

    public final synchronized void zzj(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.h != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.f2(iObjectWrapper);
            }
            zzdbj zzdbjVar = this.h.f5507c;
            zzdbjVar.getClass();
            zzdbjVar.s0(new zzdbg(context));
        }
    }

    public final synchronized String zzl() {
        zzdad zzdadVar;
        zzdte zzdteVar = this.h;
        if (zzdteVar != null && (zzdadVar = zzdteVar.f) != null) {
            return zzdadVar.f5650c;
        }
        return null;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzea zzt() {
        zzdte zzdteVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B7)).booleanValue() && (zzdteVar = this.h) != null) {
            return zzdteVar.f;
        }
        return null;
    }
}
