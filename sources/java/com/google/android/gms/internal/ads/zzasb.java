package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class zzasb {
    public static final Comparator d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4381a = new ArrayList();
    public final ArrayList b = new ArrayList(64);

    /* renamed from: c, reason: collision with root package name */
    public int f4382c = 0;

    public final synchronized byte[] a(int i) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i2 < arrayList.size()) {
                byte[] bArr = (byte[]) arrayList.get(i2);
                int length = bArr.length;
                if (length >= i) {
                    this.f4382c -= length;
                    arrayList.remove(i2);
                    this.f4381a.remove(bArr);
                    return bArr;
                }
                i2++;
            } else {
                return new byte[i];
            }
        }
    }

    public final synchronized void b(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length <= 4096) {
                this.f4381a.add(bArr);
                ArrayList arrayList = this.b;
                int binarySearch = Collections.binarySearch(arrayList, bArr, d);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                arrayList.add(binarySearch, bArr);
                this.f4382c += length;
                c();
            }
        }
    }

    public final synchronized void c() {
        while (this.f4382c > 4096) {
            byte[] bArr = (byte[]) this.f4381a.remove(0);
            this.b.remove(bArr);
            this.f4382c -= bArr.length;
        }
    }
}
