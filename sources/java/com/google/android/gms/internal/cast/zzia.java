package com.google.android.gms.internal.cast;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzia extends zzil {

    /* renamed from: c, reason: collision with root package name */
    public final Object f9728c;
    public boolean f;

    public zzia(Object obj) {
        this.f9728c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f) {
            this.f = true;
            return this.f9728c;
        }
        throw new NoSuchElementException();
    }
}
