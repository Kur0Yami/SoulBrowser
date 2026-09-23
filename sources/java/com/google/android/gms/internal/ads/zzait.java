package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import kotlin.UByte;

/* loaded from: classes.dex */
final class zzait {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4074a = new byte[8];
    public final ArrayDeque b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final zzajc f4075c = new zzajc();
    public zzaiu d;
    public int e;
    public int f;
    public long g;

    public final long a(zzaep zzaepVar, int i) {
        zzaepVar.i(this.f4074a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (r0[i2] & UByte.MAX_VALUE);
        }
        return j;
    }
}
