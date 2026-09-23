package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzarb {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f4361a;

    public zzarb(Handler handler) {
        this.f4361a = new zzaqz(this, handler);
    }

    public final void a(zzark zzarkVar, zzarq zzarqVar, Runnable runnable) {
        zzarkVar.zzp();
        zzarkVar.zzc("post-response");
        ((zzaqz) this.f4361a).f4358c.post(new zzara(zzarkVar, zzarqVar, runnable));
    }
}
