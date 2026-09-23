package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class zzban extends zzbbh {
    public final zzazu h;

    public zzban(zzazt zzaztVar, zzavs zzavsVar, int i, zzazu zzazuVar) {
        super(zzaztVar, "OKoG374XK3cB1cjYFPuO/Bg6vy6AufzuCyu4QCURxkWhJwL4+NqQjs8XziSHB+CQ", "PjHrXBXcXoGkJe75zH8RZ0khapXmOV4o2gX+YgkGdus=", zzavsVar, i, 85);
        this.h = zzazuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        Method method = this.e;
        zzazu zzazuVar = this.h;
        long[] jArr = (long[]) method.invoke(null, Long.valueOf(zzazuVar.f4513c), Long.valueOf(zzazuVar.d), Long.valueOf(zzazuVar.e), Long.valueOf(zzazuVar.f));
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            long j = jArr[0];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).m0(j);
            long j2 = jArr[1];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).n0(j2);
        }
    }
}
