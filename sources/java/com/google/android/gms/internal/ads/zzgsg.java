package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
abstract class zzgsg implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f8231c;
    public int f;
    public int g;
    public final /* synthetic */ zzgsk h;

    public zzgsg(zzgsk zzgskVar) {
        int i;
        Objects.requireNonNull(zzgskVar);
        this.h = zzgskVar;
        this.f8231c = zzgskVar.i;
        if (zzgskVar.isEmpty()) {
            i = -1;
        } else {
            i = 0;
        }
        this.f = i;
        this.g = -1;
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzgsk zzgskVar = this.h;
        if (zzgskVar.i == this.f8231c) {
            if (hasNext()) {
                int i = this.f;
                this.g = i;
                Object a2 = a(i);
                int i2 = this.f + 1;
                if (i2 >= zzgskVar.j) {
                    i2 = -1;
                }
                this.f = i2;
                return a2;
            }
            throw new NoSuchElementException();
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        zzgsk zzgskVar = this.h;
        if (zzgskVar.i == this.f8231c) {
            if (this.g >= 0) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.g("no calls to next() since the last call to remove()", z);
            this.f8231c += 32;
            zzgskVar.remove(zzgskVar.b()[this.g]);
            this.f--;
            this.g = -1;
            return;
        }
        throw new ConcurrentModificationException();
    }
}
