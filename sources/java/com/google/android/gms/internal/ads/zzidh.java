package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzidh extends zzidf {
    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* bridge */ /* synthetic */ void a(int i, long j, Object obj) {
        ((zzidg) obj).d(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* bridge */ /* synthetic */ void b(int i, int i2, Object obj) {
        ((zzidg) obj).d((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* bridge */ /* synthetic */ void c(int i, long j, Object obj) {
        ((zzidg) obj).d((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* bridge */ /* synthetic */ void d(Object obj, int i, zzhzl zzhzlVar) {
        ((zzidg) obj).d((i << 3) | 2, zzhzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* bridge */ /* synthetic */ void e(int i, Object obj, Object obj2) {
        ((zzidg) obj).d((i << 3) | 3, (zzidg) obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* synthetic */ zzidg f() {
        return zzidg.a();
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final zzidg g(Object obj) {
        zzidg zzidgVar = (zzidg) obj;
        if (zzidgVar.e) {
            zzidgVar.e = false;
        }
        return zzidgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* bridge */ /* synthetic */ zzidg h(Object obj) {
        zziar zziarVar = (zziar) obj;
        zzidg zzidgVar = zziarVar.zzt;
        if (zzidgVar == zzidg.f) {
            zzidg a2 = zzidg.a();
            zziarVar.zzt = a2;
            return a2;
        }
        return zzidgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final /* synthetic */ void i(Object obj, Object obj2) {
        ((zziar) obj).zzt = (zzidg) obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzidf
    public final void j(Object obj) {
        zzidg zzidgVar = ((zziar) obj).zzt;
        if (zzidgVar.e) {
            zzidgVar.e = false;
        }
    }
}
