package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzw<TResult> extends Task<TResult> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11628a = new Object();
    public final zzr b = new zzr();

    /* renamed from: c, reason: collision with root package name */
    public boolean f11629c;
    public volatile boolean d;
    public Object e;
    public Exception f;

    @Override // com.google.android.gms.tasks.Task
    public final Task a(OnCanceledListener onCanceledListener) {
        b(TaskExecutors.f11606a, onCanceledListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final void b(Executor executor, OnCanceledListener onCanceledListener) {
        this.b.a(new zzh(executor, onCanceledListener));
        w();
    }

    @Override // com.google.android.gms.tasks.Task
    public final void c(OnCompleteListener onCompleteListener) {
        this.b.a(new zzj(TaskExecutors.f11606a, onCompleteListener));
        w();
    }

    @Override // com.google.android.gms.tasks.Task
    public final void d(Executor executor, OnCompleteListener onCompleteListener) {
        this.b.a(new zzj(executor, onCompleteListener));
        w();
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task e(OnFailureListener onFailureListener) {
        f(TaskExecutors.f11606a, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task f(Executor executor, OnFailureListener onFailureListener) {
        this.b.a(new zzl(executor, onFailureListener));
        w();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task g(OnSuccessListener onSuccessListener) {
        h(TaskExecutors.f11606a, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task h(Executor executor, OnSuccessListener onSuccessListener) {
        this.b.a(new zzn(executor, onSuccessListener));
        w();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task i(Continuation continuation) {
        return j(TaskExecutors.f11606a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task j(Executor executor, Continuation continuation) {
        zzw zzwVar = new zzw();
        this.b.a(new zzd(executor, continuation, zzwVar));
        w();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task k(Continuation continuation) {
        Executor executor = TaskExecutors.f11606a;
        zzw zzwVar = new zzw();
        this.b.a(new zzf(executor, continuation, zzwVar));
        w();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Exception l() {
        Exception exc;
        synchronized (this.f11628a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Object m() {
        Object obj;
        synchronized (this.f11628a) {
            try {
                Preconditions.checkState(this.f11629c, "Task is not yet complete");
                if (!this.d) {
                    Exception exc = this.f;
                    if (exc == null) {
                        obj = this.e;
                    } else {
                        throw new RuntimeException(exc);
                    }
                } else {
                    throw new CancellationException("Task is already canceled.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean n() {
        return this.d;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean o() {
        boolean z;
        synchronized (this.f11628a) {
            z = this.f11629c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean p() {
        boolean z;
        synchronized (this.f11628a) {
            try {
                z = false;
                if (this.f11629c && !this.d && this.f == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task q(SuccessContinuation successContinuation) {
        Executor executor = TaskExecutors.f11606a;
        zzw zzwVar = new zzw();
        this.b.a(new zzp(executor, successContinuation, zzwVar));
        w();
        return zzwVar;
    }

    public final void r(Object obj) {
        synchronized (this.f11628a) {
            v();
            this.f11629c = true;
            this.e = obj;
        }
        this.b.b(this);
    }

    public final boolean s(Object obj) {
        synchronized (this.f11628a) {
            try {
                if (this.f11629c) {
                    return false;
                }
                this.f11629c = true;
                this.e = obj;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void t(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f11628a) {
            v();
            this.f11629c = true;
            this.f = exc;
        }
        this.b.b(this);
    }

    public final void u() {
        synchronized (this.f11628a) {
            try {
                if (this.f11629c) {
                    return;
                }
                this.f11629c = true;
                this.d = true;
                this.b.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v() {
        String str;
        if (this.f11629c) {
            int i = DuplicateTaskCompletionException.f11604c;
            if (o()) {
                Exception l = l();
                if (l == null) {
                    if (!p()) {
                        if (this.d) {
                            str = "cancellation";
                        } else {
                            str = "unknown issue";
                        }
                    } else {
                        str = "result ".concat(String.valueOf(m()));
                    }
                } else {
                    str = "failure";
                }
                throw new IllegalStateException("Complete with: ".concat(str), l);
            }
            throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
    }

    public final void w() {
        synchronized (this.f11628a) {
            try {
                if (!this.f11629c) {
                    return;
                }
                this.b.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
