package com.google.android.gms.internal.auth;

import java.util.LinkedHashMap;

/* loaded from: classes.dex */
final class zzfs {
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.LinkedHashMap, com.google.android.gms.internal.auth.zzfr] */
    public static final zzfr a(Object obj, Object obj2) {
        zzfr zzfrVar = (zzfr) obj;
        zzfr zzfrVar2 = (zzfr) obj2;
        if (!zzfrVar2.isEmpty()) {
            if (!zzfrVar.f9545c) {
                if (zzfrVar.isEmpty()) {
                    zzfrVar = new zzfr();
                } else {
                    ?? linkedHashMap = new LinkedHashMap(zzfrVar);
                    linkedHashMap.f9545c = true;
                    zzfrVar = linkedHashMap;
                }
            }
            zzfrVar.b();
            if (!zzfrVar2.isEmpty()) {
                zzfrVar.putAll(zzfrVar2);
            }
        }
        return zzfrVar;
    }
}
