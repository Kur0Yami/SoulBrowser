package com.google.android.gms.internal.cast;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhs extends zzhp {
    public zzhs() {
        this.f9719a = new Object[4];
        this.b = 0;
    }

    public final void b(String str) {
        str.getClass();
        int length = this.f9719a.length;
        int a2 = zzhq.a(length, this.b + 1);
        if (a2 > length || this.f9720c) {
            this.f9719a = Arrays.copyOf(this.f9719a, a2);
            this.f9720c = false;
        }
        Object[] objArr = this.f9719a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = str;
    }

    public final zzhv c() {
        this.f9720c = true;
        return zzhv.p(this.b, this.f9719a);
    }
}
