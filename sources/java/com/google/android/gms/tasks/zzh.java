package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzh implements zzq {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11615c;
    public final Object f = new Object();
    public final OnCanceledListener g;

    public zzh(Executor executor, OnCanceledListener onCanceledListener) {
        this.f11615c = executor;
        this.g = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        if (task.n()) {
            synchronized (this.f) {
                try {
                    if (this.g == null) {
                        return;
                    }
                    this.f11615c.execute(new zzg(this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
