package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcfm implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final zzcey f5109c;
    public boolean f = false;

    public zzcfm(zzcey zzceyVar) {
        this.f5109c = zzceyVar;
    }

    public final void a() {
        this.f = true;
        this.f5109c.b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f) {
            this.f5109c.b();
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            zzfxlVar.removeCallbacks(this);
            zzfxlVar.postDelayed(this, 250L);
        }
    }
}
