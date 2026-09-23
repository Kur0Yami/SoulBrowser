package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgzl extends zzgyd implements RunnableFuture {
    public volatile zzgyt l;

    public zzgzl(Callable callable) {
        this.l = new zzgzk(this, callable);
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void e() {
        zzgyt zzgytVar;
        if (l() && (zzgytVar = this.l) != null) {
            zzgytVar.g();
        }
        this.l = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        zzgyt zzgytVar = this.l;
        if (zzgytVar != null) {
            String zzgytVar2 = zzgytVar.toString();
            return android.support.v4.media.a.q(new StringBuilder(zzgytVar2.length() + 7), "task=[", zzgytVar2, "]");
        }
        return super.f();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgyt zzgytVar = this.l;
        if (zzgytVar != null) {
            zzgytVar.run();
        }
        this.l = null;
    }
}
