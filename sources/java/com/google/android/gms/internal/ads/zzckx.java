package com.google.android.gms.internal.ads;

import android.os.Process;

/* loaded from: classes.dex */
final class zzckx extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f5228c;
    public final /* synthetic */ zzcky f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzckx(zzcky zzckyVar, Runnable runnable, String str, Runnable runnable2) {
        super(runnable, str);
        this.f5228c = runnable2;
        this.f = zzckyVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f.b);
        this.f5228c.run();
    }
}
