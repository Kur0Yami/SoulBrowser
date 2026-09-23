package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzicz implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f8946c;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzidb h;

    public /* synthetic */ zzicz(zzidb zzidbVar) {
        Objects.requireNonNull(zzidbVar);
        this.h = zzidbVar;
        this.f8946c = -1;
    }

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f8946c + 1;
        zzidb zzidbVar = this.h;
        if (i < zzidbVar.f) {
            return true;
        }
        if (!zzidbVar.g.isEmpty() && a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f = true;
        int i = this.f8946c + 1;
        this.f8946c = i;
        zzidb zzidbVar = this.h;
        if (i < zzidbVar.f) {
            return (zzicy) zzidbVar.f8949c[i];
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            zzidb zzidbVar = this.h;
            zzidbVar.g();
            int i = this.f8946c;
            if (i < zzidbVar.f) {
                this.f8946c = i - 1;
                zzidbVar.e(i);
                return;
            } else {
                a().remove();
                return;
            }
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
