package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzghq {

    /* renamed from: a, reason: collision with root package name */
    public final zzgls f7962a;
    public final zzgje b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgjv f7963c;
    public final zzgnc d;
    public final zzgbj e;
    public final boolean f;
    public final long g;
    public final long h;

    public zzghq(zzgls zzglsVar, zzgje zzgjeVar, zzgjv zzgjvVar, zzgnc zzgncVar, zzgbj zzgbjVar, boolean z, long j, long j2) {
        this.f7962a = zzglsVar;
        this.b = zzgjeVar;
        this.f7963c = zzgjvVar;
        this.d = zzgncVar;
        this.e = zzgbjVar;
        this.f = z;
        this.g = j;
        this.h = j2;
    }

    public final zzgye a() {
        zzgye r = zzgye.r(this.f7963c.zzb());
        zzghf zzghfVar = zzghf.f7951a;
        zzgyb zzgybVar = zzgyb.f8301c;
        zzgye zzgyeVar = (zzgye) zzgym.e(r, Throwable.class, zzghfVar, zzgybVar);
        final zzgls zzglsVar = this.f7962a;
        Objects.requireNonNull(zzglsVar);
        return (zzgye) zzgym.h((zzgye) zzgym.i(zzgyeVar, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzghe
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                return new Boolean(zzgls.this.b((zzgcs) obj));
            }
        }, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzghg
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                boolean booleanValue = ((Boolean) obj).booleanValue();
                zzghq zzghqVar = zzghq.this;
                if (!booleanValue) {
                    zzghqVar.d.b(1003);
                    return zzgym.a(zzghp.f);
                }
                return zzghqVar.b(0);
            }
        }, zzgybVar);
    }

    public final zzgye b(final int i) {
        zzgye r = zzgye.r(this.b.zza());
        zzgpr zzgprVar = new zzgpr() { // from class: com.google.android.gms.internal.ads.zzghh
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final Object apply(Object obj) {
                zzgcq zzgcqVar = (zzgcq) obj;
                zzgnc zzgncVar = zzghq.this.d;
                int K = zzgcqVar.K() - 1;
                if (K != 1 && K != 2) {
                    if (K != 3) {
                        if (K != 12) {
                            int K2 = zzgcqVar.K() - 1;
                            StringBuilder sb = new StringBuilder(String.valueOf(K2).length());
                            sb.append(K2);
                            zzgncVar.c(1005, sb.toString());
                            int K3 = zzgcqVar.K() - 1;
                            throw new RuntimeException(androidx.work.impl.workers.a.r(K3, "r: ", new StringBuilder(String.valueOf(K3).length() + 3)));
                        }
                        int K4 = zzgcqVar.K() - 1;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(K4).length());
                        sb2.append(K4);
                        zzgncVar.c(1005, sb2.toString());
                        int K5 = zzgcqVar.K() - 1;
                        throw new RuntimeException(androidx.work.impl.workers.a.r(K5, "r: ", new StringBuilder(String.valueOf(K5).length() + 3)));
                    }
                    int K6 = zzgcqVar.K() - 1;
                    StringBuilder sb3 = new StringBuilder(String.valueOf(K6).length());
                    sb3.append(K6);
                    zzgncVar.c(1004, sb3.toString());
                    int K7 = zzgcqVar.K() - 1;
                    throw new RuntimeException(androidx.work.impl.workers.a.r(K7, "r: ", new StringBuilder(String.valueOf(K7).length() + 3)));
                }
                return zzgcqVar;
            }
        };
        zzgyb zzgybVar = zzgyb.f8301c;
        zzgye zzgyeVar = (zzgye) zzgym.e((zzgye) zzgym.e((zzgye) zzgym.e((zzgye) zzgym.i((zzgye) zzgym.h((zzgye) zzgym.i(r, zzgprVar, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzghi
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                zzgcq zzgcqVar = (zzgcq) obj;
                zzgjv zzgjvVar = zzghq.this.f7963c;
                if (zzgcqVar.K() == 2) {
                    return zzgjvVar.b(zzgcqVar.D(), zzgcqVar.E().E());
                }
                if (zzgcqVar.K() == 3) {
                    return zzgjvVar.a(zzgcqVar.D(), zzgcqVar.F().E(), zzgcqVar.E().E());
                }
                throw new AssertionError("Unreachable");
            }
        }, zzgybVar), zzghj.f7955a, zzgybVar), zzghc.class, zzghk.f7956a, zzgybVar), zzghd.class, zzghl.f7957a, zzgybVar), zzghb.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzghm
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                final zzghq zzghqVar = zzghq.this;
                if (zzghqVar.f) {
                    final int i2 = i;
                    if (i2 < zzghqVar.g) {
                        zzghqVar.e.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzghn
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzghq.this.b(i2 + 1);
                            }
                        }, zzghqVar.h * ((long) Math.pow(2.0d, i2)));
                    }
                }
                return zzghp.j;
            }
        }, zzgybVar);
        this.d.e(1002, zzgyeVar);
        return zzgyeVar;
    }
}
