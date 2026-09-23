package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcvs implements zzems {

    /* renamed from: a, reason: collision with root package name */
    public final List f5512a;

    public zzcvs(List list) {
        this.f5512a = list;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgyj] */
    @Override // com.google.android.gms.internal.ads.zzems
    public final void zzm() {
        Iterator it = this.f5512a.iterator();
        while (it.hasNext()) {
            zzgym.k((ListenableFuture) it.next(), new Object(), zzgyb.f8301c);
        }
    }

    public zzcvs(zzcvk zzcvkVar) {
        this.f5512a = Collections.singletonList(zzgym.a(zzcvkVar));
    }
}
