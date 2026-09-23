package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class zzeg {

    /* renamed from: a, reason: collision with root package name */
    public int f6467a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f6468c;
    public long[] d;
    public int e;

    public final long a() {
        int i = this.f6468c;
        if (i != 0) {
            long[] jArr = this.d;
            int i2 = this.f6467a;
            long j = jArr[i2];
            this.f6467a = this.e & (i2 + 1);
            this.f6468c = i - 1;
            return j;
        }
        throw new NoSuchElementException();
    }
}
