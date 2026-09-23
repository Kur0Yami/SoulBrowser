package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzd implements zzq {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11611c;
    public final Continuation f;
    public final zzw g;

    public zzd(Executor executor, Continuation continuation, zzw zzwVar) {
        this.f11611c = executor;
        this.f = continuation;
        this.g = zzwVar;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        this.f11611c.execute(new zzc(this, task));
    }
}
