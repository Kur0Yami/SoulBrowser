package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzcl {
    public static boolean a(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzcd) {
            collection = ((zzcd) collection).zza();
        }
        boolean z = false;
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            z |= set.remove(it2.next());
        }
        return z;
    }
}
