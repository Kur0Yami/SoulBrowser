package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class zzgrb extends zzgvr {

    /* renamed from: c, reason: collision with root package name */
    public Object f8219c;
    public int f = 2;

    public abstract Object a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z;
        if (this.f != 4) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        int i = this.f;
        int i2 = i - 1;
        if (i != 0) {
            if (i2 == 0) {
                return true;
            }
            if (i2 != 2) {
                this.f = 4;
                this.f8219c = a();
                if (this.f != 3) {
                    this.f = 1;
                    return true;
                }
            }
            return false;
        }
        throw null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f = 2;
            Object obj = this.f8219c;
            this.f8219c = null;
            return obj;
        }
        throw new NoSuchElementException();
    }
}
