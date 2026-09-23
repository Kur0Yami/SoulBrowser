package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzces implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcey f5088c;

    public zzces(zzcey zzceyVar) {
        this.f5088c = zzceyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5088c.c("surfaceCreated", new String[0]);
    }
}
