package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaps {

    /* renamed from: a, reason: collision with root package name */
    public final int f4327a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f4328c;

    public zzaps(int i, String str, int i2, ArrayList arrayList, byte[] bArr) {
        List unmodifiableList;
        this.f4327a = i2;
        if (arrayList == null) {
            unmodifiableList = Collections.EMPTY_LIST;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        }
        this.b = unmodifiableList;
        this.f4328c = bArr;
    }

    public final int a() {
        int i = this.f4327a;
        if (i != 2) {
            return i != 3 ? 0 : 512;
        }
        return 2048;
    }
}
