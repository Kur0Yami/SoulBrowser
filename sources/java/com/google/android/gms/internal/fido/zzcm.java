package com.google.android.gms.internal.fido;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
final class zzcm extends zzdc {
    public static final Object f = new Object();

    /* renamed from: c, reason: collision with root package name */
    public Object f10287c;

    public zzcm(Object obj) {
        this.f10287c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10287c != f;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.f10287c;
        Object obj2 = f;
        if (obj != obj2) {
            this.f10287c = obj2;
            return obj;
        }
        throw new NoSuchElementException();
    }
}
