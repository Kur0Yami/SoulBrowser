package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgjl implements zzgje {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8023a;
    public final zzija b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgjv f8024c;
    public final zzgnc d;
    public final ExecutorService e;
    public final zzgic f;
    public final zzfuf g;

    public zzgjl(Context context, zzija zzijaVar, zzgjv zzgjvVar, zzgnc zzgncVar, ExecutorService executorService, zzgic zzgicVar, zzfuf zzfufVar) {
        this.f8023a = context;
        this.b = zzijaVar;
        this.f8024c = zzgjvVar;
        this.d = zzgncVar;
        this.e = executorService;
        this.f = zzgicVar;
        this.g = zzfufVar;
    }

    public static zzgcq a(int i) {
        zzgcp G = zzgcq.G();
        G.k();
        ((zzgcq) G.f).L(i);
        return (zzgcq) G.m();
    }

    @Override // com.google.android.gms.internal.ads.zzgje
    public final zzgye zza() {
        final zzija zzijaVar = this.b;
        Objects.requireNonNull(zzijaVar);
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzgjg
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzija.this.zzb();
            }
        };
        ExecutorService executorService = this.e;
        zzgye r = zzgye.r(zzgym.c(callable, executorService));
        zzgpr zzgprVar = new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgjk
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                zzbbq zzbbqVar = (zzbbq) obj;
                zzgjl zzgjlVar = zzgjl.this;
                zzgjlVar.getClass();
                if (zzfvc.a(zzbbqVar)) {
                    return new Integer(0);
                }
                zzgjlVar.d.c(15204, zzbbqVar.name());
                throw new RuntimeException();
            }
        };
        zzgyb zzgybVar = zzgyb.f8301c;
        zzgye zzgyeVar = (zzgye) zzgym.e((zzgye) zzgym.i((zzgye) zzgym.h((zzgye) zzgym.i(r, zzgprVar, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzgjh
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgjl.this.f8024c.zzb();
            }
        }, zzgybVar), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgji
            /* JADX WARN: Finally extract failed */
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final Object apply(Object obj) {
                boolean z;
                zzgcs zzgcsVar = (zzgcs) obj;
                zzgjl zzgjlVar = zzgjl.this;
                zzija zzijaVar2 = zzgjlVar.b;
                String D = zzgcsVar.D().D();
                String E = zzgcsVar.D().E();
                zzgnc zzgncVar = zzgjlVar.d;
                zzgna a2 = zzgncVar.a(15203);
                try {
                    a2.a();
                    zzfvt a3 = zzfuo.a(zzgjlVar.f8023a, (zzbbq) zzijaVar2.zzb(), D, E, zzgjlVar.g);
                    int i = a3.g;
                    a2.c();
                    int i2 = 2;
                    if (i == 2) {
                        zzgncVar.b(15208);
                        return zzgjl.a(4);
                    }
                    byte[] bArr = a3.f;
                    if (bArr != null && bArr.length != 0) {
                        try {
                            zzbbs H = zzbbs.H(bArr, zziab.a());
                            if (!H.D().D().isEmpty() && !H.D().E().isEmpty() && H.F().E().length != 0) {
                                if (!zzgcsVar.equals(zzgcs.I()) && TextUtils.equals(zzgcsVar.D().D(), H.D().D()) && TextUtils.equals(zzgcsVar.D().E(), H.D().E())) {
                                    zzgncVar.b(15209);
                                } else {
                                    if (i == 4) {
                                        zzgic zzgicVar = zzgjlVar.f;
                                        byte[] E2 = H.E().E();
                                        File file = zzgicVar.f7981a;
                                        try {
                                            zzgwk.b(file);
                                            zzgwk.a(file, E2);
                                            zzgicVar.b.getClass();
                                            z = zzfua.a(file);
                                        } catch (IOException | GeneralSecurityException e) {
                                            zzgicVar.f7982c.d(2027, e);
                                            z = false;
                                        }
                                        try {
                                            file.delete();
                                        } catch (SecurityException unused) {
                                        }
                                        if (!z) {
                                            zzgncVar.b(15206);
                                            return zzgjl.a(12);
                                        }
                                        i = 4;
                                    }
                                    zzgcp G = zzgcq.G();
                                    if (i != 2) {
                                        if (i != 3) {
                                            if (i != 4) {
                                                if (i != 6) {
                                                    i2 = 1;
                                                } else {
                                                    i2 = 5;
                                                }
                                            } else {
                                                i2 = 3;
                                            }
                                        }
                                    } else {
                                        i2 = 4;
                                    }
                                    G.k();
                                    ((zzgcq) G.f).L(i2);
                                    zzgcr H2 = zzgcs.H();
                                    zzbby D2 = H.D();
                                    H2.k();
                                    ((zzgcs) H2.f).J(D2);
                                    zzbbq zzbbqVar = (zzbbq) zzijaVar2.zzb();
                                    H2.k();
                                    ((zzgcs) H2.f).L(zzbbqVar);
                                    zzgcs zzgcsVar2 = (zzgcs) H2.m();
                                    G.k();
                                    ((zzgcq) G.f).H(zzgcsVar2);
                                    zzhzl E3 = H.E();
                                    G.k();
                                    ((zzgcq) G.f).J(E3);
                                    zzhzl F = H.F();
                                    G.k();
                                    ((zzgcq) G.f).I(F);
                                    return (zzgcq) G.m();
                                }
                            } else {
                                zzgncVar.b(15207);
                            }
                            return zzgjl.a(11);
                        } catch (zzibg e2) {
                            zzgncVar.d(15205, e2);
                            return zzgjl.a(9);
                        } catch (NullPointerException unused2) {
                            zzgncVar.b(15210);
                            return zzgjl.a(10);
                        }
                    }
                    zzgncVar.b(5010);
                    return zzgjl.a(8);
                } catch (Throwable th) {
                    try {
                        a2.b(th);
                        throw th;
                    } catch (Throwable th2) {
                        a2.c();
                        throw th2;
                    }
                }
            }
        }, executorService), zzgjf.class, zzgjj.f8021a, zzgybVar);
        this.d.e(15202, zzgyeVar);
        return zzgyeVar;
    }
}
