package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzfqb extends com.google.android.gms.ads.internal.client.zzcj {

    /* renamed from: c, reason: collision with root package name */
    public final zzfqh f7554c;
    public final zzfpu f;

    public zzfqb(zzfqh zzfqhVar, zzfpu zzfpuVar) {
        this.f7554c = zzfqhVar;
        this.f = zzfpuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zze(List list, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        this.f7554c.a(list, zzceVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzf(String str) {
        boolean g;
        zzfqh zzfqhVar = this.f7554c;
        synchronized (zzfqhVar) {
            g = zzfqhVar.g(str, AdFormat.REWARDED);
        }
        return g;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzcaf zzg(String str) {
        zzcaf zzcafVar;
        zzfqh zzfqhVar = this.f7554c;
        synchronized (zzfqhVar) {
            zzcafVar = (zzcaf) zzfqhVar.h(AdFormat.REWARDED, zzcaf.class, str);
        }
        return zzcafVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzh(String str) {
        boolean g;
        zzfqh zzfqhVar = this.f7554c;
        synchronized (zzfqhVar) {
            g = zzfqhVar.g(str, AdFormat.APP_OPEN_AD);
        }
        return g;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzbed zzi(String str) {
        zzbed zzbedVar;
        zzfqh zzfqhVar = this.f7554c;
        synchronized (zzfqhVar) {
            zzbedVar = (zzbed) zzfqhVar.h(AdFormat.APP_OPEN_AD, zzbed.class, str);
        }
        return zzbedVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzj(String str) {
        boolean g;
        zzfqh zzfqhVar = this.f7554c;
        synchronized (zzfqhVar) {
            g = zzfqhVar.g(str, AdFormat.INTERSTITIAL);
        }
        return g;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final com.google.android.gms.ads.internal.client.zzbx zzk(String str) {
        com.google.android.gms.ads.internal.client.zzbx zzbxVar;
        zzfqh zzfqhVar = this.f7554c;
        synchronized (zzfqhVar) {
            zzbxVar = (com.google.android.gms.ads.internal.client.zzbx) zzfqhVar.h(AdFormat.INTERSTITIAL, com.google.android.gms.ads.internal.client.zzbx.class, str);
        }
        return zzbxVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzl(zzbsz zzbszVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzm(String str, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzch zzchVar) {
        return this.f.a(str, zzftVar, zzchVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzn(int i, String str) {
        String n;
        boolean z;
        Long l;
        int i2;
        AdFormat adFormat = AdFormat.getAdFormat(i);
        int i3 = 0;
        if (adFormat == null) {
            return false;
        }
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            try {
                Clock clock = zzfpuVar.g;
                long currentTimeMillis = clock.currentTimeMillis();
                HashMap hashMap = zzfpuVar.f7546a;
                if (!hashMap.containsKey(adFormat)) {
                    return false;
                }
                zzfqy zzfqyVar = (zzfqy) ((Map) hashMap.get(adFormat)).get(str);
                zzfqk zzfqkVar = null;
                if (zzfqyVar == null) {
                    n = null;
                } else {
                    n = zzfqyVar.n();
                }
                if (n != null && adFormat.equals(zzfqyVar.p())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    l = Long.valueOf(clock.currentTimeMillis());
                } else {
                    l = null;
                }
                if (zzfqyVar != null) {
                    zzfqj zzfqjVar = new zzfqj(zzfqyVar.e.zza, adFormat);
                    zzfqjVar.f7565c = str;
                    zzfqkVar = new zzfqk(zzfqjVar);
                }
                zzfqk zzfqkVar2 = zzfqkVar;
                zzfqd zzfqdVar = zzfpuVar.f7547c;
                if (zzfqyVar == null) {
                    i2 = 0;
                } else {
                    i2 = zzfqyVar.e.zzd;
                }
                if (zzfqyVar != null) {
                    i3 = zzfqyVar.q();
                }
                zzfqdVar.c(i2, i3, currentTimeMillis, l, n, zzfqkVar2, "2");
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final com.google.android.gms.ads.internal.client.zzbx zzo(String str) {
        com.google.android.gms.ads.internal.client.zzbx zzbxVar;
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            zzbxVar = (com.google.android.gms.ads.internal.client.zzbx) zzfpuVar.d(AdFormat.INTERSTITIAL, com.google.android.gms.ads.internal.client.zzbx.class, str);
        }
        return zzbxVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzbed zzp(String str) {
        zzbed zzbedVar;
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            zzbedVar = (zzbed) zzfpuVar.d(AdFormat.APP_OPEN_AD, zzbed.class, str);
        }
        return zzbedVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzcaf zzq(String str) {
        zzcaf zzcafVar;
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            zzcafVar = (zzcaf) zzfpuVar.d(AdFormat.REWARDED, zzcaf.class, str);
        }
        return zzcafVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final com.google.android.gms.ads.internal.client.zzft zzr(int i, String str) {
        String str2;
        int i2;
        AdFormat adFormat = AdFormat.getAdFormat(i);
        if (adFormat == null) {
            return null;
        }
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            HashMap hashMap = zzfpuVar.f7546a;
            if (hashMap.containsKey(adFormat)) {
                zzfqy zzfqyVar = (zzfqy) ((Map) hashMap.get(adFormat)).get(str);
                zzfqd zzfqdVar = zzfpuVar.f7547c;
                long currentTimeMillis = zzfpuVar.g.currentTimeMillis();
                if (zzfqyVar == null) {
                    str2 = null;
                } else {
                    str2 = zzfqyVar.e.zza;
                }
                int i3 = -1;
                if (zzfqyVar == null) {
                    i2 = -1;
                } else {
                    i2 = zzfqyVar.e.zzd;
                }
                if (zzfqyVar != null) {
                    i3 = zzfqyVar.q();
                }
                zzfqdVar.f("pgc", currentTimeMillis, str, str2, adFormat, i2, i3, 1);
                if (zzfqyVar != null) {
                    return zzfqyVar.e;
                }
            }
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final Bundle zzs(int i) {
        HashMap hashMap;
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            try {
                hashMap = new HashMap();
                AdFormat adFormat = AdFormat.getAdFormat(i);
                if (adFormat != null) {
                    HashMap hashMap2 = zzfpuVar.f7546a;
                    if (hashMap2.containsKey(adFormat)) {
                        for (zzfqy zzfqyVar : ((Map) hashMap2.get(adFormat)).values()) {
                            hashMap.put(zzfqyVar.l, zzfqyVar.e);
                        }
                        zzfpuVar.f7547c.f("pgcs", zzfpuVar.g.currentTimeMillis(), null, null, adFormat, -1, -1, hashMap.size());
                    }
                }
            } finally {
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : hashMap.entrySet()) {
            bundle.putByteArray((String) entry.getKey(), SafeParcelableSerializer.serializeToBytes((com.google.android.gms.ads.internal.client.zzft) entry.getValue()));
        }
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final int zzt(int i, String str) {
        String str2;
        int i2;
        AdFormat adFormat = AdFormat.getAdFormat(i);
        int i3 = 0;
        if (adFormat == null) {
            return 0;
        }
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            HashMap hashMap = zzfpuVar.f7546a;
            if (!hashMap.containsKey(adFormat)) {
                return 0;
            }
            zzfqy zzfqyVar = (zzfqy) ((Map) hashMap.get(adFormat)).get(str);
            if (zzfqyVar != null) {
                i3 = zzfqyVar.q();
            }
            int i4 = i3;
            zzfqd zzfqdVar = zzfpuVar.f7547c;
            long currentTimeMillis = zzfpuVar.g.currentTimeMillis();
            if (zzfqyVar == null) {
                str2 = null;
            } else {
                str2 = zzfqyVar.e.zza;
            }
            String str3 = str2;
            if (zzfqyVar == null) {
                i2 = -1;
            } else {
                i2 = zzfqyVar.e.zzd;
            }
            zzfqdVar.f("pnav", currentTimeMillis, str, str3, adFormat, i2, i4, 1);
            return i4;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzu(int i, String str) {
        zzfqy zzfqyVar;
        AdFormat adFormat = AdFormat.getAdFormat(i);
        if (adFormat == null) {
            return false;
        }
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            try {
                HashMap hashMap = zzfpuVar.f7546a;
                if (hashMap.containsKey(adFormat) && (zzfqyVar = (zzfqy) ((Map) hashMap.get(adFormat)).get(str)) != null) {
                    ((Map) hashMap.get(adFormat)).remove(str);
                    zzfqyVar.g.set(false);
                    zzfqyVar.p.set(false);
                    zzfpp zzfppVar = zzfpuVar.i;
                    if (zzfppVar != null) {
                        zzfppVar.e(str, adFormat);
                    }
                    zzfqyVar.s();
                    zzfqd zzfqdVar = zzfpuVar.f7547c;
                    long currentTimeMillis = zzfpuVar.g.currentTimeMillis();
                    com.google.android.gms.ads.internal.client.zzft zzftVar = zzfqyVar.e;
                    zzfqdVar.f("pd", currentTimeMillis, str, zzftVar.zza, adFormat, zzftVar.zzd, zzfqyVar.q(), 1);
                    return true;
                }
                return false;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzv(int i) {
        zzfpu zzfpuVar = this.f;
        synchronized (zzfpuVar) {
            try {
                AdFormat adFormat = AdFormat.getAdFormat(i);
                if (adFormat != null) {
                    HashMap hashMap = zzfpuVar.f7546a;
                    if (hashMap.containsKey(adFormat)) {
                        Map map = (Map) hashMap.get(adFormat);
                        int size = map.size();
                        for (String str : map.keySet()) {
                            zzfqy zzfqyVar = (zzfqy) map.get(str);
                            if (zzfqyVar != null) {
                                zzfqyVar.g.set(false);
                                zzfqyVar.p.set(false);
                                zzfpp zzfppVar = zzfpuVar.i;
                                if (zzfppVar != null) {
                                    zzfppVar.e(str, adFormat);
                                }
                                zzfqyVar.s();
                                String valueOf = String.valueOf(str);
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzh("Destroyed ad preloader for preloadId: ".concat(valueOf));
                            }
                        }
                        map.clear();
                        String concat = "Destroyed all ad preloaders for ad format: ".concat(adFormat.toString());
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh(concat);
                        zzfpuVar.f7547c.f("pda", zzfpuVar.g.currentTimeMillis(), null, null, adFormat, -1, -1, size);
                    }
                }
            } finally {
            }
        }
    }
}
