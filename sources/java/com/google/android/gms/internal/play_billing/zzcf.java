package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcf extends zzca {
    public final transient zzbz g;
    public final transient Object[] h;
    public final transient int i;

    public zzcf(zzbz zzbzVar, Object[] objArr, int i) {
        this.g = zzbzVar;
        this.h = objArr;
        this.i = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final int a(Object[] objArr) {
        return i().a(objArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt, java.util.AbstractCollection, java.util.Collection
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

    @Override // com.google.android.gms.internal.play_billing.zzca, com.google.android.gms.internal.play_billing.zzbt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return i().listIterator(0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    /* renamed from: k */
    public final zzck iterator() {
        return i().listIterator(0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzca
    public final zzbw q() {
        return new zzce(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.i;
    }
}
