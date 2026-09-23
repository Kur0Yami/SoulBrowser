package com.google.android.gms.internal.mlkit_common;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzac extends zzz {
    public zzac() {
        this.f10917a = new Object[4];
        this.b = 0;
    }

    public final void b(Object obj) {
        obj.getClass();
        int i = this.b + 1;
        Object[] objArr = this.f10917a;
        int length = objArr.length;
        if (length < i) {
            this.f10917a = Arrays.copyOf(objArr, zzaa.a(length, i));
            this.f10918c = false;
        } else if (this.f10918c) {
            this.f10917a = (Object[]) objArr.clone();
            this.f10918c = false;
        }
        Object[] objArr2 = this.f10917a;
        int i2 = this.b;
        this.b = i2 + 1;
        objArr2[i2] = obj;
    }
}
