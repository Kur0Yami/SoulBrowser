package com.google.android.gms.internal.common;

/* loaded from: classes.dex */
final class zzae extends zzz {
    public final zzah g;

    public zzae(zzah zzahVar, int i) {
        super(zzahVar.size(), i);
        this.g = zzahVar;
    }

    @Override // com.google.android.gms.internal.common.zzz
    public final Object a(int i) {
        return this.g.get(i);
    }
}
