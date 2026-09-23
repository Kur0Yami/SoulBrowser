package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzara implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final zzark f4360c;
    public final zzarq f;
    public final Runnable g;

    public zzara(zzark zzarkVar, zzarq zzarqVar, Runnable runnable) {
        this.f4360c = zzarkVar;
        this.f = zzarqVar;
        this.g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzark zzarkVar = this.f4360c;
        zzarkVar.zzl();
        zzarq zzarqVar = this.f;
        zzart zzartVar = zzarqVar.f4371c;
        if (zzartVar == null) {
            zzarkVar.d(zzarqVar.f4370a);
        } else {
            zzarkVar.zzt(zzartVar);
        }
        if (zzarqVar.d) {
            zzarkVar.zzc("intermediate-response");
        } else {
            zzarkVar.a("done");
        }
        Runnable runnable = this.g;
        if (runnable != null) {
            runnable.run();
        }
    }
}
