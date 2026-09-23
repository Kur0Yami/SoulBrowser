package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes.dex */
final class zzsv implements zzrc {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzsw f9262a;

    public final void a(final Exception exc) {
        zzee.f("MediaCodecAudioRenderer", "Audio sink error", exc);
        final zzqx zzqxVar = this.f9262a.G0;
        Handler handler = zzqxVar.f9206a;
        if (handler != null) {
            handler.post(new Runnable(exc) { // from class: com.google.android.gms.internal.ads.zzqt
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzozVar.n(zzozVar.r(), 1014, new Object());
                }
            });
        }
    }
}
