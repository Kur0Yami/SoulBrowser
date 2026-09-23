package com.google.android.gms.internal.play_billing;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzhj {

    /* renamed from: c, reason: collision with root package name */
    public static final zzhj f11527c = new zzhj();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzgt f11528a = new zzgt();

    public final zzhm a(Class cls) {
        zzfj zzfjVar;
        Charset charset = zzgb.f11506a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzhm zzhmVar = (zzhm) concurrentHashMap.get(cls);
            if (zzhmVar == null) {
                zzgt zzgtVar = this.f11528a;
                zzgtVar.getClass();
                zzie zzieVar = zzho.f11531a;
                if (!zzfv.class.isAssignableFrom(cls)) {
                    int i = zzei.f11487a;
                }
                zzgz a2 = zzgtVar.f11513a.a(cls);
                if (!a2.zzb()) {
                    int i2 = zzei.f11487a;
                    int i3 = zzhi.f11526a;
                    int i4 = zzgm.f11511a;
                    zzie zzieVar2 = zzho.f11531a;
                    if (a2.zzc() - 1 != 1) {
                        zzfjVar = zzfk.f11499a;
                    } else {
                        zzfjVar = null;
                    }
                    int i5 = zzgy.f11518a;
                    zzhmVar = zzhf.v(a2, zzieVar2, zzfjVar);
                } else {
                    int i6 = zzei.f11487a;
                    zzie zzieVar3 = zzho.f11531a;
                    zzfj zzfjVar2 = zzfk.f11499a;
                    zzhmVar = new zzhg(zzieVar3, a2.zza());
                }
                zzhm zzhmVar2 = (zzhm) concurrentHashMap.putIfAbsent(cls, zzhmVar);
                if (zzhmVar2 != null) {
                    return zzhmVar2;
                }
            }
            return zzhmVar;
        }
        throw new NullPointerException("messageType");
    }
}
