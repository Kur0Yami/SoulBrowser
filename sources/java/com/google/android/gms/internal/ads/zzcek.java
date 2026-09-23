package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcek implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzceo f5083c;

    public zzcek(zzceo zzceoVar) {
        this.f5083c = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzceo zzceoVar = this.f5083c;
        zzcey zzceyVar = zzceoVar.u;
        if (zzceyVar != null) {
            zzceyVar.h();
            zzceoVar.u.k();
        }
    }
}
