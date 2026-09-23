package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzn implements zzq {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11621c;
    public final Object f = new Object();
    public final OnSuccessListener g;

    public zzn(Executor executor, OnSuccessListener onSuccessListener) {
        this.f11621c = executor;
        this.g = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        if (task.p()) {
            synchronized (this.f) {
                try {
                    if (this.g == null) {
                        return;
                    }
                    this.f11621c.execute(new zzm(this, task));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
