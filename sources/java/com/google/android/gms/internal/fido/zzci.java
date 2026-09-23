package com.google.android.gms.internal.fido;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzci extends zzce {
    public final /* synthetic */ zzcj h;

    public zzci(zzcj zzcjVar) {
        this.h = zzcjVar;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    /* renamed from: i */
    public final zzdc iterator() {
        return r().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return r().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc s() {
        return new zzch(this);
    }

    @Override // com.google.android.gms.internal.fido.zzce
    public final zzcj t() {
        return this.h;
    }
}
