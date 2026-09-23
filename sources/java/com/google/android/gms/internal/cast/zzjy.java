package com.google.android.gms.internal.cast;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;

/* loaded from: classes.dex */
public final class zzjy extends zzjn {
    static {
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(zziq.f9729a, zziv.f9733a, zziw.f9734a)));
        zzjc zzjcVar = new zzjc();
        Iterator it = unmodifiableSet.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            HashMap hashMap = zzjcVar.f9738a;
            HashMap hashMap2 = zzjcVar.b;
            if (hasNext) {
                zzit zzitVar = (zzit) it.next();
                if (zzitVar != null) {
                    boolean z = zzitVar.f9731c;
                    if (z) {
                        if (z) {
                            hashMap.remove(zzitVar);
                            hashMap2.put(zzitVar, zzjc.d);
                        } else {
                            throw new IllegalArgumentException("key must be repeating");
                        }
                    } else {
                        hashMap2.remove(zzitVar);
                        hashMap.put(zzitVar, zzjc.f9737c);
                    }
                } else {
                    throw new NullPointerException("key".concat(" must not be null"));
                }
            } else {
                HashMap hashMap3 = new HashMap();
                HashMap hashMap4 = new HashMap();
                hashMap3.putAll(hashMap);
                hashMap4.putAll(hashMap2);
                Level level = Level.ALL;
                return;
            }
        }
    }
}
