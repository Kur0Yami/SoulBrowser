package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
final class zzatv implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        int length;
        zzatw zzatwVar = (zzatw) obj;
        zzatw zzatwVar2 = (zzatw) obj2;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = zzatwVar.f4413a.length;
            if (i >= length || i2 >= zzatwVar2.f4413a.length) {
                break;
            }
            int compare = Integer.compare(zzatw.f(zzatwVar.b(i)), zzatw.f(zzatwVar2.b(i2)));
            if (compare != 0) {
                return compare;
            }
            i++;
            i2++;
        }
        return Integer.compare(length, zzatwVar2.f4413a.length);
    }
}
