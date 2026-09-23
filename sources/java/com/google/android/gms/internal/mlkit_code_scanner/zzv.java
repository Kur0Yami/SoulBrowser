package com.google.android.gms.internal.mlkit_code_scanner;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzv extends zzs {
    public final transient zzr g;
    public final transient Object[] h;
    public final transient int i = 1;

    public zzv(zzr zzrVar, Object[] objArr) {
        this.g = zzrVar;
        this.h = objArr;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzl
    public final int a(Object[] objArr) {
        return m().a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzl, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.g.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzl
    /* renamed from: i */
    public final zzaa iterator() {
        return m().listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzs, com.google.android.gms.internal.mlkit_code_scanner.zzl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return m().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.i;
    }
}
