package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzglh implements zzgle {

    /* renamed from: a, reason: collision with root package name */
    public final zzgbr f8086a;
    public final zzgbr b;

    /* renamed from: c, reason: collision with root package name */
    public final zzija f8087c;
    public final zzgnc d;

    public zzglh(zzgbr zzgbrVar, zzgbr zzgbrVar2, zzija zzijaVar, zzgnc zzgncVar) {
        this.f8086a = zzgbrVar;
        this.b = zzgbrVar2;
        this.f8087c = zzijaVar;
        this.d = zzgncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture a(final zzgcs zzgcsVar, byte[] bArr, byte[] bArr2) {
        ListenableFuture b = ((zzgbr) this.f8087c.zzb()).b(bArr);
        zzgnc zzgncVar = this.d;
        zzgncVar.e(20307, b);
        ListenableFuture b2 = this.b.b(bArr2);
        zzgncVar.e(20305, b2);
        return (zzgye) zzgym.h(zzgye.r(new zzgxv(zzgtd.w(new ListenableFuture[]{b, b2}), true)), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzglf
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzglh zzglhVar = zzglh.this;
                ListenableFuture b3 = zzglhVar.f8086a.b(zzgcsVar);
                zzglhVar.d.e(20303, b3);
                return b3;
            }
        }, zzgyb.f8301c);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture b(final zzgcs zzgcsVar, byte[] bArr) {
        ListenableFuture b = this.b.b(bArr);
        this.d.e(20305, b);
        return (zzgye) zzgym.h(zzgye.r(b), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzglg
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzglh zzglhVar = zzglh.this;
                ListenableFuture b2 = zzglhVar.f8086a.b(zzgcsVar);
                zzglhVar.d.e(20303, b2);
                return b2;
            }
        }, zzgyb.f8301c);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture zza() {
        return zzgym.a(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzgjv
    public final ListenableFuture zzb() {
        ListenableFuture a2 = this.f8086a.a();
        this.d.e(20302, a2);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzgle
    public final ListenableFuture zze() {
        ListenableFuture a2 = this.b.a();
        this.d.e(20304, a2);
        return a2;
    }
}
