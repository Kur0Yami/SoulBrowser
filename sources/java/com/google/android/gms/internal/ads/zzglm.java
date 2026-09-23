package com.google.android.gms.internal.ads;

import j$.util.function.Function$CC;
import java.io.File;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class zzglm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f8093a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8094c;

    public zzglm(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f8093a = zzijfVar;
        this.b = zzijfVar2;
        this.f8094c = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        File file = (File) this.f8093a.zzb();
        zzgca zzgcaVar = (zzgca) this.b.zzb();
        final zzgnc zzgncVar = (zzgnc) this.f8094c.zzb();
        zzgcs I = zzgcs.I();
        Function function = new Function() { // from class: com.google.android.gms.internal.ads.zzgll
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function2) {
                return Function$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                zzgnc.this.d(20308, (Throwable) obj);
                return zzgcs.I();
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function2) {
                return Function$CC.$default$compose(this, function2);
            }
        };
        zzgcaVar.getClass();
        return new zzgbz(file, zzgcaVar.f7814a, new zzgbx(I), function);
    }
}
