package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzgsd extends zzgsg {
    public final /* synthetic */ zzgsk i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgsd(zzgsk zzgskVar) {
        super(zzgskVar);
        Objects.requireNonNull(zzgskVar);
        this.i = zzgskVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgsg
    public final /* bridge */ /* synthetic */ Object a(int i) {
        return new zzgsi(this.i, i);
    }
}
