package com.google.android.gms.internal.auth;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgf {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgf f9553c = new zzgf();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzfp f9554a = new zzfp();

    public final zzgi a(Class cls) {
        zzgi n;
        Class cls2;
        Charset charset = zzfa.f9540a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzgi zzgiVar = (zzgi) concurrentHashMap.get(cls);
            if (zzgiVar == null) {
                zzfp zzfpVar = this.f9554a;
                zzfpVar.getClass();
                Class cls3 = zzgk.f9557a;
                if (!zzev.class.isAssignableFrom(cls) && (cls2 = zzgk.f9557a) != null && !cls2.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
                }
                zzfu a2 = zzfpVar.f9544a.a(cls);
                if (a2.zzb()) {
                    if (zzev.class.isAssignableFrom(cls)) {
                        n = new zzgb(zzgk.f9558c, zzeo.f9536a, a2.zza());
                    } else {
                        zzgz zzgzVar = zzgk.b;
                        zzem zzemVar = zzeo.b;
                        if (zzemVar != null) {
                            n = new zzgb(zzgzVar, zzemVar, a2.zza());
                        } else {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                    }
                } else if (zzev.class.isAssignableFrom(cls)) {
                    if (a2.zzc() - 1 != 1) {
                        int i = zzgd.f9552a;
                        zzfj zzfjVar = zzfl.b;
                        zzhb zzhbVar = zzgk.f9558c;
                        zzen zzenVar = zzeo.f9536a;
                        int i2 = zzft.f9546a;
                        n = zzga.n(a2, zzfjVar, zzhbVar);
                    } else {
                        int i3 = zzgd.f9552a;
                        zzfj zzfjVar2 = zzfl.b;
                        zzhb zzhbVar2 = zzgk.f9558c;
                        int i4 = zzft.f9546a;
                        n = zzga.n(a2, zzfjVar2, zzhbVar2);
                    }
                } else if (a2.zzc() - 1 != 1) {
                    int i5 = zzgd.f9552a;
                    zzfh zzfhVar = zzfl.f9542a;
                    zzgz zzgzVar2 = zzgk.b;
                    if (zzeo.b != null) {
                        int i6 = zzft.f9546a;
                        n = zzga.n(a2, zzfhVar, zzgzVar2);
                    } else {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                } else {
                    int i7 = zzgd.f9552a;
                    zzfh zzfhVar2 = zzfl.f9542a;
                    zzgz zzgzVar3 = zzgk.b;
                    int i8 = zzft.f9546a;
                    n = zzga.n(a2, zzfhVar2, zzgzVar3);
                }
                zzgi zzgiVar2 = (zzgi) concurrentHashMap.putIfAbsent(cls, n);
                if (zzgiVar2 == null) {
                    return n;
                }
                return zzgiVar2;
            }
            return zzgiVar;
        }
        throw new NullPointerException("messageType");
    }
}
