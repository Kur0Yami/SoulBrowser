package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* loaded from: classes.dex */
final class zzgtz extends zzgvq {
    public final /* synthetic */ zzgua f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgtz(zzgua zzguaVar, ListIterator listIterator) {
        super(listIterator);
        this.f = zzguaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgvp
    public final Object a(Object obj) {
        return this.f.f.apply(obj);
    }
}
