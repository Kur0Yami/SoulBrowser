package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
final class zzabe implements zzabf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Executor f3867c;
    public final /* synthetic */ zzdr f = zzaas.f3855a;

    public zzabe(ExecutorService executorService) {
        this.f3867c = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f3867c.execute(runnable);
    }
}
