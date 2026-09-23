package com.google.android.gms.internal.auth;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class zzfe extends zzdr implements RandomAccess, zzff {
    public final List f;

    static {
        new zzfe();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfe(int i) {
        super(true);
        ArrayList arrayList = new ArrayList(i);
        this.f = arrayList;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        a();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        a();
        if (collection instanceof zzff) {
            collection = ((zzff) collection).zzg();
        }
        boolean addAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        String m;
        List list = this.f;
        Object obj = list.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzef) {
            zzef zzefVar = (zzef) obj;
            Charset charset = zzfa.f9540a;
            if (zzefVar.g() == 0) {
                m = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                m = zzefVar.m(charset);
            }
            if (zzefVar.p()) {
                list.set(i, m);
            }
            return m;
        }
        byte[] bArr = (byte[]) obj;
        String str = new String(bArr, zzfa.f9540a);
        if (zzhn.f9572a.b(bArr, 0, bArr.length)) {
            list.set(i, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzez
    public final zzez f(int i) {
        List list = this.f;
        if (i >= list.size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(list);
            return new zzfe(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        Object remove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof zzef) {
            zzef zzefVar = (zzef) remove;
            Charset charset = zzfa.f9540a;
            if (zzefVar.g() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return zzefVar.m(charset);
        }
        return new String((byte[]) remove, zzfa.f9540a);
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        Object obj2 = this.f.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof zzef) {
            zzef zzefVar = (zzef) obj2;
            Charset charset = zzfa.f9540a;
            if (zzefVar.g() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return zzefVar.m(charset);
        }
        return new String((byte[]) obj2, zzfa.f9540a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f.size();
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final zzff zze() {
        if (this.f9528c) {
            return new zzhe(this);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final List zzg() {
        return DesugarCollections.unmodifiableList(this.f);
    }

    public zzfe(ArrayList arrayList) {
        super(true);
        this.f = arrayList;
    }

    public zzfe() {
        super(false);
        this.f = Collections.EMPTY_LIST;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f.size(), collection);
    }
}
