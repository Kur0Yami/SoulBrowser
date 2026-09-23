package com.google.android.gms.internal.fido;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzca extends zzcc {
    public final transient zzcc g;

    public zzca(zzcc zzccVar) {
        this.g = zzccVar;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.g.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzcc zzccVar = this.g;
        zzbm.a(i, zzccVar.size());
        return zzccVar.get((zzccVar.size() - 1) - i);
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.g.lastIndexOf(obj);
        if (lastIndexOf < 0) {
            return -1;
        }
        return (r0.size() - 1) - lastIndexOf;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    public final int lastIndexOf(Object obj) {
        int indexOf = this.g.indexOf(obj);
        if (indexOf < 0) {
            return -1;
        }
        return (r0.size() - 1) - indexOf;
    }

    @Override // com.google.android.gms.internal.fido.zzcc
    public final zzcc m() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    /* renamed from: p */
    public final zzcc subList(int i, int i2) {
        zzcc zzccVar = this.g;
        zzbm.b(i, i2, zzccVar.size());
        return zzccVar.subList(zzccVar.size() - i2, zzccVar.size() - i).m();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.size();
    }
}
