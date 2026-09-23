package com.google.android.gms.internal.mlkit_code_scanner;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzm extends zzj {
    public final void a(String str) {
        str.getClass();
        int i = this.b;
        int i2 = i + 1;
        Object[] objArr = this.f10603a;
        int length = objArr.length;
        if (length < i2) {
            int i3 = length + (length >> 1) + 1;
            if (i3 < i2) {
                int highestOneBit = Integer.highestOneBit(i);
                i3 = highestOneBit + highestOneBit;
            }
            if (i3 < 0) {
                i3 = Integer.MAX_VALUE;
            }
            this.f10603a = Arrays.copyOf(objArr, i3);
            this.f10604c = false;
        } else if (this.f10604c) {
            this.f10603a = (Object[]) objArr.clone();
            this.f10604c = false;
        }
        Object[] objArr2 = this.f10603a;
        int i4 = this.b;
        this.b = i4 + 1;
        objArr2[i4] = str;
    }
}
