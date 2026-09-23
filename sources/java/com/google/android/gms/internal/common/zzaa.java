package com.google.android.gms.internal.common;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzaa extends zzab {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f9908a = new Object[4];
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9909c;

    public final void a(Object obj) {
        int i;
        obj.getClass();
        int length = this.f9908a.length;
        int i2 = this.b;
        int i3 = i2 + 1;
        if (i3 >= 0) {
            if (i3 <= length) {
                i = length;
            } else {
                i = (length >> 1) + length + 1;
                if (i < i3) {
                    int highestOneBit = Integer.highestOneBit(i2);
                    i = highestOneBit + highestOneBit;
                }
                if (i < 0) {
                    i = Integer.MAX_VALUE;
                }
            }
            if (i > length || this.f9909c) {
                this.f9908a = Arrays.copyOf(this.f9908a, i);
                this.f9909c = false;
            }
            Object[] objArr = this.f9908a;
            int i4 = this.b;
            this.b = i4 + 1;
            objArr[i4] = obj;
            return;
        }
        throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
    }

    public void b(Object obj) {
        a(obj);
    }
}
