package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzaqv implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzark f4355c;
    public final /* synthetic */ zzaqw f;

    public zzaqv(zzaqw zzaqwVar, zzark zzarkVar) {
        this.f4355c = zzarkVar;
        this.f = zzaqwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f.f.put(this.f4355c);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
