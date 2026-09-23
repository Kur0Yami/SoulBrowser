package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzkg implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f9744c = 0;
    public final /* synthetic */ zzkh f;

    public zzkg(zzkh zzkhVar) {
        this.f = zzkhVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f9744c;
        zzkh zzkhVar = this.f;
        if (i < zzkhVar.f.f[zzkhVar.f9745c + 1] - zzkhVar.a()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f9744c;
        zzkh zzkhVar = this.f;
        int i2 = zzkhVar.f9745c;
        zzki zzkiVar = zzkhVar.f;
        if (i < zzkiVar.f[i2 + 1] - zzkhVar.a()) {
            Object obj = zzkiVar.f9746c[zzkhVar.a() + i];
            this.f9744c = i + 1;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
