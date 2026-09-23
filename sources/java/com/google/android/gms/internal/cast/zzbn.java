package com.google.android.gms.internal.cast;

import android.os.Looper;
import androidx.mediarouter.media.MediaRouter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbn implements zzaw {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbq f9634a;

    public zzbn(zzbq zzbqVar) {
        this.f9634a = zzbqVar;
    }

    @Override // com.google.android.gms.internal.cast.zzaw
    public final void zza() {
        this.f9634a.p();
    }

    @Override // com.google.android.gms.internal.cast.zzaw
    public final void zzb() {
        final zzbq zzbqVar = this.f9634a;
        zzbqVar.getClass();
        zzbq.f.b("Stopping RouteDiscovery.", new Object[0]);
        zzbqVar.f9638c.clear();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzby zzbyVar = zzbqVar.e;
            if (zzbyVar.b == null) {
                zzbyVar.b = MediaRouter.h(zzbyVar.f9643a);
            }
            MediaRouter mediaRouter = zzbyVar.b;
            if (mediaRouter != null) {
                mediaRouter.p(zzbqVar);
                return;
            }
            return;
        }
        new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbp
            @Override // java.lang.Runnable
            public final void run() {
                zzbq zzbqVar2 = zzbq.this;
                zzby zzbyVar2 = zzbqVar2.e;
                if (zzbyVar2.b == null) {
                    zzbyVar2.b = MediaRouter.h(zzbyVar2.f9643a);
                }
                MediaRouter mediaRouter2 = zzbyVar2.b;
                if (mediaRouter2 != null) {
                    mediaRouter2.p(zzbqVar2);
                }
            }
        });
    }
}
