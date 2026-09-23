package com.google.android.gms.internal.fido;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
final class zzfe implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f10302c = 0;
    public final /* synthetic */ zzff f;

    public zzfe(zzff zzffVar) {
        this.f = zzffVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f10302c;
        zzff zzffVar = this.f;
        if (i < zzffVar.f.f[zzffVar.f10303c + 1] - zzffVar.a()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f10302c;
        zzff zzffVar = this.f;
        int i2 = zzffVar.f10303c;
        zzfg zzfgVar = zzffVar.f;
        if (i < zzfgVar.f[i2 + 1] - zzffVar.a()) {
            Object obj = zzfgVar.f10304c[zzffVar.a() + i];
            this.f10302c = i + 1;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
