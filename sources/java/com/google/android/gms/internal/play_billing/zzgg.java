package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzgg implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f11509c;

    public zzgg(Iterator it) {
        this.f11509c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11509c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f11509c.next();
        if (entry.getValue() instanceof zzgi) {
            return new zzgf(entry);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f11509c.remove();
    }
}
