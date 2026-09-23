package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
final class zzgvh extends zzgrb {
    public final Iterator g;
    public final /* synthetic */ Set h;

    public zzgvh(zzgvi zzgviVar, Set set, Set set2) {
        this.h = set2;
        this.g = set.iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzgrb
    public final Object a() {
        Object next;
        do {
            Iterator it = this.g;
            if (it.hasNext()) {
                next = it.next();
            } else {
                this.f = 3;
                return null;
            }
        } while (!this.h.contains(next));
        return next;
    }
}
