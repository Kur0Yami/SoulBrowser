package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzgtm extends zzgsx {
    public Object[] d;
    public int e;

    @Override // com.google.android.gms.internal.ads.zzgsx, com.google.android.gms.internal.ads.zzgsy
    public final /* bridge */ /* synthetic */ zzgsy a(Object obj) {
        f(obj);
        return this;
    }

    public final void f(Object obj) {
        obj.getClass();
        if (this.d != null) {
            int s = zzgtn.s(this.b);
            Object[] objArr = this.d;
            if (s <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int a2 = zzgsw.a(hashCode);
                while (true) {
                    int i = a2 & length;
                    Object[] objArr2 = this.d;
                    Object obj2 = objArr2[i];
                    if (obj2 == null) {
                        objArr2[i] = obj;
                        this.e += hashCode;
                        c(obj);
                        return;
                    } else if (!obj2.equals(obj)) {
                        a2 = i + 1;
                    } else {
                        return;
                    }
                }
            }
        }
        this.d = null;
        c(obj);
    }

    public final void g(Iterable iterable) {
        iterable.getClass();
        if (this.d != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                f(it.next());
            }
            return;
        }
        d(iterable);
    }

    public final zzgtn h() {
        zzgtn x;
        int i = this.b;
        if (i != 0) {
            if (i != 1) {
                if (this.d != null && zzgtn.s(i) == this.d.length) {
                    int i2 = this.b;
                    Object[] objArr = this.f8239a;
                    int length = objArr.length;
                    if (i2 < (length >> 1) + (length >> 2)) {
                        objArr = Arrays.copyOf(objArr, i2);
                    }
                    int i3 = this.e;
                    x = new zzgve(objArr, this.d, i3, r5.length - 1, this.b);
                } else {
                    x = zzgtn.x(this.b, this.f8239a);
                    this.b = x.size();
                }
                this.f8240c = true;
                this.d = null;
                return x;
            }
            Object obj = this.f8239a[0];
            Objects.requireNonNull(obj);
            return new zzgvo(obj);
        }
        return zzgve.n;
    }
}
