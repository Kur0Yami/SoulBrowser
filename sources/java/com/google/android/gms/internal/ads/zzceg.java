package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzceg implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzceo f5079c;

    public zzceg(zzceo zzceoVar) {
        this.f5079c = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcey zzceyVar = this.f5079c.u;
        if (zzceyVar != null) {
            zzceyVar.i();
        }
    }
}
