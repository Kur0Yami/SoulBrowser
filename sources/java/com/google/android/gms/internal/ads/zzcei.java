package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcei implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzceo f5081c;

    public zzcei(zzceo zzceoVar) {
        this.f5081c = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcey zzceyVar = this.f5081c.u;
        if (zzceyVar != null) {
            zzceyVar.e();
        }
    }
}
