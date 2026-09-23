package com.google.android.gms.internal.ads;

import kotlin.UByte;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class zzajb {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4084a = new zzer(8);
    public int b;

    public final long a(zzaef zzaefVar) {
        int i;
        zzer zzerVar = this.f4084a;
        int i2 = 0;
        zzaefVar.m(zzerVar.f6834a, 0, 1, false);
        int i3 = zzerVar.f6834a[0] & UByte.MAX_VALUE;
        if (i3 != 0) {
            int i4 = Uuid.SIZE_BITS;
            int i5 = 0;
            while (true) {
                i = i5 + 1;
                if ((i3 & i4) != 0) {
                    break;
                }
                i4 >>= 1;
                i5 = i;
            }
            int i6 = i3 & (~i4);
            zzaefVar.m(zzerVar.f6834a, 1, i5, false);
            while (i2 < i5) {
                i2++;
                i6 = (zzerVar.f6834a[i2] & UByte.MAX_VALUE) + (i6 << 8);
            }
            this.b += i;
            return i6;
        }
        return Long.MIN_VALUE;
    }
}
