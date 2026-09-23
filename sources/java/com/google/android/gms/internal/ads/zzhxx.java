package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzhxx extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzhya f8875c;

    public zzhxx(zzhya zzhyaVar) {
        this.f8875c = zzhyaVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8875c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f8875c.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzhxy(this.f8875c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzhya zzhyaVar = this.f8875c;
        zzhyaVar.getClass();
        zzhxz zzhxzVar = null;
        if (obj != null) {
            try {
                zzhxzVar = zzhyaVar.a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        if (zzhxzVar != null) {
            zzhyaVar.b(zzhxzVar, true);
        }
        if (zzhxzVar == null) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8875c.g;
    }
}
