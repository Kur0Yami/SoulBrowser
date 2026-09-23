package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzbh extends zzbd {
    public zzbh() {
        this.f11133a = new Object[4];
        this.b = 0;
    }

    public final void a(Object obj) {
        obj.getClass();
        int i = this.b;
        int i2 = i + 1;
        Object[] objArr = this.f11133a;
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
            this.f11133a = Arrays.copyOf(objArr, i3);
            this.f11134c = false;
        } else if (this.f11134c) {
            this.f11133a = (Object[]) objArr.clone();
            this.f11134c = false;
        }
        Object[] objArr2 = this.f11133a;
        int i4 = this.b;
        this.b = i4 + 1;
        objArr2[i4] = obj;
    }

    public final zzbk b() {
        this.f11134c = true;
        return zzbk.p(this.b, this.f11133a);
    }
}
