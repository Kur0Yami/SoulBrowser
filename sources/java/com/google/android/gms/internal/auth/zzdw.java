package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzdw extends zzdy {

    /* renamed from: c, reason: collision with root package name */
    public int f9532c = 0;
    public final int f;
    public final /* synthetic */ zzef g;

    public zzdw(zzef zzefVar) {
        this.g = zzefVar;
        this.f = zzefVar.g();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9532c < this.f;
    }

    public final byte zza() {
        int i = this.f9532c;
        if (i < this.f) {
            this.f9532c = i + 1;
            return this.g.c(i);
        }
        throw new NoSuchElementException();
    }
}
