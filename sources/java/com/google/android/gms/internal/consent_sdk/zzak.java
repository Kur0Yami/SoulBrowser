package com.google.android.gms.internal.consent_sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzak implements zzaz {

    /* renamed from: a, reason: collision with root package name */
    public final zztf f9930a;

    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zztf] */
    public zzak(zzah zzahVar, zzbs zzbsVar) {
        zztg a2 = zztg.a(new zzca(zzahVar.f9928c));
        if (zzbsVar != null) {
            zzti zztiVar = new zzti(zzbsVar);
            ?? obj = new Object();
            this.f9930a = obj;
            zzti zztiVar2 = zzahVar.f9928c;
            zztg zztgVar = zzahVar.h;
            zzap zzapVar = zzahVar.i;
            zztg zztgVar2 = zzahVar.d;
            zztg a3 = zztg.a(new zzbf(zztiVar2, zzahVar.e, a2, zztgVar2, zztiVar, new zzby(a2, new zzce(zztiVar2, a2, zztgVar, zzapVar, obj, zztgVar2)), zzahVar.j));
            if (obj.f10122a == null) {
                obj.f10122a = a3;
                return;
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzaz
    public final zzbe zza() {
        return (zzbe) this.f9930a.zzb();
    }
}
