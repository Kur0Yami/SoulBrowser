package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zzk implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Task f11618c;
    public final /* synthetic */ zzl f;

    public zzk(zzl zzlVar, Task task) {
        this.f11618c = task;
        this.f = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzl zzlVar = this.f;
        synchronized (zzlVar.f) {
            try {
                OnFailureListener onFailureListener = zzlVar.g;
                if (onFailureListener != null) {
                    onFailureListener.c((Exception) Preconditions.checkNotNull(this.f11618c.l()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
