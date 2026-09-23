package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcfl {
    public static final boolean r;

    /* renamed from: a, reason: collision with root package name */
    public final Context f5107a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final VersionInfoParcel f5108c;
    public final zzbgw d;
    public final zzbgz e;
    public final com.google.android.gms.ads.internal.util.zzbf f;
    public final long[] g;
    public final String[] h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public zzceq n;
    public boolean o;
    public boolean p;
    public long q;

    static {
        boolean z;
        if (com.google.android.gms.ads.internal.client.zzbb.zzh().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.be)).intValue()) {
            z = true;
        } else {
            z = false;
        }
        r = z;
    }

    public zzcfl(Context context, VersionInfoParcel versionInfoParcel, String str, zzbgz zzbgzVar, zzbgw zzbgwVar) {
        com.google.android.gms.ads.internal.util.zzbe zzbeVar = new com.google.android.gms.ads.internal.util.zzbe();
        zzbeVar.zza("min_1", Double.MIN_VALUE, 1.0d);
        zzbeVar.zza("1_5", 1.0d, 5.0d);
        zzbeVar.zza("5_10", 5.0d, 10.0d);
        zzbeVar.zza("10_20", 10.0d, 20.0d);
        zzbeVar.zza("20_30", 20.0d, 30.0d);
        zzbeVar.zza("30_max", 30.0d, Double.MAX_VALUE);
        this.f = zzbeVar.zzb();
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.q = -1L;
        this.f5107a = context;
        this.f5108c = versionInfoParcel;
        this.b = str;
        this.e = zzbgzVar;
        this.d = zzbgwVar;
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i0);
        if (str2 == null) {
            this.h = new String[0];
            this.g = new long[0];
            return;
        }
        String[] split2 = TextUtils.split(str2, ",");
        int length = split2.length;
        this.h = new String[length];
        this.g = new long[length];
        for (int i = 0; i < split2.length; i++) {
            try {
                this.g[i] = Long.parseLong(split2[i]);
            } catch (NumberFormatException e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to parse frame hash target time number.", e);
                this.g[i] = -1;
            }
        }
    }

    public final void a(zzceq zzceqVar) {
        zzbgw zzbgwVar = this.d;
        zzbgz zzbgzVar = this.e;
        zzbgr.a(zzbgzVar, zzbgwVar, "vpc2");
        this.i = true;
        zzbgzVar.c("vpn", zzceqVar.h());
        this.n = zzceqVar;
    }

    public final void b() {
        if (r && !this.o) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.b);
            bundle.putString("player", this.n.h());
            for (com.google.android.gms.ads.internal.util.zzbd zzbdVar : this.f.zzb()) {
                String str = zzbdVar.zza;
                String valueOf = String.valueOf(str);
                bundle.putString("fps_c_".concat(valueOf), Integer.toString(zzbdVar.zze));
                String valueOf2 = String.valueOf(str);
                bundle.putString("fps_p_".concat(valueOf2), Double.toString(zzbdVar.zzd));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.g;
                if (i < jArr.length) {
                    String str2 = this.h[i];
                    if (str2 != null) {
                        Long valueOf3 = Long.valueOf(jArr[i]);
                        new StringBuilder(valueOf3.toString().length() + 3);
                        bundle.putString("fh_".concat(valueOf3.toString()), str2);
                    }
                    i++;
                } else {
                    com.google.android.gms.ads.internal.zzt.zzc().zzg(this.f5107a, this.f5108c.afmaVersion, "gmob-apps", bundle, true);
                    this.o = true;
                    return;
                }
            }
        }
    }

    public final void c(zzceq zzceqVar) {
        long j;
        if (this.k && !this.l) {
            if (com.google.android.gms.ads.internal.util.zze.zzc() && !this.l) {
                com.google.android.gms.ads.internal.util.zze.zza("VideoMetricsMixin first frame");
            }
            zzbgr.a(this.e, this.d, "vff2");
            this.l = true;
        }
        long nanoTime = com.google.android.gms.ads.internal.zzt.zzk().nanoTime();
        if (this.m && this.p && this.q != -1) {
            this.f.zza(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.q));
        }
        this.p = this.m;
        this.q = nanoTime;
        long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j0)).longValue();
        long o = zzceqVar.o();
        int i = 0;
        while (true) {
            String[] strArr = this.h;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(o - this.g[i])) {
                    int i2 = 8;
                    Bitmap bitmap = zzceqVar.getBitmap(8, 8);
                    long j2 = 63;
                    long j3 = 0;
                    int i3 = 0;
                    while (i3 < i2) {
                        int i4 = 0;
                        while (i4 < i2) {
                            int pixel = bitmap.getPixel(i4, i3);
                            if (Color.green(pixel) + Color.red(pixel) + Color.blue(pixel) > 128) {
                                j = 1;
                            } else {
                                j = 0;
                            }
                            j3 |= j << ((int) j2);
                            j2--;
                            i4++;
                            i2 = 8;
                        }
                        i3++;
                        i2 = 8;
                    }
                    strArr[i] = String.format("%016X", Long.valueOf(j3));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final void d() {
        this.m = true;
        if (this.j && !this.k) {
            zzbgr.a(this.e, this.d, "vfp2");
            this.k = true;
        }
    }
}
