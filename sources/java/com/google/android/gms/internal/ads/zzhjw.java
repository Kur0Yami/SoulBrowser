package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhjw {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8604a;
    public final HashMap b;

    public /* synthetic */ zzhjw(zzhjt zzhjtVar) {
        this.f8604a = new HashMap(zzhjtVar.f8601a);
        this.b = new HashMap(zzhjtVar.b);
    }

    public final Object a(zzgzx zzgzxVar, Class cls) {
        zzhju zzhjuVar = new zzhju(zzgzxVar.getClass(), cls);
        HashMap hashMap = this.f8604a;
        if (hashMap.containsKey(zzhjuVar)) {
            return ((zzhjs) hashMap.get(zzhjuVar)).a(zzgzxVar);
        }
        String zzhjuVar2 = zzhjuVar.toString();
        throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(zzhjuVar2.length() + 102), "No PrimitiveConstructor for ", zzhjuVar2, " available, see https://developers.google.com/tink/faq/registration_errors"));
    }

    public final Object b(zzhih zzhihVar, zzhip zzhipVar, Class cls) {
        HashMap hashMap = this.b;
        if (hashMap.containsKey(cls)) {
            zzhjy zzhjyVar = (zzhjy) hashMap.get(cls);
            return zzhjyVar.a(zzhihVar, zzhipVar, new zzhjv(this, zzhjyVar));
        }
        throw new GeneralSecurityException("No wrapper found for ".concat(cls.toString()));
    }
}
