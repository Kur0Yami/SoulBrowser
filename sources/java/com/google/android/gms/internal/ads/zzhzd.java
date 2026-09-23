package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzd extends zzhze {

    /* renamed from: c, reason: collision with root package name */
    public int f8892c = 0;
    public final int f;
    public final /* synthetic */ zzhzl g;

    public zzhzd(zzhzl zzhzlVar) {
        this.g = zzhzlVar;
        this.f = zzhzlVar.k();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8892c < this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzhzg
    public final byte zza() {
        int i = this.f8892c;
        if (i < this.f) {
            this.f8892c = i + 1;
            return this.g.i(i);
        }
        throw new NoSuchElementException();
    }
}
