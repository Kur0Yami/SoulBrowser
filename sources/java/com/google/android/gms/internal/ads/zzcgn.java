package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcgn implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcgp f5132c;

    public zzcgn(zzcgp zzcgpVar) {
        this.f5132c = zzcgpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcgq zzB = com.google.android.gms.ads.internal.zzt.zzB();
        zzB.f5135c.remove(this.f5132c);
    }
}
