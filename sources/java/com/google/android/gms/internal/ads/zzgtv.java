package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzgtv extends zzgvr {

    /* renamed from: c, reason: collision with root package name */
    public final Object f8253c;
    public boolean f;

    public zzgtv(Object obj) {
        this.f8253c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f) {
            this.f = true;
            return this.f8253c;
        }
        throw new NoSuchElementException();
    }
}
