package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class Task<TResult> {
    public Task a(OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    public void b(Executor executor, OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public void c(OnCompleteListener onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public void d(Executor executor, OnCompleteListener onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract Task e(OnFailureListener onFailureListener);

    public abstract Task f(Executor executor, OnFailureListener onFailureListener);

    public abstract Task g(OnSuccessListener onSuccessListener);

    public abstract Task h(Executor executor, OnSuccessListener onSuccessListener);

    public Task i(Continuation continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public Task j(Executor executor, Continuation continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public Task k(Continuation continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract Exception l();

    public abstract Object m();

    public abstract boolean n();

    public abstract boolean o();

    public abstract boolean p();

    public Task q(SuccessContinuation successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
