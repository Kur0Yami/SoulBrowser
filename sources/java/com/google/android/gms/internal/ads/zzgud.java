package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzgud {
    public static ArrayList a(zzgvr zzgvrVar) {
        ArrayList arrayList = new ArrayList();
        zzgvrVar.getClass();
        while (zzgvrVar.hasNext()) {
            arrayList.add(zzgvrVar.next());
        }
        return arrayList;
    }

    public static AbstractList b(List list, zzgpr zzgprVar) {
        if (android.support.v4.media.a.A(list)) {
            return new zzgua(list, zzgprVar);
        }
        return new zzguc(list, zzgprVar);
    }
}
