package com.google.android.gms.internal.common;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
abstract class zzk implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public Object f9914c;
    public int f;

    public abstract String a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f;
        if (i != 4) {
            int i2 = i - 1;
            if (i != 0) {
                if (i2 == 0) {
                    return true;
                }
                if (i2 != 2) {
                    this.f = 4;
                    this.f9914c = a();
                    if (this.f != 3) {
                        this.f = 1;
                        return true;
                    }
                }
                return false;
            }
            throw null;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f = 2;
            Object obj = this.f9914c;
            this.f9914c = null;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
