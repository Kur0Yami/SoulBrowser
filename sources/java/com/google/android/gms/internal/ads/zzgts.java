package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes.dex */
final class zzgts extends zzgrb {
    public final /* synthetic */ Iterator g;
    public final /* synthetic */ zzgqb h;

    public zzgts(Iterator it, zzgqb zzgqbVar) {
        this.g = it;
        this.h = zzgqbVar;
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
        } while (!this.h.zza(next));
        return next;
    }
}
