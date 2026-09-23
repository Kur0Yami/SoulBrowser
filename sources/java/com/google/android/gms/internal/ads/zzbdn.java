package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
final class zzbdn implements Comparator {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzbds zzbdsVar = (zzbds) obj;
        zzbds zzbdsVar2 = (zzbds) obj2;
        int i = zzbdsVar.f4580c - zzbdsVar2.f4580c;
        if (i != 0) {
            return i;
        }
        return Long.compare(zzbdsVar.f4579a, zzbdsVar2.f4579a);
    }
}
