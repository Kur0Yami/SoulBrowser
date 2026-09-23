package com.google.android.gms.tasks;

/* loaded from: classes3.dex */
final class zzc implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Task f11610c;
    public final /* synthetic */ zzd f;

    public zzc(zzd zzdVar, Task task) {
        this.f11610c = task;
        this.f = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Task task = this.f11610c;
        boolean n = task.n();
        zzd zzdVar = this.f;
        if (n) {
            zzdVar.g.u();
            return;
        }
        try {
            zzdVar.g.r(zzdVar.f.then(task));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzdVar.g.t((Exception) e.getCause());
            } else {
                zzdVar.g.t(e);
            }
        } catch (Exception e2) {
            zzdVar.g.t(e2);
        }
    }
}
