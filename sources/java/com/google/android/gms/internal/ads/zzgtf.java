package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzgtf {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f8246a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public zzgte f8247c;

    public zzgtf() {
        this(4);
    }

    public final void a(Object obj, Object obj2) {
        int i = this.b + 1;
        Object[] objArr = this.f8246a;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.f8246a = Arrays.copyOf(objArr, zzgsy.b(length, i2));
        }
        zzgrz.a(obj, obj2);
        Object[] objArr2 = this.f8246a;
        int i3 = this.b;
        int i4 = i3 + i3;
        objArr2[i4] = obj;
        objArr2[i4 + 1] = obj2;
        this.b = i3 + 1;
    }

    public final void b(Set set) {
        if (android.support.v4.media.a.A(set)) {
            int size = set.size() + this.b;
            Object[] objArr = this.f8246a;
            int length = objArr.length;
            int i = size + size;
            if (i > length) {
                this.f8246a = Arrays.copyOf(objArr, zzgsy.b(length, i));
            }
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            a(entry.getKey(), entry.getValue());
        }
    }

    public final zzgtg c() {
        return d(true);
    }

    public final zzgtg d(boolean z) {
        zzgte zzgteVar;
        zzgte zzgteVar2;
        if (z && (zzgteVar2 = this.f8247c) != null) {
            throw zzgteVar2.a();
        }
        zzgvd e = zzgvd.e(this.b, this.f8246a, this);
        if (z && (zzgteVar = this.f8247c) != null) {
            throw zzgteVar.a();
        }
        return e;
    }

    public zzgtf(int i) {
        this.f8246a = new Object[i + i];
        this.b = 0;
    }
}
