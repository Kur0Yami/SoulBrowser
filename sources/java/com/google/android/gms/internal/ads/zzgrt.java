package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
abstract class zzgrt extends zzgrw implements Serializable {
    public final transient Map h;
    public transient int i;

    public zzgrt(Map map) {
        zzgqa.a(map.isEmpty());
        this.h = map;
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public Map a() {
        throw null;
    }

    public Collection c(Collection collection) {
        throw null;
    }

    public Collection d(Collection collection, Object obj) {
        throw null;
    }

    public abstract Collection e();

    public final void f() {
        Map map = this.h;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.i = 0;
    }

    public Set g() {
        throw null;
    }
}
