package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
abstract class zzeo implements zzeq {
    @Override // java.util.Iterator
    public final Object next() {
        zzen zzenVar = (zzen) this;
        int i = zzenVar.f11490c;
        if (i < zzenVar.f) {
            zzenVar.f11490c = i + 1;
            return Byte.valueOf(zzenVar.g.c(i));
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
