package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzgti extends zzgvr {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8250c;
    public zzgvr f;

    public zzgti(zzgtl zzgtlVar) {
        Objects.requireNonNull(zzgtlVar);
        zzgtg zzgtgVar = zzgtlVar.h;
        zzgsz zzgszVar = zzgtgVar.g;
        if (zzgszVar == null) {
            zzgszVar = zzgtgVar.d();
            zzgtgVar.g = zzgszVar;
        }
        this.f8250c = ((zzgtd) zzgszVar).listIterator(0);
        this.f = zzgtt.h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f.hasNext() && !((zzgra) this.f8250c).hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f.hasNext()) {
            this.f = ((zzgsz) ((zzgra) this.f8250c).next()).iterator();
        }
        return this.f.next();
    }
}
