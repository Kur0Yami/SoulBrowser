package com.google.android.gms.tasks;

/* loaded from: classes3.dex */
final class zzi implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Task f11616c;
    public final /* synthetic */ zzj f;

    public zzi(zzj zzjVar, Task task) {
        this.f11616c = task;
        this.f = zzjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzj zzjVar = this.f;
        synchronized (zzjVar.f) {
            try {
                OnCompleteListener onCompleteListener = zzjVar.g;
                if (onCompleteListener != null) {
                    onCompleteListener.onComplete(this.f11616c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
