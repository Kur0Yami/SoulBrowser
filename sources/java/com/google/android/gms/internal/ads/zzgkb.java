package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgkb implements zzgjw {

    /* renamed from: a, reason: collision with root package name */
    public final zzgbr f8040a;
    public final zzgbr b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgbr f8041c;
    public final zzgbr d;
    public final zzija e;
    public final zzija f;
    public final File g;
    public final ExecutorService h;
    public final zzgnc i;

    public zzgkb(zzgbr zzgbrVar, zzgbr zzgbrVar2, zzija zzijaVar, zzgbr zzgbrVar3, zzgbr zzgbrVar4, zzija zzijaVar2, File file, ExecutorService executorService, zzgnc zzgncVar) {
        this.f8040a = zzgbrVar;
        this.f8041c = zzgbrVar2;
        this.e = zzijaVar;
        this.b = zzgbrVar3;
        this.d = zzgbrVar4;
        this.f = zzijaVar2;
        this.g = file;
        this.h = executorService;
        this.i = zzgncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture a(final zzgcs zzgcsVar, byte[] bArr, byte[] bArr2) {
        ListenableFuture b = ((zzgbr) this.f.zzb()).b(bArr);
        zzgnc zzgncVar = this.i;
        zzgncVar.e(15307, b);
        ListenableFuture b2 = this.d.b(bArr2);
        zzgncVar.e(15305, b2);
        return (zzgye) zzgym.h(zzgye.r(new zzgxv(zzgtd.w(new ListenableFuture[]{b, b2}), true)), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzgjz
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzgkb zzgkbVar = zzgkb.this;
                ListenableFuture b3 = zzgkbVar.b.b(zzgcsVar);
                zzgkbVar.i.e(15303, b3);
                return b3;
            }
        }, zzgyb.f8301c);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture b(final zzgcs zzgcsVar, byte[] bArr) {
        ListenableFuture b = this.d.b(bArr);
        this.i.e(15305, b);
        return (zzgye) zzgym.h(zzgye.r(b), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzgjy
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzgkb zzgkbVar = zzgkb.this;
                ListenableFuture b2 = zzgkbVar.b.b(zzgcsVar);
                zzgkbVar.i.e(15303, b2);
                return b2;
            }
        }, zzgyb.f8301c);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture zza() {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgka
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzgkb zzgkbVar = zzgkb.this;
                zzgnc zzgncVar = zzgkbVar.i;
                zzgbr zzgbrVar = zzgkbVar.b;
                zzgbr zzgbrVar2 = zzgkbVar.d;
                zzija zzijaVar = zzgkbVar.f;
                try {
                    File file = zzgbrVar.f7806a;
                    File file2 = zzgbrVar.f7806a;
                    boolean z = false;
                    if (!file.exists()) {
                        file2.delete();
                    } else {
                        File file3 = ((zzgbr) zzijaVar.zzb()).f7806a;
                        File file4 = ((zzgbr) zzgkbVar.e.zzb()).f7806a;
                        try {
                            if (file3.exists()) {
                                File parentFile = file4.getParentFile();
                                if (parentFile != null) {
                                    zzfvq.e(parentFile);
                                }
                                zzgwk.b(file4);
                                zzgwk.c(file3, file4);
                            }
                            File file5 = zzgbrVar2.f7806a;
                            File file6 = zzgkbVar.f8041c.f7806a;
                            try {
                                if (file5.exists()) {
                                    zzgwk.b(file6);
                                    zzgwk.c(file5, file6);
                                }
                                File file7 = zzgkbVar.f8040a.f7806a;
                                try {
                                    if (file.exists()) {
                                        zzgwk.b(file7);
                                        zzgwk.c(file, file7);
                                    }
                                    file2.delete();
                                    ((zzgbr) zzijaVar.zzb()).f7806a.delete();
                                    zzgbrVar2.f7806a.delete();
                                    z = true;
                                } catch (IOException | SecurityException e) {
                                    zzgncVar.d(15313, e);
                                    zzgbrVar.f7806a.delete();
                                    ((zzgbr) zzijaVar.zzb()).f7806a.delete();
                                    zzgbrVar2.f7806a.delete();
                                    return new Boolean(z);
                                }
                            } catch (IOException | SecurityException e2) {
                                zzgncVar.d(15312, e2);
                            }
                        } catch (IOException e3) {
                            e = e3;
                            zzgncVar.d(15311, e);
                            zzgbrVar.f7806a.delete();
                            ((zzgbr) zzijaVar.zzb()).f7806a.delete();
                            zzgbrVar2.f7806a.delete();
                            return new Boolean(z);
                        } catch (SecurityException e4) {
                            e = e4;
                            zzgncVar.d(15311, e);
                            zzgbrVar.f7806a.delete();
                            ((zzgbr) zzijaVar.zzb()).f7806a.delete();
                            zzgbrVar2.f7806a.delete();
                            return new Boolean(z);
                        }
                        return new Boolean(z);
                    }
                    ((zzgbr) zzijaVar.zzb()).f7806a.delete();
                    zzgbrVar2.f7806a.delete();
                    return new Boolean(z);
                } catch (Throwable th) {
                    zzgbrVar.f7806a.delete();
                    ((zzgbr) zzijaVar.zzb()).f7806a.delete();
                    zzgbrVar2.f7806a.delete();
                    throw th;
                }
            }
        }, this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture zzb() {
        ListenableFuture a2 = this.f8040a.a();
        this.i.e(15302, a2);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzgjw
    public final ListenableFuture zze() {
        zzgye zzgyeVar = (zzgye) zzgym.i(zzgye.r(this.f8040a.a()), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgjx
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final Object apply(Object obj) {
                zzgcs zzgcsVar = (zzgcs) obj;
                zzgkb zzgkbVar = zzgkb.this;
                zzgkbVar.getClass();
                if (zzgcsVar != null && !zzgcsVar.equals(zzgcs.I())) {
                    zzbby D = zzgcsVar.D();
                    File file = ((zzgbr) zzgkbVar.e.zzb()).f7806a;
                    zzgbr zzgbrVar = zzgkbVar.f8041c;
                    return new zzfvo(D, file, zzgbrVar.f7806a, zzgkbVar.g);
                }
                return null;
            }
        }, zzgyb.f8301c);
        this.i.e(15314, zzgyeVar);
        return zzgyeVar;
    }
}
