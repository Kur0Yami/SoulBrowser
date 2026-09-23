package com.google.android.gms.internal.cast;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzht extends zzhl {
    public final zzhv g;

    public zzht(zzhv zzhvVar, int i) {
        super(zzhvVar.size(), i);
        this.g = zzhvVar;
    }

    @Override // com.google.android.gms.internal.cast.zzhl
    public final Object a(int i) {
        return this.g.get(i);
    }
}
