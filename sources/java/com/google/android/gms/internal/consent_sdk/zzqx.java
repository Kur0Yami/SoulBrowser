package com.google.android.gms.internal.consent_sdk;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqx implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f10088c;

    public zzqx(Iterator it) {
        this.f10088c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10088c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f10088c.next();
        if (entry.getValue() instanceof zzqz) {
            return new zzqw(entry);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f10088c.remove();
    }
}
