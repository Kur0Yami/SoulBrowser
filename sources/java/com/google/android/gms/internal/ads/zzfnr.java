package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfnr implements Runnable {
    public static final Object n = new Object();
    public static final Object o = new Object();
    public static final Object p = new Object();
    public static Boolean q;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7510c;
    public final VersionInfoParcel f;
    public int i;
    public final zzdur j;
    public final List k;
    public final zzcld l;
    public final zzfnv g = zzfny.E();
    public String h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public boolean m = false;

    public zzfnr(Context context, VersionInfoParcel versionInfoParcel, zzdur zzdurVar, zzbzi zzbziVar, zzcld zzcldVar) {
        this.f7510c = context;
        this.f = versionInfoParcel;
        this.j = zzdurVar;
        this.l = zzcldVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ba)).booleanValue()) {
            this.k = com.google.android.gms.ads.internal.util.zzs.zzk();
        } else {
            zzgvs zzgvsVar = zzgtd.f;
            this.k = zzguy.i;
        }
    }

    public static boolean a() {
        boolean booleanValue;
        boolean z;
        synchronized (n) {
            try {
                if (q == null) {
                    if (!((Boolean) zzbid.b.c()).booleanValue()) {
                        q = Boolean.FALSE;
                    } else {
                        if (Math.random() < ((Double) zzbid.f4703a.c()).doubleValue()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        q = Boolean.valueOf(z);
                    }
                }
                booleanValue = q.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    public final void b(final zzfnh zzfnhVar) {
        ((zzgxi) zzcdo.f5068a).E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfnq
            /* JADX WARN: Removed duplicated region for block: B:28:0x0214 A[Catch: all -> 0x00de, TryCatch #1 {all -> 0x00de, blocks: (B:14:0x00bf, B:16:0x00db, B:20:0x00e1, B:22:0x01a4, B:25:0x01a9, B:26:0x01b0, B:28:0x0214, B:29:0x0220, B:31:0x0232, B:33:0x023a, B:35:0x0246, B:36:0x0250, B:37:0x0274), top: B:13:0x00bf }] */
            /* JADX WARN: Removed duplicated region for block: B:31:0x0232 A[Catch: all -> 0x00de, TryCatch #1 {all -> 0x00de, blocks: (B:14:0x00bf, B:16:0x00db, B:20:0x00e1, B:22:0x01a4, B:25:0x01a9, B:26:0x01b0, B:28:0x0214, B:29:0x0220, B:31:0x0232, B:33:0x023a, B:35:0x0246, B:36:0x0250, B:37:0x0274), top: B:13:0x00bf }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 635
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfnq.run():void");
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] h;
        if (a()) {
            Object obj = o;
            synchronized (obj) {
                try {
                    if (((zzfny) this.g.f).D() == 0) {
                        return;
                    }
                    try {
                        synchronized (obj) {
                            zzfnv zzfnvVar = this.g;
                            h = ((zzfny) zzfnvVar.m()).h();
                            zzfnvVar.k();
                            ((zzfny) zzfnvVar.f).G();
                        }
                        zzefy zzefyVar = new zzefy((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V9), 60000, new HashMap(), h, "application/x-protobuf");
                        Context context = this.f7510c;
                        String str = this.f.afmaVersion;
                        Binder.getCallingUid();
                        new zzega(context, str, null).zza(zzefyVar);
                    } catch (Exception e) {
                        if ((e instanceof zzebr) && ((zzebr) e).f6345c == 3) {
                            return;
                        }
                        com.google.android.gms.ads.internal.zzt.zzh().g("CuiMonitor.sendCuiPing", e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
