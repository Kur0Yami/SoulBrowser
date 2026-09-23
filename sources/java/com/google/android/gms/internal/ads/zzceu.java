package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzceu implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f5090c;
    public final /* synthetic */ zzcey f;

    public zzceu(zzcey zzceyVar, boolean z) {
        this.f5090c = z;
        this.f = zzceyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.c("windowVisibilityChanged", "isVisible", String.valueOf(this.f5090c));
    }
}
