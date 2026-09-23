package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzfu extends zzfw {
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7654c;
    public final ArrayList d;

    public zzfu(int i, long j) {
        super(i);
        this.b = j;
        this.f7654c = new ArrayList();
        this.d = new ArrayList();
    }

    public final zzfv b(int i) {
        ArrayList arrayList = this.f7654c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzfv zzfvVar = (zzfv) arrayList.get(i2);
            if (zzfvVar.f7697a == i) {
                return zzfvVar;
            }
        }
        return null;
    }

    public final zzfu c(int i) {
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzfu zzfuVar = (zzfu) arrayList.get(i2);
            if (zzfuVar.f7697a == i) {
                return zzfuVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    public final String toString() {
        String a2 = zzfw.a(this.f7697a);
        String arrays = Arrays.toString(this.f7654c.toArray());
        String arrays2 = Arrays.toString(this.d.toArray());
        int length = a2.length();
        StringBuilder sb = new StringBuilder(length + 9 + String.valueOf(arrays).length() + 13 + String.valueOf(arrays2).length());
        android.support.v4.media.a.z(sb, a2, " leaves: ", arrays, " containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
