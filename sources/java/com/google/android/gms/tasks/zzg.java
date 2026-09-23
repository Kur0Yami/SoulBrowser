package com.google.android.gms.tasks;

/* loaded from: classes3.dex */
final class zzg implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzh f11614c;

    public zzg(zzh zzhVar) {
        this.f11614c = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzh zzhVar = this.f11614c;
        synchronized (zzhVar.f) {
            try {
                OnCanceledListener onCanceledListener = zzhVar.g;
                if (onCanceledListener != null) {
                    onCanceledListener.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
