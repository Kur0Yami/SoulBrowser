package com.google.android.gms.internal.ads;

import j$.util.function.Function$CC;
import java.io.File;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class zzglp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f8097a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8098c;

    public zzglp(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f8097a = zzijfVar;
        this.b = zzijfVar2;
        this.f8098c = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        File file = (File) this.f8097a.zzb();
        zzgca zzgcaVar = (zzgca) this.b.zzb();
        final zzgnc zzgncVar = (zzgnc) this.f8098c.zzb();
        return zzgcaVar.a(file, new byte[0], new Function() { // from class: com.google.android.gms.internal.ads.zzglj
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                zzgnc.this.d(20310, (Throwable) obj);
                return new byte[0];
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }
}
