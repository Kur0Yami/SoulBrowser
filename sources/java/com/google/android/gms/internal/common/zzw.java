package com.google.android.gms.internal.common;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzw {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f9919a;
    public final zzu b;

    public zzw(zzu zzuVar, boolean z) {
        this.b = zzuVar;
        this.f9919a = z;
    }

    public static zzw a(zzp zzpVar) {
        return new zzw(new zzu(zzpVar), false);
    }

    public final Iterable b(String str) {
        return new zzt(this, str);
    }

    public final List c(String str) {
        str.getClass();
        zzs zzsVar = new zzs(this, str, this.b.f9918a);
        ArrayList arrayList = new ArrayList();
        while (zzsVar.hasNext()) {
            arrayList.add((String) zzsVar.next());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
