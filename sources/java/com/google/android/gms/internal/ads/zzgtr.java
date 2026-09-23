package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzgtr {
    public static Object a(String str, Iterable iterable) {
        zzgrb zzgrbVar = (zzgrb) ((zzgvi) iterable).iterator();
        if (zzgrbVar.hasNext()) {
            return zzgrbVar.next();
        }
        return str;
    }

    public static void b(List list, zzgqb zzgqbVar, int i, int i2) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i2) {
                break;
            } else if (zzgqbVar.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i2--;
            if (i2 >= i) {
                list.remove(i2);
            } else {
                return;
            }
        }
    }
}
