package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgsx extends zzgsy {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f8239a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8240c;

    public zzgsx(int i) {
        zzgrz.b(i, "initialCapacity");
        this.f8239a = new Object[i];
        this.b = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgsy
    public /* bridge */ /* synthetic */ zzgsy a(Object obj) {
        throw null;
    }

    public final void c(Object obj) {
        obj.getClass();
        e(1);
        Object[] objArr = this.f8239a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
    }

    public final void d(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            e(collection.size());
            if (collection instanceof zzgsz) {
                this.b = ((zzgsz) collection).p(this.b, this.f8239a);
                return;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public final void e(int i) {
        int length = this.f8239a.length;
        int b = zzgsy.b(length, this.b + i);
        if (b <= length && !this.f8240c) {
            return;
        }
        this.f8239a = Arrays.copyOf(this.f8239a, b);
        this.f8240c = false;
    }
}
