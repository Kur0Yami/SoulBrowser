package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzu {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.play_billing.zzp] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.play_billing.zzv, java.lang.Object] */
    public static zzdc a(com.android.billingclient.api.zzcm zzcmVar) {
        ?? obj = new Object();
        obj.f11560c = new Object();
        zzt zztVar = new zzt(obj);
        obj.b = zztVar;
        obj.f11559a = com.android.billingclient.api.zzcm.class;
        try {
            zzcmVar.a(obj);
            obj.f11559a = "billingOverrideService.getBillingOverride";
            return zztVar;
        } catch (Exception e) {
            zzg zzgVar = new zzg(e);
            zzd zzdVar = zzo.j;
            zzo zzoVar = zztVar.f;
            if (zzdVar.d(zzoVar, null, zzgVar)) {
                zzo.b(zzoVar);
            }
            return zztVar;
        }
    }
}
