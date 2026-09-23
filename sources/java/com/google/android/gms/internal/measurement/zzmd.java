package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzmd implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f10402c = -1;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzmh h;

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f10402c + 1;
        zzmh zzmhVar = this.h;
        if (i < zzmhVar.f.size()) {
            return true;
        }
        if (!zzmhVar.g.isEmpty() && a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f = true;
        int i = this.f10402c + 1;
        this.f10402c = i;
        zzmh zzmhVar = this.h;
        if (i < zzmhVar.f.size()) {
            return (Map.Entry) zzmhVar.f.get(this.f10402c);
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            int i = zzmh.k;
            zzmh zzmhVar = this.h;
            zzmhVar.f();
            if (this.f10402c < zzmhVar.f.size()) {
                int i2 = this.f10402c;
                this.f10402c = i2 - 1;
                zzmhVar.d(i2);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
