package com.google.android.gms.internal.ads;

import j$.util.function.Function$CC;
import java.io.File;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class zzgku implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f8066a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8067c;

    public zzgku(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f8066a = zzijfVar;
        this.b = zzijfVar2;
        this.f8067c = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        File file = (File) this.f8066a.zzb();
        zzgca zzgcaVar = (zzgca) this.b.zzb();
        final zzgnc zzgncVar = (zzgnc) this.f8067c.zzb();
        return zzgcaVar.a(file, new byte[0], new Function() { // from class: com.google.android.gms.internal.ads.zzgke
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                zzgnc.this.d(15310, (Throwable) obj);
                return new byte[0];
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }
}
