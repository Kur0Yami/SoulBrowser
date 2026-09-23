package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
final class zzp<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, zzq {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11623c;
    public final SuccessContinuation f;
    public final zzw g;

    public zzp(Executor executor, SuccessContinuation successContinuation, zzw zzwVar) {
        this.f11623c = executor;
        this.f = successContinuation;
        this.g = zzwVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void a() {
        this.g.u();
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void b(Task task) {
        this.f11623c.execute(new zzo(this, task));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void c(Exception exc) {
        this.g.t(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.g.r(obj);
    }
}
