package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmq implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f10252c = -1;
    public boolean f;
    public Iterator g;
    public final /* synthetic */ zzmi h;

    public zzmq(zzmi zzmiVar) {
        this.h = zzmiVar;
    }

    public final Iterator a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f10252c + 1;
        zzmi zzmiVar = this.h;
        if (i < zzmiVar.f.size() || (!zzmiVar.g.isEmpty() && a().hasNext())) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f = true;
        int i = this.f10252c + 1;
        this.f10252c = i;
        zzmi zzmiVar = this.h;
        if (i < zzmiVar.f.size()) {
            return (Map.Entry) zzmiVar.f.get(this.f10252c);
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f) {
            this.f = false;
            int i = zzmi.k;
            zzmi zzmiVar = this.h;
            zzmiVar.g();
            if (this.f10252c < zzmiVar.f.size()) {
                int i2 = this.f10252c;
                this.f10252c = i2 - 1;
                zzmiVar.d(i2);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
