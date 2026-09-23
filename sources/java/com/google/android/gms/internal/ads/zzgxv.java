package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgxv extends zzgxx {
    public zzgxv(zzgtd zzgtdVar, boolean z) {
        super(zzgtdVar, z, true);
        List arrayList;
        if (zzgtdVar.isEmpty()) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            int size = zzgtdVar.size();
            zzgrz.b(size, "initialArraySize");
            arrayList = new ArrayList(size);
        }
        for (int i = 0; i < zzgtdVar.size(); i++) {
            arrayList.add(null);
        }
        this.t = arrayList;
        v();
    }

    @Override // com.google.android.gms.internal.ads.zzgxx
    public final List y(List list) {
        Object obj;
        int size = list.size();
        zzgrz.b(size, "initialArraySize");
        ArrayList arrayList = new ArrayList(size);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgxw zzgxwVar = (zzgxw) it.next();
            if (zzgxwVar != null) {
                obj = zzgxwVar.f8300a;
            } else {
                obj = null;
            }
            arrayList.add(obj);
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
