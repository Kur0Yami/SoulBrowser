package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzcgq implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f5135c = new ArrayList();

    public final boolean a(zzcfk zzcfkVar) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f5135c;
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            zzcgp zzcgpVar = (zzcgp) obj;
            if (zzcgpVar.b == zzcfkVar) {
                arrayList.add(zzcgpVar);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj2 = arrayList.get(i);
            i++;
            ((zzcgp) obj2).f5134c.o();
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f5135c.iterator();
    }
}
