package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
final /* synthetic */ class zzche implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzchg f5147c;

    public /* synthetic */ zzche(zzchg zzchgVar) {
        this.f5147c = zzchgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long longValue;
        long intValue;
        boolean booleanValue;
        long j;
        long j2;
        long j3;
        boolean z;
        long j4;
        long j5;
        zzchg zzchgVar = this.f5147c;
        String concat = "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(zzchgVar.i)));
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f0)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w)).intValue();
            booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue();
        } catch (Exception e) {
            String str = zzchgVar.i;
            String message = e.getMessage();
            String r = android.support.v4.media.a.r(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length()), "Failed to preload url ", str, " Exception: ", message);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
            com.google.android.gms.ads.internal.zzt.zzh().g("VideoStreamExoPlayerCache.preload", e);
            zzchgVar.release();
            zzchgVar.p(zzchgVar.i, concat, "error", zzchg.r(e, "error"));
        }
        synchronized (zzchgVar) {
            if (com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - zzchgVar.m <= longValue) {
                if (!zzchgVar.j) {
                    if (!zzchgVar.k) {
                        if (zzchgVar.h.p()) {
                            long b = zzchgVar.h.m.b();
                            if (b > 0) {
                                long c2 = zzchgVar.h.m.c();
                                if (c2 != zzchgVar.n) {
                                    if (c2 > 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    boolean z2 = z;
                                    String str2 = zzchgVar.i;
                                    long j6 = -1;
                                    if (booleanValue) {
                                        j4 = zzchgVar.h.t();
                                    } else {
                                        j4 = -1;
                                    }
                                    if (booleanValue) {
                                        j5 = zzchgVar.h.u();
                                    } else {
                                        j5 = -1;
                                    }
                                    if (booleanValue) {
                                        j6 = zzchgVar.h.v();
                                    }
                                    j = intValue;
                                    j2 = b;
                                    j3 = c2;
                                    com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgs(zzchgVar, str2, concat, j3, j2, j4, j5, j6, z2, zzcfb.f5098c.get(), zzcfb.f.get()));
                                    zzchgVar.n = j3;
                                } else {
                                    j = intValue;
                                    j2 = b;
                                    j3 = c2;
                                }
                                if (j3 >= j2) {
                                    com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgv(zzchgVar, zzchgVar.i, concat, j2));
                                } else if (zzchgVar.h.q >= j && j3 > 0) {
                                }
                            }
                            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzche(zzchgVar), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g0)).longValue());
                            return;
                        }
                        throw new IOException("ExoPlayer was released during preloading.");
                    }
                    com.google.android.gms.ads.internal.zzt.zzB().f5135c.remove(zzchgVar.l);
                    return;
                }
                throw new IOException("Abort requested before buffering finished. ");
            }
            StringBuilder sb = new StringBuilder(String.valueOf(longValue).length() + 27);
            sb.append("Timeout reached. Limit: ");
            sb.append(longValue);
            sb.append(" ms");
            throw new IOException(sb.toString());
        }
    }
}
