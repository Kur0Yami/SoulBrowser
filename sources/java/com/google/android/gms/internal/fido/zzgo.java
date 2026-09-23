package com.google.android.gms.internal.fido;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
final class zzgo extends zzgq {

    /* renamed from: c, reason: collision with root package name */
    public int f10322c = 0;
    public final int f;
    public final /* synthetic */ zzgx g;

    public zzgo(zzgx zzgxVar) {
        this.g = zzgxVar;
        this.f = zzgxVar.g();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10322c < this.f;
    }

    public final byte zza() {
        int i = this.f10322c;
        if (i < this.f) {
            this.f10322c = i + 1;
            return this.g.c(i);
        }
        throw new NoSuchElementException();
    }
}
