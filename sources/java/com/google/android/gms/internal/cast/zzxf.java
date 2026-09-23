package com.google.android.gms.internal.cast;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
abstract class zzxf implements zzxh {
    @Override // java.util.Iterator
    public final Object next() {
        zzxe zzxeVar = (zzxe) this;
        int i = zzxeVar.f9868c;
        if (i < zzxeVar.f) {
            zzxeVar.f9868c = i + 1;
            return Byte.valueOf(zzxeVar.g.c(i));
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
