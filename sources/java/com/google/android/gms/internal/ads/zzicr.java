package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzicr {
    public static final void a(zzhzl zzhzlVar, ArrayDeque arrayDeque) {
        if (zzhzlVar.r()) {
            int binarySearch = Arrays.binarySearch(zzict.l, zzhzlVar.k());
            if (binarySearch < 0) {
                binarySearch = (-(binarySearch + 1)) - 1;
            }
            int F = zzict.F(binarySearch + 1);
            if (!arrayDeque.isEmpty() && ((zzhzl) arrayDeque.peek()).k() < F) {
                int F2 = zzict.F(binarySearch);
                zzhzl zzhzlVar2 = (zzhzl) arrayDeque.pop();
                while (!arrayDeque.isEmpty() && ((zzhzl) arrayDeque.peek()).k() < F2) {
                    zzhzlVar2 = new zzict((zzhzl) arrayDeque.pop(), zzhzlVar2);
                }
                zzict zzictVar = new zzict(zzhzlVar2, zzhzlVar);
                while (!arrayDeque.isEmpty()) {
                    int binarySearch2 = Arrays.binarySearch(zzict.l, zzictVar.g);
                    if (binarySearch2 < 0) {
                        binarySearch2 = (-(binarySearch2 + 1)) - 1;
                    }
                    if (((zzhzl) arrayDeque.peek()).k() >= zzict.F(binarySearch2 + 1)) {
                        break;
                    } else {
                        zzictVar = new zzict((zzhzl) arrayDeque.pop(), zzictVar);
                    }
                }
                arrayDeque.push(zzictVar);
                return;
            }
            arrayDeque.push(zzhzlVar);
            return;
        }
        if (zzhzlVar instanceof zzict) {
            zzict zzictVar2 = (zzict) zzhzlVar;
            a(zzictVar2.h, arrayDeque);
            a(zzictVar2.i, arrayDeque);
            return;
        }
        throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzhzlVar.getClass())));
    }
}
