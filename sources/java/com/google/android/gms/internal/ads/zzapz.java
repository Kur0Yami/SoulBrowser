package com.google.android.gms.internal.ads;

import com.google.api.client.http.HttpStatusCodes;
import java.math.RoundingMode;

/* loaded from: classes.dex */
final class zzapz implements zzaqa {
    public static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    public static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, HttpStatusCodes.STATUS_CODE_TEMPORARY_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* renamed from: a, reason: collision with root package name */
    public final zzaer f4334a;
    public final zzaga b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaqe f4335c;
    public final int d;
    public final byte[] e;
    public final zzer f;
    public final int g;
    public final zzv h;
    public int i;
    public long j;
    public int k;
    public long l;

    public zzapz(zzaer zzaerVar, zzaga zzagaVar, zzaqe zzaqeVar) {
        this.f4334a = zzaerVar;
        this.b = zzagaVar;
        this.f4335c = zzaqeVar;
        int i = zzaqeVar.b;
        int max = Math.max(1, i / 10);
        this.g = max;
        zzer zzerVar = new zzer(zzaqeVar.e);
        zzerVar.M();
        int M = zzerVar.M();
        this.d = M;
        int i2 = zzaqeVar.f4340a;
        int i3 = zzaqeVar.f4341c;
        int d = a.d(i3 - (i2 * 4), 8, zzaqeVar.d * i2, 1);
        if (M == d) {
            String str = zzfj.f7405a;
            int i4 = ((max + M) - 1) / M;
            this.e = new byte[i4 * i3];
            this.f = new zzer((M + M) * i2 * i4);
            int i5 = ((i3 * i) * 8) / M;
            zzt zztVar = new zzt();
            zztVar.e("audio/raw");
            zztVar.g = i5;
            zztVar.h = i5;
            zztVar.m = (max + max) * i2;
            zztVar.D = i2;
            zztVar.E = i;
            zztVar.F = 2;
            this.h = new zzv(zztVar);
            return;
        }
        throw zzat.a(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(d).length() + 34 + String.valueOf(M).length()), "Expected frames per block: ", d, "; got: ", M), null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    public final void a(long j) {
        this.i = 0;
        this.j = j;
        this.k = 0;
        this.l = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    public final void b(int i, long j) {
        this.f4334a.e(new zzaqh(this.f4335c, this.d, i, j));
        this.b.e(this.h);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0045 A[ADDED_TO_REGION, EDGE_INSN: B:49:0x0045->B:14:0x0045 BREAK  A[LOOP:0: B:5:0x0024->B:11:0x003f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003c -> B:3:0x0021). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzaqa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(com.google.android.gms.internal.ads.zzaep r25, long r26) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapz.c(com.google.android.gms.internal.ads.zzaep, long):boolean");
    }

    public final void d(int i) {
        zzaqe zzaqeVar = this.f4335c;
        long u = this.j + zzfj.u(this.l, 1000000L, zzaqeVar.b, RoundingMode.DOWN);
        int i2 = (i + i) * zzaqeVar.f4340a;
        this.b.d(u, 1, i2, this.k - i2, null);
        this.l += i;
        this.k -= i2;
    }
}
