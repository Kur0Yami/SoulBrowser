package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzfqh {

    /* renamed from: c, reason: collision with root package name */
    public final zzfqz f7561c;
    public final zzfqd d;
    public final Context e;
    public volatile ConnectivityManager f;
    public final Clock h;
    public AtomicInteger i;
    public final AtomicBoolean g = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f7560a = new ConcurrentHashMap();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    public zzfqh(zzfqz zzfqzVar, zzfqd zzfqdVar, Context context, Clock clock) {
        this.f7561c = zzfqzVar;
        this.d = zzfqdVar;
        this.e = context;
        this.h = clock;
    }

    public static String b(String str, AdFormat adFormat) {
        String name;
        if (adFormat == null) {
            name = "NULL";
        } else {
            name = adFormat.name();
        }
        return android.support.v4.media.a.q(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length()), str, "#", name);
    }

    public final synchronized void a(List list, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        try {
            if (!this.g.getAndSet(true)) {
                if (this.f == null) {
                    synchronized (this) {
                        if (this.f == null) {
                            try {
                                this.f = (ConnectivityManager) this.e.getSystemService("connectivity");
                            } catch (ClassCastException e) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to get connectivity manager", e);
                            }
                        }
                    }
                }
                if (PlatformVersion.isAtLeastO() && this.f != null) {
                    try {
                        this.f.registerDefaultNetworkCallback(new zzfqg(this));
                    } catch (RuntimeException e2) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to register network callback", e2);
                        this.i = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I)).intValue());
                    }
                } else {
                    this.i = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I)).intValue());
                }
                com.google.android.gms.ads.internal.zzt.zzg().b(new zzfqf(this));
            }
            ArrayList e3 = e(list);
            EnumMap enumMap = new EnumMap(AdFormat.class);
            int size = e3.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = e3.get(i3);
                i3++;
                com.google.android.gms.ads.internal.client.zzft zzftVar = (com.google.android.gms.ads.internal.client.zzft) obj;
                String str = zzftVar.zza;
                AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
                zzfqy a2 = this.f7561c.a(zzftVar, zzceVar);
                if (adFormat != null && a2 != null) {
                    AtomicInteger atomicInteger = this.i;
                    if (atomicInteger != null) {
                        a2.o(atomicInteger.get());
                    }
                    zzfqd zzfqdVar = this.d;
                    a2.r = zzfqdVar;
                    f(b(str, adFormat), a2);
                    enumMap.put((EnumMap) adFormat, (AdFormat) Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzd(enumMap, adFormat, 0)).intValue() + 1));
                    zzfqdVar.a(zzftVar.zzd, this.h.currentTimeMillis(), new zzfqk(new zzfqj(str, adFormat)), "1");
                }
            }
            this.d.b(enumMap, this.h.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(boolean z) {
        synchronized (this) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y)).booleanValue()) {
                d(z);
            }
        }
    }

    public final synchronized void d(boolean z) {
        try {
            if (z) {
                Iterator it = this.f7560a.values().iterator();
                while (it.hasNext()) {
                    ((zzfqy) it.next()).m();
                }
            } else {
                Iterator it2 = this.f7560a.values().iterator();
                while (it2.hasNext()) {
                    ((zzfqy) it2.next()).g.set(false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00fe, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.B)).booleanValue() != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.ArrayList e(java.util.List r9) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfqh.e(java.util.List):java.util.ArrayList");
    }

    public final synchronized void f(String str, zzfqy zzfqyVar) {
        zzfqyVar.i();
        this.f7560a.put(str, zzfqyVar);
    }

    public final synchronized boolean g(String str, AdFormat adFormat) {
        boolean z;
        Long l;
        int i;
        try {
            Clock clock = this.h;
            long currentTimeMillis = clock.currentTimeMillis();
            zzfqy i2 = i(str, adFormat);
            int i3 = 0;
            if (i2 != null && i2.k()) {
                z = true;
            } else {
                z = false;
            }
            String str2 = null;
            if (z) {
                l = Long.valueOf(clock.currentTimeMillis());
            } else {
                l = null;
            }
            zzfqk zzfqkVar = new zzfqk(new zzfqj(str, adFormat));
            zzfqd zzfqdVar = this.d;
            if (i2 == null) {
                i = 0;
            } else {
                i = i2.e.zzd;
            }
            if (i2 != null) {
                i3 = i2.q();
            }
            if (i2 != null) {
                str2 = i2.n();
            }
            zzfqdVar.c(i, i3, currentTimeMillis, l, str2, zzfqkVar, "1");
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    public final synchronized Object h(AdFormat adFormat, Class cls, String str) {
        Object cast;
        zzfqk zzfqkVar = new zzfqk(new zzfqj(str, adFormat));
        zzfqd zzfqdVar = this.d;
        Clock clock = this.h;
        zzfqdVar.g("poll_ad", "ppac_ts", clock.currentTimeMillis(), -1, -1, null, zzfqkVar, "1");
        zzfqy i = i(str, adFormat);
        if (i == null) {
            return null;
        }
        try {
            String n = i.n();
            Object l = i.l();
            if (l == null) {
                cast = null;
            } else {
                cast = cls.cast(l);
            }
            if (cast != null) {
                zzfqdVar.d(clock.currentTimeMillis(), i.e.zzd, i.q(), n, zzfqkVar, "1");
            }
            return cast;
        } catch (ClassCastException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("PreloadAdManager.pollAd", e);
            com.google.android.gms.ads.internal.util.zze.zzb("Unable to cast ad to the requested type:".concat(cls.getName()), e);
            return null;
        }
    }

    public final synchronized zzfqy i(String str, AdFormat adFormat) {
        return (zzfqy) this.f7560a.get(b(str, adFormat));
    }
}
