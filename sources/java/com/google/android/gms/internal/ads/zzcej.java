package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcej implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5082c;
    public final /* synthetic */ int f;
    public final /* synthetic */ zzceo g;

    public zzcej(zzceo zzceoVar, int i, int i2) {
        this.f5082c = i;
        this.f = i2;
        this.g = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcey zzceyVar = this.g.u;
        if (zzceyVar != null) {
            zzceyVar.l(this.f5082c, this.f);
        }
    }
}
