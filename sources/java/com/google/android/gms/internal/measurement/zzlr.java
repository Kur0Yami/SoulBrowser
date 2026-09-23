package com.google.android.gms.internal.measurement;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
final class zzlr {

    /* renamed from: c, reason: collision with root package name */
    public static final zzlr f10396c = new zzlr();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzlb f10397a = new zzlb();

    public final zzlu a(Class cls) {
        zzln zzlnVar;
        Class cls2;
        Charset charset = zzkk.f10385a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzlu zzluVar = (zzlu) concurrentHashMap.get(cls);
            if (zzluVar == null) {
                zzlb zzlbVar = this.f10397a;
                zzlbVar.getClass();
                Class cls3 = zzlw.f10398a;
                if (!zzkc.class.isAssignableFrom(cls) && (cls2 = zzlw.f10398a) != null && !cls2.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
                }
                zzlg a2 = zzlbVar.f10390a.a(cls);
                if (a2.zzb()) {
                    if (zzkc.class.isAssignableFrom(cls)) {
                        zzlnVar = new zzln(zzlw.f10399c, zzjr.f10381a, a2.zza());
                    } else {
                        zzml zzmlVar = zzlw.b;
                        zzjp zzjpVar = zzjr.b;
                        if (zzjpVar != null) {
                            zzlnVar = new zzln(zzmlVar, zzjpVar, a2.zza());
                        } else {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                    }
                    zzlu zzluVar2 = (zzlu) concurrentHashMap.putIfAbsent(cls, zzlnVar);
                    if (zzluVar2 == null) {
                        return zzlnVar;
                    }
                    return zzluVar2;
                }
                if (zzkc.class.isAssignableFrom(cls)) {
                    if (a2.zzc() == 1) {
                        int i = zzlp.f10395a;
                        int i2 = zzkx.f10388a;
                        zzjq zzjqVar = zzjr.f10381a;
                        int i3 = zzlf.f10392a;
                        zzlm.d(a2);
                        throw null;
                    }
                    int i4 = zzlp.f10395a;
                    int i5 = zzkx.f10388a;
                    int i6 = zzlf.f10392a;
                    zzlm.d(a2);
                    throw null;
                }
                if (a2.zzc() == 1) {
                    int i7 = zzlp.f10395a;
                    int i8 = zzkx.f10388a;
                    if (zzjr.b != null) {
                        int i9 = zzlf.f10392a;
                        zzlm.d(a2);
                        throw null;
                    }
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                int i10 = zzlp.f10395a;
                int i11 = zzkx.f10388a;
                int i12 = zzlf.f10392a;
                zzlm.d(a2);
                throw null;
            }
            return zzluVar;
        }
        throw new NullPointerException("messageType");
    }
}
