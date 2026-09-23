package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzfpu {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7546a;
    public final zzfqz b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfqd f7547c;
    public final Context d;
    public volatile ConnectivityManager e;
    public final AtomicBoolean f = new AtomicBoolean(false);
    public final Clock g;
    public AtomicInteger h;
    public final zzfpp i;

    public zzfpu(zzfqz zzfqzVar, zzfqd zzfqdVar, Context context, Clock clock, zzfpp zzfppVar) {
        HashMap hashMap = new HashMap();
        this.f7546a = hashMap;
        hashMap.put(AdFormat.APP_OPEN_AD, new HashMap());
        hashMap.put(AdFormat.INTERSTITIAL, new HashMap());
        hashMap.put(AdFormat.REWARDED, new HashMap());
        this.b = zzfqzVar;
        this.f7547c = zzfqdVar;
        this.d = context;
        this.g = clock;
        this.i = zzfppVar;
    }

    public final synchronized boolean a(String str, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzch zzchVar) {
        zzfqy b;
        try {
            if (!this.f.getAndSet(true)) {
                if (this.e == null) {
                    synchronized (this) {
                        if (this.e == null) {
                            try {
                                this.e = (ConnectivityManager) this.d.getSystemService("connectivity");
                            } catch (ClassCastException e) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to get connectivity manager", e);
                            }
                        }
                    }
                }
                if (PlatformVersion.isAtLeastO() && this.e != null) {
                    try {
                        this.e.registerDefaultNetworkCallback(new zzfps(this));
                    } catch (RuntimeException e2) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to register network callback", e2);
                        this.h = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I)).intValue());
                    }
                } else {
                    this.h = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I)).intValue());
                }
                com.google.android.gms.ads.internal.zzt.zzg().b(new zzfpt(this));
            }
            AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
            if (adFormat != null) {
                HashMap hashMap = this.f7546a;
                if (hashMap.containsKey(adFormat) && !((Map) hashMap.get(adFormat)).containsKey(str) && e(adFormat) && (b = this.b.b(str, zzftVar, zzchVar)) != null) {
                    AtomicInteger atomicInteger = this.h;
                    if (atomicInteger != null) {
                        b.o(atomicInteger.get());
                    }
                    zzfqd zzfqdVar = this.f7547c;
                    b.r = zzfqdVar;
                    zzfpp zzfppVar = this.i;
                    if (zzfppVar != null) {
                        zzfppVar.d(str, adFormat, b);
                    } else {
                        b.i();
                    }
                    ((Map) hashMap.get(adFormat)).put(str, b);
                    zzfqj zzfqjVar = new zzfqj(zzftVar.zza, adFormat);
                    zzfqjVar.f7565c = str;
                    zzfqdVar.a(zzftVar.zzd, this.g.currentTimeMillis(), new zzfqk(zzfqjVar), "2");
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(boolean z) {
        synchronized (this) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y)).booleanValue()) {
                c(z);
            }
        }
    }

    public final synchronized void c(boolean z) {
        try {
            Iterator it = this.f7546a.values().iterator();
            while (it.hasNext()) {
                for (zzfqy zzfqyVar : ((Map) it.next()).values()) {
                    if (z) {
                        zzfqyVar.m();
                    } else {
                        zzfqyVar.g.set(false);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Object d(AdFormat adFormat, Class cls, String str) {
        Object cast;
        zzfqd zzfqdVar = this.f7547c;
        Clock clock = this.g;
        zzfqdVar.g("poll_ad", "ppacwe_ts", clock.currentTimeMillis(), -1, -1, null, null, "2");
        HashMap hashMap = this.f7546a;
        if (!hashMap.containsKey(adFormat)) {
            return null;
        }
        zzfqy zzfqyVar = (zzfqy) ((Map) hashMap.get(adFormat)).get(str);
        if (zzfqyVar != null && adFormat.equals(zzfqyVar.p())) {
            zzfqj zzfqjVar = new zzfqj(zzfqyVar.e.zza, zzfqyVar.p());
            zzfqjVar.f7565c = str;
            zzfqk zzfqkVar = new zzfqk(zzfqjVar);
            zzfqdVar.g("poll_ad", "ppac_ts", clock.currentTimeMillis(), zzfqyVar.e.zzd, zzfqyVar.q(), null, zzfqkVar, "2");
            try {
                String n = zzfqyVar.n();
                Object l = zzfqyVar.l();
                if (l == null) {
                    cast = null;
                } else {
                    cast = cls.cast(l);
                }
                if (cast != null) {
                    zzfqdVar.d(clock.currentTimeMillis(), zzfqyVar.e.zzd, zzfqyVar.q(), n, zzfqkVar, "2");
                }
                return cast;
            } catch (ClassCastException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("PreloadAdManager.pollAd", e);
                com.google.android.gms.ads.internal.util.zze.zzb("Unable to cast ad to the requested type:".concat(cls.getName()), e);
                return null;
            }
        }
        return null;
    }

    public final synchronized boolean e(AdFormat adFormat) {
        int i;
        int max;
        try {
            HashMap hashMap = this.f7546a;
            if (hashMap.containsKey(adFormat)) {
                i = ((Map) hashMap.get(adFormat)).size();
            } else {
                i = 0;
            }
            int ordinal = adFormat.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        max = 0;
                    } else {
                        max = Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s5)).intValue(), 1);
                    }
                } else {
                    max = Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r5)).intValue(), 1);
                }
            } else {
                max = Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q5)).intValue(), 1);
            }
        } finally {
        }
        if (i >= max) {
            return false;
        }
        return true;
    }
}
