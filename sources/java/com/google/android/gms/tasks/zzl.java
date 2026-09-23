package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzl implements zzq {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11619c;
    public final Object f = new Object();
    public final OnFailureListener g;

    public zzl(Executor executor, OnFailureListener onFailureListener) {
        this.f11619c = executor;
        this.g = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        if (!task.p() && !task.n()) {
            synchronized (this.f) {
                try {
                    if (this.g == null) {
                        return;
                    }
                    this.f11619c.execute(new zzk(this, task));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
