package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbav extends zzbbh {
    public zzbav(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "8W5EiIZWvw8ca0gdEf2baMelwD0v1LgWFEv6AqIRDGIzRlZJKgzzVYcusXATxgKN", "ZXwHOojdfPkjtU4/T1kRX8Zucxdzz/LL+/XimOcPDrc=", zzavsVar, i, 3);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.zzayz, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G3);
        bool.getClass();
        String str = (String) this.e.invoke(null, this.f4531a.f4510a, bool);
        ?? obj = new Object();
        obj.f4490a = -1L;
        obj.b = -1L;
        HashMap b = zzaxi.b(str);
        if (b != null) {
            obj.f4490a = ((Long) b.get(0)).longValue();
            obj.b = ((Long) b.get(1)).longValue();
        }
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            long j = obj.f4490a;
            zzavsVar.k();
            ((zzawp) zzavsVar.f).J0(j);
            long j2 = obj.b;
            zzavsVar.k();
            ((zzawp) zzavsVar.f).c0(j2);
        }
    }
}
