package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final class zzgfe implements zzgfy {

    /* renamed from: a, reason: collision with root package name */
    public final Map f7897a;
    public final zzavs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgna f7898c;
    public final long d;

    public zzgfe(zzavs zzavsVar, Map map, zzgad zzgadVar, zzgnc zzgncVar) {
        this.f7897a = map;
        this.b = zzavsVar;
        this.f7898c = zzgncVar.a(112);
        this.d = zzgadVar.Q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzawp zzawpVar;
        try {
            try {
                this.f7898c.a();
                ListenableFuture listenableFuture = (ListenableFuture) this.f7897a.get("gs");
                if (listenableFuture != null && (zzawpVar = (zzawp) listenableFuture.get(this.d, TimeUnit.MILLISECONDS)) != null) {
                    zzavs zzavsVar = this.b;
                    synchronized (zzavsVar) {
                        zzaxc D0 = zzawpVar.D0();
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).r0(D0);
                        long A0 = zzawpVar.A0();
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).a0(A0);
                    }
                }
            } catch (Throwable th) {
                this.f7898c.c();
                throw th;
            }
        } catch (ClassCastException | InterruptedException | ExecutionException | TimeoutException e) {
            this.f7898c.b(e);
        }
        this.f7898c.c();
        return null;
    }
}
