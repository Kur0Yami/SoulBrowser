package com.google.android.gms.internal.consent_sdk;

import j$.util.Objects;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzsf implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f10111c;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzsi h;

    public /* synthetic */ zzsf(zzsi zzsiVar) {
        Objects.requireNonNull(zzsiVar);
        this.h = zzsiVar;
        this.f10111c = -1;
    }

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f10111c + 1;
        zzsi zzsiVar = this.h;
        if (i < zzsiVar.f) {
            return true;
        }
        if (!zzsiVar.g.isEmpty() && a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f = true;
        int i = this.f10111c + 1;
        this.f10111c = i;
        zzsi zzsiVar = this.h;
        if (i < zzsiVar.f) {
            return (zzse) zzsiVar.f10113c[i];
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            int i = zzsi.k;
            zzsi zzsiVar = this.h;
            zzsiVar.h();
            int i2 = this.f10111c;
            if (i2 < zzsiVar.f) {
                this.f10111c = i2 - 1;
                zzsiVar.f(i2);
                return;
            } else {
                a().remove();
                return;
            }
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
