package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzchg extends zzcgx implements zzcfa {
    public zzchz h;
    public String i;
    public boolean j;
    public boolean k;
    public zzcgp l;
    public long m;
    public long n;

    public static String r(Exception exc, String str) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 1 + length + 1 + String.valueOf(message).length());
        android.support.v4.media.a.z(sb, str, "/", canonicalName, ":");
        sb.append(message);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void a(final long j, final boolean z) {
        final zzcfk zzcfkVar = (zzcfk) this.g.get();
        if (zzcfkVar != null) {
            ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzchf
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    boolean z2 = z;
                    zzcfk.this.B(j, z2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void b(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void c(IOException iOException) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache exception", iOException);
        com.google.android.gms.ads.internal.zzt.zzh().g("VideoStreamExoPlayerCache.onException", iOException);
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void e(Exception exc, String str) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache error", exc);
        com.google.android.gms.ads.internal.zzt.zzh().g("VideoStreamExoPlayerCache.onError", exc);
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final boolean g(String str) {
        return h(str, new String[]{str});
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final boolean h(String str, String[] strArr) {
        String str2;
        String str3;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        boolean z;
        long j8;
        long j9;
        long j10;
        zzchg zzchgVar = this;
        String str4 = str;
        zzchgVar.i = str4;
        String concat = "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str4)));
        String str5 = " ms";
        String str6 = "Timeout reached. Limit: ";
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            zzchgVar.h.y(uriArr, zzchgVar.f);
            zzcfk zzcfkVar = (zzcfk) zzchgVar.g.get();
            if (zzcfkVar != null) {
                zzcfkVar.N(concat, zzchgVar);
            }
            Clock zzk = com.google.android.gms.ads.internal.zzt.zzk();
            long currentTimeMillis = zzk.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g0)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f0)).longValue() * 1000;
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w)).intValue();
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue();
            long j11 = -1;
            while (true) {
                synchronized (this) {
                    try {
                        if (zzk.currentTimeMillis() - currentTimeMillis <= longValue2) {
                            if (!zzchgVar.j) {
                                if (zzchgVar.k) {
                                    return true;
                                }
                                if (zzchgVar.h.p()) {
                                    long b = zzchgVar.h.m.b();
                                    if (b > 0) {
                                        long c2 = zzchgVar.h.m.c();
                                        if (c2 != j11) {
                                            if (c2 > 0) {
                                                j7 = longValue;
                                                j5 = b;
                                                z = true;
                                            } else {
                                                j7 = longValue;
                                                j5 = b;
                                                z = false;
                                            }
                                            if (booleanValue) {
                                                j8 = zzchgVar.h.t();
                                            } else {
                                                j8 = -1;
                                            }
                                            if (booleanValue) {
                                                j9 = zzchgVar.h.u();
                                            } else {
                                                j9 = -1;
                                            }
                                            if (booleanValue) {
                                                j10 = zzchgVar.h.v();
                                            } else {
                                                j10 = -1;
                                            }
                                            try {
                                                long j12 = j9;
                                                j2 = intValue;
                                                str2 = str5;
                                                str3 = str6;
                                                j4 = j7;
                                                j6 = c2;
                                                j = longValue2;
                                                com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgs(zzchgVar, str4, concat, j6, j5, j8, j12, j10, z, zzcfb.f5098c.get(), zzcfb.f.get()));
                                                j11 = j6;
                                            } catch (Throwable th) {
                                                th = th;
                                                zzchgVar = this;
                                                str4 = str;
                                            }
                                        } else {
                                            str2 = str5;
                                            str3 = str6;
                                            j4 = longValue;
                                            j2 = intValue;
                                            j5 = b;
                                            j6 = c2;
                                            j = longValue2;
                                        }
                                        if (j6 >= j5) {
                                            com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgv(this, str, concat, j5));
                                            return true;
                                        }
                                        zzchgVar = this;
                                        str4 = str;
                                        if (zzchgVar.h.q >= j2 && j6 > 0) {
                                            return true;
                                        }
                                        j3 = j4;
                                    } else {
                                        str2 = str5;
                                        str3 = str6;
                                        j = longValue2;
                                        j2 = intValue;
                                        j3 = longValue;
                                    }
                                    try {
                                        zzchgVar.wait(j3);
                                    } catch (InterruptedException unused) {
                                        throw new IOException("Wait interrupted.");
                                    }
                                } else {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                            } else {
                                throw new IOException("Abort requested before buffering finished. ");
                            }
                        } else {
                            String str7 = str6;
                            long j13 = longValue2;
                            StringBuilder sb = new StringBuilder(String.valueOf(j13).length() + 27);
                            sb.append(str7);
                            sb.append(j13);
                            sb.append(str5);
                            throw new IOException(sb.toString());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                throw th;
                longValue = j3;
                longValue2 = j;
                intValue = j2;
                str5 = str2;
                str6 = str3;
            }
        } catch (Exception e) {
            String message = e.getMessage();
            String r = android.support.v4.media.a.r(new StringBuilder(String.valueOf(str4).length() + 34 + String.valueOf(message).length()), "Failed to preload url ", str4, " Exception: ", message);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
            com.google.android.gms.ads.internal.zzt.zzh().g("VideoStreamExoPlayerCache.preload", e);
            zzchgVar.release();
            zzchgVar.p(str4, concat, "error", r(e, "error"));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final boolean i(String str, String[] strArr, zzcgp zzcgpVar) {
        this.i = str;
        this.l = zzcgpVar;
        String concat = "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str)));
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.h.y(uriArr, this.f);
            zzcfk zzcfkVar = (zzcfk) this.g.get();
            if (zzcfkVar != null) {
                zzcfkVar.N(concat, this);
            }
            this.m = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            this.n = -1L;
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzche(this), 0L);
            return true;
        } catch (Exception e) {
            String message = e.getMessage();
            String r = android.support.v4.media.a.r(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length()), "Failed to preload url ", str, " Exception: ", message);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
            com.google.android.gms.ads.internal.zzt.zzh().g("VideoStreamExoPlayerCache.preload", e);
            release();
            p(str, concat, "error", r(e, "error"));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void j(int i) {
        this.h.s(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void k(int i) {
        this.h.r(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void l(int i) {
        this.h.C(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void m(int i) {
        this.h.D(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void o() {
        synchronized (this) {
            this.j = true;
            notify();
            release();
        }
        String str = this.i;
        if (str != null) {
            p(this.i, "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str))), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgx, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzchz zzchzVar = this.h;
        if (zzchzVar != null) {
            zzchzVar.p = null;
            zzchzVar.A();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void zzD() {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void zzs(int i) {
    }
}
