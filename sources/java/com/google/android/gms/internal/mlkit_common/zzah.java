package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.Feature;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzah {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f10654a = new Object[8];
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public zzag f10655c;

    public final void a(String str, Feature feature) {
        int i = this.b + 1;
        Object[] objArr = this.f10654a;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.f10654a = Arrays.copyOf(objArr, zzaa.a(length, i2));
        }
        Object[] objArr2 = this.f10654a;
        int i3 = this.b;
        int i4 = i3 + i3;
        objArr2[i4] = str;
        objArr2[i4 + 1] = feature;
        this.b = i3 + 1;
    }

    public final zzai b() {
        zzag zzagVar = this.f10655c;
        if (zzagVar == null) {
            zzaq d = zzaq.d(this.b, this.f10654a, this);
            zzag zzagVar2 = this.f10655c;
            if (zzagVar2 == null) {
                return d;
            }
            throw zzagVar2.a();
        }
        throw zzagVar.a();
    }
}
