package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
abstract class zzgrw<K, V> implements zzgul<K, V> {

    /* renamed from: c, reason: collision with root package name */
    public transient Set f8227c;
    public transient Collection f;
    public transient Map g;

    public abstract Map a();

    public boolean b(Object obj) {
        Iterator<V> it = zzu().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgul)) {
            return false;
        }
        return zzu().equals(((zzgul) obj).zzu());
    }

    public final int hashCode() {
        return zzu().hashCode();
    }

    public final String toString() {
        return zzu().toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgul
    public Map zzu() {
        Map map = this.g;
        if (map == null) {
            Map a2 = a();
            this.g = a2;
            return a2;
        }
        return map;
    }
}
