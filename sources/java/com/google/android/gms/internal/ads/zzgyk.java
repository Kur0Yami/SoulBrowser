package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgyk implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final Future f8303c;
    public final zzgyj f;

    public zzgyk(ListenableFuture listenableFuture, zzgyj zzgyjVar) {
        this.f8303c = listenableFuture;
        this.f = zzgyjVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable a2;
        Future future = this.f8303c;
        boolean z = future instanceof zzgzo;
        zzgyj zzgyjVar = this.f;
        if (z && (a2 = ((zzgzo) future).a()) != null) {
            zzgyjVar.b(a2);
            return;
        }
        try {
            zzgyjVar.a(zzgym.l(future));
        } catch (ExecutionException e) {
            zzgyjVar.b(e.getCause());
        } catch (Throwable th) {
            zzgyjVar.b(th);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgpv] */
    public final String toString() {
        zzgpw zzgpwVar = new zzgpw("zzgyk");
        ?? obj = new Object();
        zzgpwVar.f8203c.b = obj;
        zzgpwVar.f8203c = obj;
        obj.f8201a = this.f;
        return zzgpwVar.toString();
    }
}
