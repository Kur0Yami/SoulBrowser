package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzict extends zzhzl {
    public static final int[] l = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    public final int g;
    public final zzhzl h;
    public final zzhzl i;
    public final int j;
    public final int k;

    public zzict(zzhzl zzhzlVar, zzhzl zzhzlVar2) {
        this.h = zzhzlVar;
        this.i = zzhzlVar2;
        int k = zzhzlVar.k();
        this.j = k;
        this.g = zzhzlVar2.k() + k;
        this.k = Math.max(zzhzlVar.q(), zzhzlVar2.q()) + 1;
    }

    public static int F(int i) {
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return l[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final byte g(int i) {
        zzhzl.a(i, this.g);
        return i(i);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final byte i(int i) {
        int i2 = this.j;
        if (i < i2) {
            return this.h.i(i);
        }
        return this.i.i(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzicq(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final int k() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final void p(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        zzhzl zzhzlVar = this.h;
        int i5 = this.j;
        if (i4 <= i5) {
            zzhzlVar.p(bArr, i, i2, i3);
            return;
        }
        zzhzl zzhzlVar2 = this.i;
        if (i >= i5) {
            zzhzlVar2.p(bArr, i - i5, i2, i3);
            return;
        }
        int i6 = i5 - i;
        zzhzlVar.p(bArr, i, i2, i6);
        zzhzlVar2.p(bArr, 0, i2 + i6, i3 - i6);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final int q() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final boolean r() {
        if (this.g >= F(this.k)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final zzhzl s(int i, int i2) {
        int i3 = this.g;
        int c2 = zzhzl.c(i, i2, i3);
        if (c2 == 0) {
            return zzhzl.f;
        }
        if (c2 == i3) {
            return this;
        }
        zzhzl zzhzlVar = this.h;
        int i4 = this.j;
        if (i2 <= i4) {
            return zzhzlVar.s(i, i2);
        }
        int i5 = i2 - i4;
        zzhzl zzhzlVar2 = this.i;
        if (i >= i4) {
            return zzhzlVar2.s(i - i4, i5);
        }
        return new zzict(zzhzlVar.s(i, zzhzlVar.k()), zzhzlVar2.s(0, i5));
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final void u(zzhzw zzhzwVar) {
        this.h.u(zzhzwVar);
        this.i.u(zzhzwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final boolean v(zzhzl zzhzlVar) {
        boolean F;
        zzics zzicsVar = new zzics(this);
        zzhzi next = zzicsVar.next();
        zzics zzicsVar2 = new zzics(zzhzlVar);
        zzhzi next2 = zzicsVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int k = next.k() - i;
            int k2 = next2.k() - i2;
            int min = Math.min(k, k2);
            if (i == 0) {
                F = next.F(next2, i2, min);
            } else {
                F = next2.F(next, i, min);
            }
            if (!F) {
                return false;
            }
            i3 += min;
            int i4 = this.g;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == k) {
                i = 0;
                next = zzicsVar.next();
            } else {
                i += min;
                next = next;
            }
            if (min == k2) {
                next2 = zzicsVar2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final int w(int i, int i2, int i3) {
        int i4 = i2 + i3;
        zzhzl zzhzlVar = this.h;
        int i5 = this.j;
        if (i4 <= i5) {
            return zzhzlVar.w(i, i2, i3);
        }
        zzhzl zzhzlVar2 = this.i;
        if (i2 >= i5) {
            return zzhzlVar2.w(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return zzhzlVar2.w(zzhzlVar.w(i, i2, i6), 0, i3 - i6);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzibh, java.io.InputStream] */
    @Override // com.google.android.gms.internal.ads.zzhzl
    public final zzhzq x() {
        ArrayList arrayList = new ArrayList();
        zzics zzicsVar = new zzics(this);
        while (zzicsVar.hasNext()) {
            arrayList.add(zzicsVar.next().t());
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ByteBuffer byteBuffer = (ByteBuffer) obj;
            i2 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                i |= 1;
            } else if (byteBuffer.isDirect()) {
                i |= 2;
            } else {
                i |= 4;
            }
        }
        if (i == 2) {
            return new zzhzn(i2, arrayList);
        }
        ?? inputStream = new InputStream();
        inputStream.f8918c = arrayList.iterator();
        inputStream.g = 0;
        int size2 = arrayList.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList.get(i4);
            i4++;
            inputStream.g++;
        }
        inputStream.h = -1;
        if (!inputStream.a()) {
            inputStream.f = zzibe.f8916c;
            inputStream.h = 0;
            inputStream.i = 0;
            inputStream.m = 0L;
        }
        return new zzhzo(inputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    /* renamed from: y */
    public final zzhzg iterator() {
        return new zzicq(this);
    }
}
