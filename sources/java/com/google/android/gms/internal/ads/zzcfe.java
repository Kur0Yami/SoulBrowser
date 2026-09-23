package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcfe {
    public long b;

    /* renamed from: a, reason: collision with root package name */
    public final long f5100a = TimeUnit.MILLISECONDS.toNanos(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l0)).longValue());

    /* renamed from: c, reason: collision with root package name */
    public boolean f5101c = true;

    public final void a(SurfaceTexture surfaceTexture, final zzcey zzceyVar) {
        if (zzceyVar != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (!this.f5101c) {
                long j = timestamp - this.b;
                if (Math.abs(j) < this.f5100a) {
                    return;
                }
            }
            this.f5101c = false;
            this.b = timestamp;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfd
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcep.this.zzi();
                }
            });
        }
    }
}
