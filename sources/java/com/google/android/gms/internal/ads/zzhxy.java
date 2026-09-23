package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
abstract class zzhxy implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public zzhxz f8876c;
    public zzhxz f;
    public int g;
    public final /* synthetic */ zzhya h;

    public zzhxy(zzhya zzhyaVar) {
        Objects.requireNonNull(zzhyaVar);
        this.h = zzhyaVar;
        this.f8876c = zzhyaVar.i.h;
        this.f = null;
        this.g = zzhyaVar.h;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzhxz next() {
        zzhxz zzhxzVar = this.f8876c;
        zzhya zzhyaVar = this.h;
        if (zzhxzVar != zzhyaVar.i) {
            if (zzhyaVar.h == this.g) {
                this.f8876c = zzhxzVar.h;
                this.f = zzhxzVar;
                return zzhxzVar;
            }
            throw new ConcurrentModificationException();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8876c != this.h.i;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzhxz zzhxzVar = this.f;
        if (zzhxzVar != null) {
            zzhya zzhyaVar = this.h;
            zzhyaVar.b(zzhxzVar, true);
            this.f = null;
            this.g = zzhyaVar.h;
            return;
        }
        throw new IllegalStateException();
    }
}
