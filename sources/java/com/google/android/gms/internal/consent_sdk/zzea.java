package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzea extends zzdw {
    public final transient Object g;

    public zzea(Object obj) {
        this.g = obj;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final void a(Object[] objArr) {
        objArr[0] = this.g;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.g.equals(obj);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdw, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.g.hashCode();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    /* renamed from: i */
    public final zzeb iterator() {
        return new zzdx(this.g);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdw, com.google.android.gms.internal.consent_sdk.zzds, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzdx(this.g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return a.l("[", this.g.toString(), "]");
    }
}
