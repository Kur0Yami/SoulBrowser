package com.google.android.gms.internal.play_billing;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
final class zzt implements zzdc {

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f11561c;
    public final zzo f = new zzs(this);

    public zzt(zzp zzpVar) {
        this.f11561c = new WeakReference(zzpVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdc
    public final void b0(Runnable runnable, Executor executor) {
        this.f.b0(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzp zzpVar = (zzp) this.f11561c.get();
        boolean cancel = this.f.cancel(z);
        if (cancel && zzpVar != null) {
            zzpVar.f11559a = null;
            zzpVar.b = null;
            zzpVar.f11560c.g(null);
            return true;
        }
        return cancel;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f.f11558c instanceof zze;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f.isDone();
    }

    public final String toString() {
        return this.f.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f.get(j, timeUnit);
    }
}
