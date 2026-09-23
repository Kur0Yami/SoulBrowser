package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzyr implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f9885c;

    public zzyr(Iterator it) {
        this.f9885c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9885c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f9885c.next();
        if (entry.getValue() instanceof zzys) {
            return new zzyq(entry);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f9885c.remove();
    }
}
