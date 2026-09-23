package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzbag extends zzbbh {
    public static final zzbbi i = new zzbbi();
    public final Context h;

    public zzbag(zzazt zzaztVar, zzavs zzavsVar, int i2, Context context) {
        super(zzaztVar, "yCCrg1bENISzqqs7fgrfIgqRoB89Hc58RpoZe38mDWknXggRGBdzPAEdsprm/nAh", "ygsxUks9qSJOiPMXEo9qlLCVVsFNNRfyc6WjXaB0M8U=", zzavsVar, i2, 29);
        this.h = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        zzavsVar.k();
        ((zzawp) zzavsVar.f).D("E");
        Context context = this.h;
        AtomicReference a2 = i.a(context.getPackageName());
        if (a2.get() == null) {
            synchronized (a2) {
                try {
                    if (a2.get() == null) {
                        a2.set((String) this.e.invoke(null, context));
                    }
                } finally {
                }
            }
        }
        String str = (String) a2.get();
        zzavs zzavsVar2 = this.d;
        synchronized (zzavsVar2) {
            String encodeToString = Base64.encodeToString(str.getBytes(), 11);
            zzavsVar2.k();
            ((zzawp) zzavsVar2.f).D(encodeToString);
        }
    }
}
