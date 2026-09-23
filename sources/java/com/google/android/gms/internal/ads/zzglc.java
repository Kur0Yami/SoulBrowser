package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzglc implements zzgjw {

    /* renamed from: a, reason: collision with root package name */
    public final zzgib f8080a;
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgnc f8081c;

    public zzglc(zzgib zzgibVar, ExecutorService executorService, zzgnc zzgncVar) {
        this.f8080a = zzgibVar;
        this.b = executorService;
        this.f8081c = zzgncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture a(final zzgcs zzgcsVar, final byte[] bArr, final byte[] bArr2) {
        ListenableFuture c2 = zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgla
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzglc.this.f8080a.a(zzgcsVar, bArr, bArr2);
                return null;
            }
        }, this.b);
        this.f8081c.e(15321, c2);
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture b(final zzgcs zzgcsVar, final byte[] bArr) {
        ListenableFuture c2 = zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgkz
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzglc.this.f8080a.a(zzgcsVar, null, bArr);
                return null;
            }
        }, this.b);
        this.f8081c.e(15305, c2);
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture zza() {
        return zzgym.a(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture zzb() {
        ListenableFuture c2 = zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzglb
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgcs b = zzglc.this.f8080a.b(1);
                if (b == null) {
                    return zzgcs.I();
                }
                return b;
            }
        }, this.b);
        this.f8081c.e(15302, c2);
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.zzgjw
    public final ListenableFuture zze() {
        ListenableFuture c2 = zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgky
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzgib zzgibVar = zzglc.this.f8080a;
                zzgcs b = zzgibVar.b(1);
                if (b == null) {
                    zzgibVar.e.b(15315);
                    return null;
                }
                String D = b.D().D();
                File a2 = zzfvq.a(zzgibVar.c(), D, "pcam.jar");
                a2.getClass();
                if (!a2.exists()) {
                    a2 = zzfvq.a(zzgibVar.c(), D, "pcam");
                    a2.getClass();
                }
                File a3 = zzfvq.a(zzgibVar.c(), D, "pcopt");
                a3.getClass();
                File a4 = zzfvq.a(zzgibVar.c(), D, "pcbc");
                a4.getClass();
                return new zzfvo(b.D(), a2, a4, a3);
            }
        }, this.b);
        this.f8081c.e(15314, c2);
        return c2;
    }
}
