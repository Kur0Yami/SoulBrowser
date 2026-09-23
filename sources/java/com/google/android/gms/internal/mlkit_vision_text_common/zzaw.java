package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
abstract class zzaw implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f11128c;
    public int f;
    public int g;
    public final /* synthetic */ zzba h;

    public zzaw(zzba zzbaVar) {
        int i;
        this.h = zzbaVar;
        this.f11128c = zzbaVar.i;
        if (zzbaVar.isEmpty()) {
            i = -1;
        } else {
            i = 0;
        }
        this.f = i;
        this.g = -1;
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzba zzbaVar = this.h;
        if (zzbaVar.i == this.f11128c) {
            if (hasNext()) {
                int i = this.f;
                this.g = i;
                Object a2 = a(i);
                int i2 = this.f + 1;
                if (i2 >= zzbaVar.j) {
                    i2 = -1;
                }
                this.f = i2;
                return a2;
            }
            throw new NoSuchElementException();
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        zzba zzbaVar = this.h;
        int i = zzbaVar.i;
        int i2 = this.f11128c;
        if (i == i2) {
            int i3 = this.g;
            if (i3 >= 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f11128c = i2 + 32;
                zzbaVar.remove(zzbaVar.b()[i3]);
                this.f--;
                this.g = -1;
                return;
            }
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        throw new ConcurrentModificationException();
    }
}
