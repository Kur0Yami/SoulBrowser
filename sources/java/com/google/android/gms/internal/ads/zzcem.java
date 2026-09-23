package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcem implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzceo f5085c;

    public zzcem(zzceo zzceoVar) {
        this.f5085c = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcey zzceyVar = this.f5085c.u;
        if (zzceyVar != null) {
            zzceyVar.h();
        }
    }
}
