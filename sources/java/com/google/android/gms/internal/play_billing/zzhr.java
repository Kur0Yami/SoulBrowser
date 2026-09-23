package com.google.android.gms.internal.play_billing;

import j$.util.Objects;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzhr implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f11533c;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzhu h;

    public /* synthetic */ zzhr(zzhu zzhuVar) {
        Objects.requireNonNull(zzhuVar);
        this.h = zzhuVar;
        this.f11533c = -1;
    }

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f11533c + 1;
        zzhu zzhuVar = this.h;
        if (i < zzhuVar.f) {
            return true;
        }
        if (!zzhuVar.g.isEmpty() && a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f = true;
        int i = this.f11533c + 1;
        this.f11533c = i;
        zzhu zzhuVar = this.h;
        if (i < zzhuVar.f) {
            return (zzhq) zzhuVar.f11535c[i];
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            int i = zzhu.k;
            zzhu zzhuVar = this.h;
            zzhuVar.h();
            int i2 = this.f11533c;
            if (i2 < zzhuVar.f) {
                this.f11533c = i2 - 1;
                zzhuVar.f(i2);
                return;
            } else {
                a().remove();
                return;
            }
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
