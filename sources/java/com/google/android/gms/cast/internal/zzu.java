package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzu implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzx f3632c;
    public final /* synthetic */ zza f;

    public zzu(zzw zzwVar, zzx zzxVar, zza zzaVar) {
        this.f3632c = zzxVar;
        this.f = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        String str = this.f.f3608c;
        zzx zzxVar = this.f3632c;
        if (!CastUtils.c(str, zzxVar.l)) {
            zzxVar.l = str;
            z = true;
        } else {
            z = false;
        }
        zzx.B.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzxVar.n));
        Cast.Listener listener = zzxVar.g;
        if (listener != null && (z || zzxVar.n)) {
            listener.d();
        }
        zzxVar.n = false;
    }
}
