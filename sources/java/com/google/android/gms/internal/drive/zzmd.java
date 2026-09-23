package com.google.android.gms.internal.drive;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmd {

    /* renamed from: c, reason: collision with root package name */
    public static final zzmd f10242c = new zzmd();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzlf f10243a = new zzlf();

    public final zzmf a(Class cls) {
        zzmf h;
        Class cls2;
        Charset charset = zzkm.f10222a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzmf zzmfVar = (zzmf) concurrentHashMap.get(cls);
            if (zzmfVar == null) {
                zzlf zzlfVar = this.f10243a;
                zzlfVar.getClass();
                Class cls3 = zzmh.f10246a;
                if (!zzkk.class.isAssignableFrom(cls) && (cls2 = zzmh.f10246a) != null && !cls2.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
                }
                zzlo b = zzlfVar.f10231a.b(cls);
                if (b.b()) {
                    if (zzkk.class.isAssignableFrom(cls)) {
                        h = new zzlw(zzmh.d, zzka.f10212a, b.c());
                    } else {
                        zzmx zzmxVar = zzmh.b;
                        zzjy zzjyVar = zzka.b;
                        if (zzjyVar != null) {
                            h = new zzlw(zzmxVar, zzjyVar, b.c());
                        } else {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                    }
                } else if (zzkk.class.isAssignableFrom(cls)) {
                    if (b.a() == 1) {
                        h = zzlu.h(b, zzma.b, zzla.b, zzmh.d, zzka.f10212a, zzln.b);
                    } else {
                        h = zzlu.h(b, zzma.b, zzla.b, zzmh.d, null, zzln.b);
                    }
                } else if (b.a() == 1) {
                    zzly zzlyVar = zzma.f10241a;
                    zzlc zzlcVar = zzla.f10229a;
                    zzmx zzmxVar2 = zzmh.b;
                    zzjy zzjyVar2 = zzka.b;
                    if (zzjyVar2 != null) {
                        h = zzlu.h(b, zzlyVar, zzlcVar, zzmxVar2, zzjyVar2, zzln.f10234a);
                    } else {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                } else {
                    h = zzlu.h(b, zzma.f10241a, zzla.f10229a, zzmh.f10247c, null, zzln.f10234a);
                }
                zzmf zzmfVar2 = (zzmf) concurrentHashMap.putIfAbsent(cls, h);
                if (zzmfVar2 != null) {
                    return zzmfVar2;
                }
                return h;
            }
            return zzmfVar;
        }
        throw new NullPointerException("messageType");
    }

    public final zzmf b(zzkk zzkkVar) {
        return a(zzkkVar.getClass());
    }
}
