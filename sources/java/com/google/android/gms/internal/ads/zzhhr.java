package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhhr {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8560a = new HashMap();
    public final HashMap b = new HashMap();

    public final void a(Enum r2, Object obj) {
        this.f8560a.put(r2, obj);
        this.b.put(obj, r2);
    }

    public final zzhhs b() {
        return new zzhhs(DesugarCollections.unmodifiableMap(this.f8560a), DesugarCollections.unmodifiableMap(this.b));
    }
}
