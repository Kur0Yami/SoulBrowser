package com.google.android.gms.internal.auth;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgr implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f9561c = -1;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzgv h;

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f9561c + 1;
        zzgv zzgvVar = this.h;
        if (i < zzgvVar.f.size()) {
            return true;
        }
        if (!zzgvVar.g.isEmpty() && a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f = true;
        int i = this.f9561c + 1;
        this.f9561c = i;
        zzgv zzgvVar = this.h;
        if (i < zzgvVar.f.size()) {
            return (Map.Entry) zzgvVar.f.get(this.f9561c);
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            int i = zzgv.k;
            zzgv zzgvVar = this.h;
            zzgvVar.f();
            if (this.f9561c < zzgvVar.f.size()) {
                int i2 = this.f9561c;
                this.f9561c = i2 - 1;
                zzgvVar.d(i2);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
