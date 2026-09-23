package com.google.android.gms.internal.fido;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class zzeu extends zzei {
    static {
        Set<zzdk> unmodifiableSet = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(zzdh.f10291a, zzdm.b)));
        zzdv zzdvVar = new zzdv();
        zzdvVar.d = zzed.b;
        for (zzdk zzdkVar : unmodifiableSet) {
            if (zzdkVar != null) {
                boolean z = zzdkVar.f10293c;
                HashMap hashMap = zzdvVar.b;
                HashMap hashMap2 = zzdvVar.f10296a;
                if (z) {
                    if (z) {
                        hashMap2.remove(zzdkVar);
                        hashMap.put(zzdkVar, zzdv.f);
                    } else {
                        throw new IllegalArgumentException("key must be repeating");
                    }
                } else {
                    hashMap.remove(zzdkVar);
                    hashMap2.put(zzdkVar, zzdv.e);
                }
            } else {
                throw new NullPointerException("key".concat(" must not be null"));
            }
        }
        new zzdx(zzdvVar);
        Level level = Level.ALL;
    }
}
