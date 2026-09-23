package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;

/* loaded from: classes.dex */
final class zzabr implements zzadi {
    public final /* synthetic */ zzabw b;

    public zzabr(zzabw zzabwVar) {
        this.b = zzabwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadi
    public final void zza() {
        zzmh zzmhVar = this.b.L;
        if (zzmhVar != null) {
            zzmhVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadi
    public final void zzb() {
        zzabw zzabwVar = this.b;
        Surface surface = zzabwVar.U0;
        if (surface != null) {
            zzadf zzadfVar = zzabwVar.H0;
            Handler handler = zzadfVar.f3922a;
            if (handler != null) {
                handler.post(new zzada(zzadfVar, surface, SystemClock.elapsedRealtime()));
            }
            zzabwVar.X0 = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadi
    public final void zzc() {
        zzabw zzabwVar = this.b;
        if (zzabwVar.U0 != null) {
            zzabwVar.v0(0, 1);
        }
    }
}
