package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcel implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzceo f5084c;

    public zzcel(zzceo zzceoVar) {
        this.f5084c = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzceo zzceoVar = this.f5084c;
        zzcey zzceyVar = zzceoVar.u;
        if (zzceyVar != null) {
            if (!zzceoVar.v) {
                zzceyVar.m();
                zzceoVar.v = true;
            }
            zzceoVar.u.g();
        }
    }
}
