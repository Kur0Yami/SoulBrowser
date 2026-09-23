package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
public class TaskCompletionSource<TResult> {

    /* renamed from: a, reason: collision with root package name */
    public final zzw f11605a = new zzw();

    public TaskCompletionSource() {
    }

    public final void a(Exception exc) {
        this.f11605a.t(exc);
    }

    public final void b(Object obj) {
        this.f11605a.r(obj);
    }

    public final boolean c(Exception exc) {
        zzw zzwVar = this.f11605a;
        zzwVar.getClass();
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (zzwVar.f11628a) {
            try {
                if (zzwVar.f11629c) {
                    return false;
                }
                zzwVar.f11629c = true;
                zzwVar.f = exc;
                zzwVar.b.b(zzwVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d(Object obj) {
        return this.f11605a.s(obj);
    }

    public TaskCompletionSource(CancellationToken cancellationToken) {
        zzs zzsVar = new zzs(this);
        zzb zzbVar = (zzb) cancellationToken;
        zzbVar.getClass();
        zzbVar.f11609a.h(TaskExecutors.f11606a, new zza(zzbVar, zzsVar));
    }
}
