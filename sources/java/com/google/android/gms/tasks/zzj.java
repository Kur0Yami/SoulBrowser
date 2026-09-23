package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzj implements zzq {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11617c;
    public final Object f = new Object();
    public final OnCompleteListener g;

    public zzj(Executor executor, OnCompleteListener onCompleteListener) {
        this.f11617c = executor;
        this.g = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        synchronized (this.f) {
            try {
                if (this.g == null) {
                    return;
                }
                this.f11617c.execute(new zzi(this, task));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
