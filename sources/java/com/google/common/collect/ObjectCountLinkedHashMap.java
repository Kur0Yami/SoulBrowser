package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;
import org.jspecify.annotations.NullMarked;

@GwtCompatible
@NullMarked
/* loaded from: classes3.dex */
final class ObjectCountLinkedHashMap<K> extends ObjectCountHashMap<K> {
    public transient long[] i;
    public transient int j;
    public transient int k;

    @Override // com.google.common.collect.ObjectCountHashMap
    public final void a() {
        super.a();
        this.j = -2;
        this.k = -2;
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final int c() {
        int i = this.j;
        if (i == -2) {
            return -1;
        }
        return i;
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final void h(int i) {
        super.h(i);
        this.j = -2;
        this.k = -2;
        long[] jArr = new long[i];
        this.i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final void i(Object obj, int i, int i2, int i3) {
        super.i(obj, i, i2, i3);
        q(this.k, i);
        q(i, -2);
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final void j(int i) {
        int i2 = this.f12381c - 1;
        long j = this.i[i];
        q((int) (j >>> 32), (int) j);
        if (i < i2) {
            q((int) (this.i[i2] >>> 32), i);
            q(i, (int) this.i[i2]);
        }
        super.j(i);
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final int k(int i) {
        int i2 = (int) this.i[i];
        if (i2 == -2) {
            return -1;
        }
        return i2;
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final int l(int i, int i2) {
        if (i == this.f12381c) {
            return i2;
        }
        return i;
    }

    @Override // com.google.common.collect.ObjectCountHashMap
    public final void o(int i) {
        super.o(i);
        long[] jArr = this.i;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        this.i = copyOf;
        Arrays.fill(copyOf, length, i, -1L);
    }

    public final void q(int i, int i2) {
        if (i == -2) {
            this.j = i2;
        } else {
            long[] jArr = this.i;
            jArr[i] = (jArr[i] & (-4294967296L)) | (i2 & 4294967295L);
        }
        if (i2 == -2) {
            this.k = i;
        } else {
            long[] jArr2 = this.i;
            jArr2[i2] = (4294967295L & jArr2[i2]) | (i << 32);
        }
    }
}
