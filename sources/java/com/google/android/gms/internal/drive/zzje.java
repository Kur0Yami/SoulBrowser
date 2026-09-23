package com.google.android.gms.internal.drive;

import java.util.Comparator;
import kotlin.UByte;

/* loaded from: classes.dex */
final class zzje implements Comparator<zzjc> {
    @Override // java.util.Comparator
    public final int compare(zzjc zzjcVar, zzjc zzjcVar2) {
        zzjc zzjcVar3 = zzjcVar;
        zzjc zzjcVar4 = zzjcVar2;
        zzjcVar3.getClass();
        zzjd zzjdVar = new zzjd(zzjcVar3);
        zzjcVar4.getClass();
        zzjd zzjdVar2 = new zzjd(zzjcVar4);
        while (zzjdVar.hasNext() && zzjdVar2.hasNext()) {
            int compare = Integer.compare(zzjdVar.nextByte() & UByte.MAX_VALUE, zzjdVar2.nextByte() & UByte.MAX_VALUE);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzjcVar3.size(), zzjcVar4.size());
    }
}
