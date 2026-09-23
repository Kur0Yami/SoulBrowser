package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgtx extends zzgux implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final zzauo f8254c;

    public zzgtx(zzauo zzauoVar) {
        this.f8254c = zzauoVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Iterator it = ((Iterable) obj).iterator();
        Iterator it2 = ((Iterable) obj2).iterator();
        while (it.hasNext()) {
            if (!it2.hasNext()) {
                return 1;
            }
            int compare = this.f8254c.compare(it.next(), it2.next());
            if (compare != 0) {
                return compare;
            }
        }
        if (it2.hasNext()) {
            return -1;
        }
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgtx) {
            return this.f8254c.equals(((zzgtx) obj).f8254c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8254c.hashCode() ^ 2075626741;
    }

    public final String toString() {
        return this.f8254c.toString().concat(".lexicographical()");
    }
}
