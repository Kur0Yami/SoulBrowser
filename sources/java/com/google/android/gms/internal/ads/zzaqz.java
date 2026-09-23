package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzaqz implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Handler f4358c;

    public zzaqz(zzarb zzarbVar, Handler handler) {
        this.f4358c = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f4358c.post(runnable);
    }
}
