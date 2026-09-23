package com.google.android.gms.internal.cast;

import j$.util.Objects;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzzx implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f9905c;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzzz h;

    public /* synthetic */ zzzx(zzzz zzzzVar) {
        Objects.requireNonNull(zzzzVar);
        this.h = zzzzVar;
        this.f9905c = -1;
    }

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f9905c + 1;
        zzzz zzzzVar = this.h;
        if (i < zzzzVar.f) {
            return true;
        }
        if (!zzzzVar.g.isEmpty() && a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f = true;
        int i = this.f9905c + 1;
        this.f9905c = i;
        zzzz zzzzVar = this.h;
        if (i < zzzzVar.f) {
            return (zzzw) zzzzVar.f9907c[i];
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            zzzz zzzzVar = this.h;
            zzzzVar.g();
            int i = this.f9905c;
            if (i < zzzzVar.f) {
                this.f9905c = i - 1;
                zzzzVar.e(i);
                return;
            } else {
                a().remove();
                return;
            }
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
