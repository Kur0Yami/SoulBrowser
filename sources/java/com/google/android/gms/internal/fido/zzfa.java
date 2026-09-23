package com.google.android.gms.internal.fido;

import java.util.Comparator;

/* loaded from: classes3.dex */
final class zzfa implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzfh a2 = zzfh.a(obj);
        zzfh a3 = zzfh.a(obj2);
        if (a2 == a3) {
            int ordinal = a2.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            return ((Double) obj).compareTo((Double) obj2);
                        }
                        throw null;
                    }
                    return ((Long) obj).compareTo((Long) obj2);
                }
                return ((String) obj).compareTo((String) obj2);
            }
            return ((Boolean) obj).compareTo((Boolean) obj2);
        }
        return a2.compareTo(a3);
    }
}
