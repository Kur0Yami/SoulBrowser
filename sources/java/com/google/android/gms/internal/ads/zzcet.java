package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcet implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcey f5089c;

    public zzcet(zzcey zzceyVar) {
        this.f5089c = zzceyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5089c.c("surfaceDestroyed", new String[0]);
    }
}
