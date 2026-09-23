package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
final class zzis extends zziu {

    /* renamed from: c, reason: collision with root package name */
    public int f10374c = 0;
    public final int f;
    public final /* synthetic */ zzjb g;

    public zzis(zzjb zzjbVar) {
        this.g = zzjbVar;
        this.f = zzjbVar.g();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10374c < this.f;
    }

    public final byte zza() {
        int i = this.f10374c;
        if (i < this.f) {
            this.f10374c = i + 1;
            return this.g.c(i);
        }
        throw new NoSuchElementException();
    }
}
