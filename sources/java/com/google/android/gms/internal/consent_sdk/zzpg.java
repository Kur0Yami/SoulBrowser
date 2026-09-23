package com.google.android.gms.internal.consent_sdk;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
abstract class zzpg implements zzpi {
    @Override // java.util.Iterator
    public final Object next() {
        zzpf zzpfVar = (zzpf) this;
        int i = zzpfVar.f10072c;
        if (i < zzpfVar.f) {
            zzpfVar.f10072c = i + 1;
            return Byte.valueOf(zzpfVar.g.c(i));
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
