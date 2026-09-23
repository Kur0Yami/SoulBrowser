package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhjt {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8601a;
    public final HashMap b;

    public /* synthetic */ zzhjt(zzhjw zzhjwVar) {
        this.f8601a = new HashMap(zzhjwVar.f8604a);
        this.b = new HashMap(zzhjwVar.b);
    }

    public final void a(zzhjs zzhjsVar) {
        if (zzhjsVar != null) {
            zzhju zzhjuVar = new zzhju(zzhjsVar.f8600a, zzhjsVar.b);
            HashMap hashMap = this.f8601a;
            if (hashMap.containsKey(zzhjuVar)) {
                zzhjs zzhjsVar2 = (zzhjs) hashMap.get(zzhjuVar);
                if (zzhjsVar2.equals(zzhjsVar) && zzhjsVar.equals(zzhjsVar2)) {
                    return;
                } else {
                    throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(zzhjuVar.toString()));
                }
            }
            hashMap.put(zzhjuVar, zzhjsVar);
            return;
        }
        throw new NullPointerException("primitive constructor must be non-null");
    }

    public final void b(zzhjy zzhjyVar) {
        Class zza = zzhjyVar.zza();
        HashMap hashMap = this.b;
        if (hashMap.containsKey(zza)) {
            zzhjy zzhjyVar2 = (zzhjy) hashMap.get(zza);
            if (zzhjyVar2.equals(zzhjyVar) && zzhjyVar.equals(zzhjyVar2)) {
                return;
            } else {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(zza.toString()));
            }
        }
        hashMap.put(zza, zzhjyVar);
    }

    public /* synthetic */ zzhjt() {
        this.f8601a = new HashMap();
        this.b = new HashMap();
    }
}
