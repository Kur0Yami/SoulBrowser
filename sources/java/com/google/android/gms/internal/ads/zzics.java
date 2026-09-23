package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzics implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f8943c;
    public zzhzi f;

    public zzics(zzhzl zzhzlVar) {
        if (zzhzlVar instanceof zzict) {
            zzict zzictVar = (zzict) zzhzlVar;
            ArrayDeque arrayDeque = new ArrayDeque(zzictVar.k);
            this.f8943c = arrayDeque;
            arrayDeque.push(zzictVar);
            zzhzl zzhzlVar2 = zzictVar.h;
            while (zzhzlVar2 instanceof zzict) {
                zzict zzictVar2 = (zzict) zzhzlVar2;
                this.f8943c.push(zzictVar2);
                zzhzlVar2 = zzictVar2.h;
            }
            this.f = (zzhzi) zzhzlVar2;
            return;
        }
        this.f8943c = null;
        this.f = (zzhzi) zzhzlVar;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzhzi next() {
        zzhzi zzhziVar;
        zzhzi zzhziVar2 = this.f;
        if (zzhziVar2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.f8943c;
            zzhziVar = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzhzl zzhzlVar = ((zzict) arrayDeque.pop()).i;
            while (zzhzlVar instanceof zzict) {
                zzict zzictVar = (zzict) zzhzlVar;
                arrayDeque.push(zzictVar);
                zzhzlVar = zzictVar.h;
            }
            zzhziVar = (zzhzi) zzhzlVar;
        } while (zzhziVar.k() == 0);
        this.f = zzhziVar;
        return zzhziVar2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
