package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzesm implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Set f6890a;

    public zzesm(Set set) {
        this.f6890a = set;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f6890a.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return zzgym.a(new zzesl(arrayList));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 8;
    }
}
