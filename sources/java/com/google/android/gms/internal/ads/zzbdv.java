package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class zzbdv implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzbdl zzbdlVar = (zzbdl) obj;
        zzbdl zzbdlVar2 = (zzbdl) obj2;
        float f = zzbdlVar.b;
        float f2 = zzbdlVar2.b;
        if (f < f2) {
            return -1;
        }
        if (f > f2) {
            return 1;
        }
        float f3 = zzbdlVar.f4573a;
        float f4 = zzbdlVar2.f4573a;
        if (f3 < f4) {
            return -1;
        }
        if (f3 > f4) {
            return 1;
        }
        float f5 = (zzbdlVar.d - f) * (zzbdlVar.f4574c - f3);
        float f6 = (zzbdlVar2.d - f2) * (zzbdlVar2.f4574c - f4);
        if (f5 > f6) {
            return -1;
        }
        if (f5 < f6) {
            return 1;
        }
        return 0;
    }
}
