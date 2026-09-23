package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzhxi extends zzhxj implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f8868c = new ArrayList();

    @Override // com.google.android.gms.internal.ads.zzhxj
    public final String a() {
        ArrayList arrayList = this.f8868c;
        int size = arrayList.size();
        if (size == 1) {
            return ((zzhxj) arrayList.get(0)).a();
        }
        throw new IllegalStateException(androidx.work.impl.workers.a.r(size, "Array must have size 1, but has size ", new StringBuilder(String.valueOf(size).length() + 37)));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzhxi) && ((zzhxi) obj).f8868c.equals(this.f8868c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f8868c.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f8868c.iterator();
    }
}
