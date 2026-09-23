package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzicm {

    /* renamed from: c, reason: collision with root package name */
    public static final zzicm f8938c = new zzicm();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzibt f8939a = new zzibt();

    public final zzicu a(Class cls) {
        zziad zziadVar;
        Charset charset = zzibe.f8915a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzicu zzicuVar = (zzicu) concurrentHashMap.get(cls);
            if (zzicuVar == null) {
                zzibt zzibtVar = this.f8939a;
                zzibtVar.getClass();
                zzidh zzidhVar = zzicw.f8944a;
                if (!zziar.class.isAssignableFrom(cls)) {
                    int i = zzhyy.f8889a;
                }
                zzibz b = zzibtVar.f8925a.b(cls);
                if (!b.zza()) {
                    int i2 = zzhyy.f8889a;
                    int i3 = zzicj.f8937a;
                    int i4 = zzibp.f8923a;
                    zzidh zzidhVar2 = zzicw.f8944a;
                    if (b.zzc() - 1 != 1) {
                        zziadVar = zziae.f8907a;
                    } else {
                        zziadVar = null;
                    }
                    int i5 = zziby.f8930a;
                    zzicuVar = zzicf.z(b, zzidhVar2, zziadVar);
                } else {
                    int i6 = zzhyy.f8889a;
                    zzidh zzidhVar3 = zzicw.f8944a;
                    zziad zziadVar2 = zziae.f8907a;
                    zzicuVar = new zzicg(zzidhVar3, b.zzb());
                }
                zzicu zzicuVar2 = (zzicu) concurrentHashMap.putIfAbsent(cls, zzicuVar);
                if (zzicuVar2 != null) {
                    return zzicuVar2;
                }
            }
            return zzicuVar;
        }
        throw new NullPointerException("messageType");
    }
}
