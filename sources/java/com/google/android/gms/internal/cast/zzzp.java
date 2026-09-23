package com.google.android.gms.internal.cast;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzp {

    /* renamed from: c, reason: collision with root package name */
    public static final zzzp f9899c = new zzzp();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzza f9900a = new zzza();

    public final zzzs a(Class cls) {
        zzxt zzxtVar;
        Charset charset = zzym.f9882a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzzs zzzsVar = (zzzs) concurrentHashMap.get(cls);
            if (zzzsVar == null) {
                zzza zzzaVar = this.f9900a;
                zzzaVar.getClass();
                zzaaf zzaafVar = zzzu.f9903a;
                if (!zzyd.class.isAssignableFrom(cls)) {
                    int i = zzxb.f9867a;
                }
                zzzf b = zzzaVar.f9890a.b(cls);
                if (!b.zza()) {
                    int i2 = zzxb.f9867a;
                    int i3 = zzzo.f9898a;
                    int i4 = zzyw.f9887a;
                    zzaaf zzaafVar2 = zzzu.f9903a;
                    if (b.zzc() - 1 != 1) {
                        zzxtVar = zzxu.f9874a;
                    } else {
                        zzxtVar = null;
                    }
                    int i5 = zzze.f9892a;
                    zzzsVar = zzzl.k(b, zzaafVar2, zzxtVar);
                } else {
                    int i6 = zzxb.f9867a;
                    zzaaf zzaafVar3 = zzzu.f9903a;
                    zzxt zzxtVar2 = zzxu.f9874a;
                    zzzsVar = new zzzm(zzaafVar3, b.zzb());
                }
                zzzs zzzsVar2 = (zzzs) concurrentHashMap.putIfAbsent(cls, zzzsVar);
                if (zzzsVar2 != null) {
                    return zzzsVar2;
                }
            }
            return zzzsVar;
        }
        throw new NullPointerException("messageType");
    }
}
