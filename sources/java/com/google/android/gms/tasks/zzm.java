package com.google.android.gms.tasks;

/* loaded from: classes3.dex */
final class zzm implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Task f11620c;
    public final /* synthetic */ zzn f;

    public zzm(zzn zznVar, Task task) {
        this.f11620c = task;
        this.f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f;
        synchronized (zznVar.f) {
            try {
                OnSuccessListener onSuccessListener = zznVar.g;
                if (onSuccessListener != null) {
                    onSuccessListener.onSuccess(this.f11620c.m());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
