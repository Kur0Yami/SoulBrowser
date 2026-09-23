package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzceh implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5080c;
    public final /* synthetic */ String f;
    public final /* synthetic */ zzceo g;

    public zzceh(zzceo zzceoVar, String str, String str2) {
        this.f5080c = str;
        this.f = str2;
        this.g = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcey zzceyVar = this.g.u;
        if (zzceyVar != null) {
            zzceyVar.j(this.f5080c, this.f);
        }
    }
}
