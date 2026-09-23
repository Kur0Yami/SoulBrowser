package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzchd extends zzcgx implements zzhz {
    public static final AtomicInteger s = new AtomicInteger(0);
    public String h;
    public final zzcfj i;
    public boolean j;
    public final zzchc k;
    public final zzcgg l;
    public ByteBuffer m;
    public boolean n;
    public final Object o;
    public final String p;
    public final int q;
    public boolean r;

    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zzcgg, java.lang.Object] */
    public zzchd(zzcfk zzcfkVar, zzcfj zzcfjVar) {
        super(zzcfkVar);
        zzgpy zzgqfVar;
        this.i = zzcfjVar;
        this.k = new zzchc();
        this.l = new Object();
        this.o = new Object();
        String zzn = zzcfkVar.zzn();
        if (zzn == null) {
            zzgqfVar = zzgph.f8196c;
        } else {
            zzgqfVar = new zzgqf(zzn);
        }
        this.p = (String) zzgqfVar.a();
        this.q = zzcfkVar.zzp();
        s.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void d(zzgt zzgtVar, zzhf zzhfVar, boolean z) {
        if (zzgtVar instanceof zzhm) {
            this.k.f5146a.add((zzhm) zzgtVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v11, types: [com.google.android.gms.internal.ads.zzcge] */
    /* JADX WARN: Type inference failed for: r27v0, types: [com.google.android.gms.internal.ads.zzchd, com.google.android.gms.internal.ads.zzcgx, com.google.android.gms.internal.ads.zzhz] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v9, types: [boolean] */
    @Override // com.google.android.gms.internal.ads.zzcgx
    public final boolean g(String str) {
        String str2;
        ?? r6;
        zzhm zzhmVar;
        Clock clock;
        String str3 = str;
        this.h = str3;
        String str4 = "error";
        String concat = "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str3)));
        try {
            zzhi zzhiVar = new zzhi();
            zzhiVar.f8567c = this.f;
            zzcfj zzcfjVar = this.i;
            zzhiVar.d = zzcfjVar.d;
            zzhiVar.e = zzcfjVar.e;
            zzhiVar.f = true;
            zzhiVar.b = this;
            zzhm zza = zzhiVar.zza();
            if (zzcfjVar.i) {
                zza = new zzcge(this.f5142c, zza, this.p, this.q);
            }
            zza.a(new zzhf(Uri.parse(str3), 0L, -1L));
            zzcfk zzcfkVar = (zzcfk) this.g.get();
            if (zzcfkVar != null) {
                zzcfkVar.N(concat, this);
            }
            Clock zzk = com.google.android.gms.ads.internal.zzt.zzk();
            long currentTimeMillis = zzk.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g0)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f0)).longValue();
            this.m = ByteBuffer.allocate(zzcfjVar.f5106c);
            byte[] bArr = new byte[8192];
            long j = currentTimeMillis;
            while (true) {
                try {
                    int b = zza.b(bArr, 0, Math.min(this.m.remaining(), 8192));
                    if (b == -1) {
                        this.r = true;
                        str3 = str;
                        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgv(this, str3, concat, (int) this.l.a(this.m)));
                        return true;
                    }
                    str3 = str;
                    str2 = str4;
                    try {
                        synchronized (this.o) {
                            zzhmVar = zza;
                            try {
                                if (!this.j) {
                                    clock = zzk;
                                    this.m.put(bArr, 0, b);
                                } else {
                                    clock = zzk;
                                }
                            } finally {
                            }
                        }
                        if (this.m.remaining() <= 0) {
                            s();
                            return true;
                        }
                        r6 = this.j;
                        try {
                            if (r6 == 0) {
                                long currentTimeMillis2 = clock.currentTimeMillis();
                                if (currentTimeMillis2 - j >= longValue) {
                                    s();
                                    j = currentTimeMillis2;
                                }
                                if (currentTimeMillis2 - currentTimeMillis <= 1000 * longValue2) {
                                    str4 = str2;
                                    zza = zzhmVar;
                                    zzk = clock;
                                } else {
                                    StringBuilder sb = new StringBuilder(String.valueOf(longValue2).length() + 29);
                                    sb.append("Timeout exceeded. Limit: ");
                                    sb.append(longValue2);
                                    sb.append(" sec");
                                    throw new IOException(sb.toString());
                                }
                            } else {
                                int limit = this.m.limit();
                                StringBuilder sb2 = new StringBuilder(String.valueOf(limit).length() + 24);
                                sb2.append("Precache abort at ");
                                sb2.append(limit);
                                sb2.append(" bytes");
                                throw new IOException(sb2.toString());
                            }
                        } catch (Exception e) {
                            e = e;
                            String canonicalName = e.getClass().getCanonicalName();
                            String message = e.getMessage();
                            String q = android.support.v4.media.a.q(new StringBuilder(String.valueOf(canonicalName).length() + 1 + String.valueOf(message).length()), canonicalName, ":", message);
                            String r = android.support.v4.media.a.r(new StringBuilder(q.length() + String.valueOf(str3).length() + 34), "Failed to preload url ", str3, " Exception: ", q);
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
                            p(str3, concat, r6, q);
                            return false;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        r6 = str2;
                        String canonicalName2 = e.getClass().getCanonicalName();
                        String message2 = e.getMessage();
                        String q2 = android.support.v4.media.a.q(new StringBuilder(String.valueOf(canonicalName2).length() + 1 + String.valueOf(message2).length()), canonicalName2, ":", message2);
                        String r2 = android.support.v4.media.a.r(new StringBuilder(q2.length() + String.valueOf(str3).length() + 34), "Failed to preload url ", str3, " Exception: ", q2);
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi(r2);
                        p(str3, concat, r6, q2);
                        return false;
                    }
                } catch (Exception e3) {
                    e = e3;
                    str3 = str;
                    str2 = str4;
                    r6 = str2;
                    String canonicalName22 = e.getClass().getCanonicalName();
                    String message22 = e.getMessage();
                    String q22 = android.support.v4.media.a.q(new StringBuilder(String.valueOf(canonicalName22).length() + 1 + String.valueOf(message22).length()), canonicalName22, ":", message22);
                    String r22 = android.support.v4.media.a.r(new StringBuilder(q22.length() + String.valueOf(str3).length() + 34), "Failed to preload url ", str3, " Exception: ", q22);
                    int i22 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(r22);
                    p(str3, concat, r6, q22);
                    return false;
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void o() {
        this.j = true;
    }

    public final ByteBuffer r() {
        synchronized (this.o) {
            try {
                ByteBuffer byteBuffer = this.m;
                if (byteBuffer != null && !this.n) {
                    byteBuffer.flip();
                    this.n = true;
                }
                this.j = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzcgx, com.google.android.gms.common.api.Releasable
    public final void release() {
        s.decrementAndGet();
    }

    public final void s() {
        boolean z;
        zzchc zzchcVar = this.k;
        Iterator it = zzchcVar.f5146a.iterator();
        while (it.hasNext()) {
            for (Map.Entry entry : ((zzhm) it.next()).zzj().entrySet()) {
                try {
                    if ("content-length".equalsIgnoreCase((String) entry.getKey())) {
                        zzchcVar.b = Math.max(zzchcVar.b, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                    }
                } catch (RuntimeException unused) {
                }
            }
            it.remove();
        }
        int i = (int) zzchcVar.b;
        int a2 = (int) this.l.a(this.m);
        int position = this.m.position();
        int round = Math.round((position / i) * a2);
        int i2 = zzcfb.f5098c.get();
        int i3 = zzcfb.f.get();
        String str = this.h;
        String concat = "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzf(str)));
        long j = round;
        if (round > 0) {
            z = true;
        } else {
            z = false;
        }
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgt(this, str, concat, position, i, j, a2, z, i2, i3));
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void n(zzhf zzhfVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void f(zzhf zzhfVar, boolean z, int i) {
    }
}
