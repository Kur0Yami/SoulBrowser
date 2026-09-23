package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* loaded from: classes.dex */
final class zzgub extends zzgvq {
    public final /* synthetic */ zzguc f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgub(zzguc zzgucVar, ListIterator listIterator) {
        super(listIterator);
        this.f = zzgucVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgvp
    public final Object a(Object obj) {
        return this.f.f.apply(obj);
    }
}
