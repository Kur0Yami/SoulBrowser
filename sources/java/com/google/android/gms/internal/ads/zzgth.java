package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgth extends zzgvr {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8249c;
    public Object f;
    public zzgvr g;

    public zzgth(zzgtl zzgtlVar) {
        Objects.requireNonNull(zzgtlVar);
        zzgtg zzgtgVar = zzgtlVar.h;
        zzgtn zzgtnVar = zzgtgVar.f8248c;
        if (zzgtnVar == null) {
            zzgtnVar = zzgtgVar.b();
            zzgtgVar.f8248c = zzgtnVar;
        }
        this.f8249c = zzgtnVar.k().listIterator(0);
        this.f = null;
        this.g = zzgtt.h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.g.hasNext() && !((zzgra) this.f8249c).hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (!this.g.hasNext()) {
            Map.Entry entry = (Map.Entry) ((zzgra) this.f8249c).next();
            this.f = entry.getKey();
            this.g = ((zzgsz) entry.getValue()).iterator();
        }
        Object obj = this.f;
        Objects.requireNonNull(obj);
        return new AbstractMap.SimpleImmutableEntry(obj, this.g.next());
    }
}
