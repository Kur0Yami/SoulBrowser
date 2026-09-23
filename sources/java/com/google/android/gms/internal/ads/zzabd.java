package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzabd {
    public int d;
    public int e;
    public int f;
    public final zzaba[] b = new zzaba[5];

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3865a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public int f3866c = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(float f, int i) {
        zzaba zzabaVar;
        int i2 = this.f3866c;
        ArrayList arrayList = this.f3865a;
        if (i2 != 1) {
            Collections.sort(arrayList, zzabc.f3864c);
            this.f3866c = 1;
        }
        int i3 = this.f;
        zzaba[] zzabaVarArr = this.b;
        if (i3 > 0) {
            int i4 = i3 - 1;
            this.f = i4;
            zzabaVar = zzabaVarArr[i4];
        } else {
            zzabaVar = new Object();
        }
        int i5 = this.d;
        this.d = i5 + 1;
        zzabaVar.f3861a = i5;
        zzabaVar.b = i;
        zzabaVar.f3862c = f;
        arrayList.add(zzabaVar);
        this.e += i;
        while (true) {
            int i6 = this.e;
            if (i6 > 2000) {
                int i7 = i6 - 2000;
                zzaba zzabaVar2 = (zzaba) arrayList.get(0);
                int i8 = zzabaVar2.b;
                if (i8 <= i7) {
                    this.e -= i8;
                    arrayList.remove(0);
                    int i9 = this.f;
                    if (i9 < 5) {
                        this.f = i9 + 1;
                        zzabaVarArr[i9] = zzabaVar2;
                    }
                } else {
                    zzabaVar2.b = i8 - i7;
                    this.e -= i7;
                }
            } else {
                return;
            }
        }
    }

    public final float b() {
        int i = this.f3866c;
        ArrayList arrayList = this.f3865a;
        if (i != 0) {
            Collections.sort(arrayList, zzabb.f3863c);
            this.f3866c = 0;
        }
        float f = this.e;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            float f2 = 0.5f * f;
            zzaba zzabaVar = (zzaba) arrayList.get(i3);
            i2 += zzabaVar.b;
            if (i2 >= f2) {
                return zzabaVar.f3862c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((zzaba) arrayList.get(arrayList.size() - 1)).f3862c;
    }
}
