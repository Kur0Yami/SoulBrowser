package com.google.android.gms.internal.consent_sdk;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzdx extends zzeb {

    /* renamed from: c, reason: collision with root package name */
    public final Object f10008c;
    public boolean f;

    public zzdx(Object obj) {
        this.f10008c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f) {
            this.f = true;
            return this.f10008c;
        }
        throw new NoSuchElementException();
    }
}
