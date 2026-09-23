package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzkw<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f10227c;

    public zzkw(Iterator it) {
        this.f10227c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10227c.hasNext();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.drive.zzkv, java.lang.Object] */
    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f10227c.next();
        if (entry.getValue() instanceof zzkt) {
            ?? obj = new Object();
            obj.f10226c = entry;
            return obj;
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f10227c.remove();
    }
}
