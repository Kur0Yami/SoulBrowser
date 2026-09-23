package com.google.android.gms.internal.ads;

import j$.util.Optional;
import j$.util.function.Function$CC;
import java.util.function.Function;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzats {
    public static zzaus a(final long j) {
        return zzaus.f(new zzauk() { // from class: com.google.android.gms.internal.ads.zzatr
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                try {
                    ((zzaun) obj).f4424a.b(zzaus.b(j));
                    return Optional.empty();
                } catch (zzaui unused) {
                    return Optional.of(zzatc.f);
                }
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static void b(long j, zzaur zzaurVar, boolean z) {
        long j2;
        boolean z2;
        long[] jArr = {2000490107, 1476547902, 1834034217, 268849430, 1839467528, 4368198174L, 449620248, 1652701270, 1629190168};
        long j3 = jArr[0];
        long j4 = jArr[1];
        long j5 = jArr[2];
        long j6 = jArr[3];
        long j7 = jArr[4];
        long j8 = jArr[5];
        long j9 = jArr[6];
        long j10 = jArr[7];
        long j11 = (((((~j3) & j4) | j5) + ((j3 & j6) | j7)) - j8) + j9;
        long j12 = j10 % 1629190168;
        if (z) {
            j2 = (j + j) ^ (j >> 63);
        } else {
            j2 = j;
        }
        int i = 1;
        while (true) {
            long j13 = j11 ^ j12;
            long j14 = j2 >>> 7;
            if (j14 != 0 || i < 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i2 = (int) (j2 & j13);
            if (z2) {
                i2 = ((i2 | Uuid.SIZE_BITS) << 24) >> 24;
            }
            zzaurVar.f4427a.write((byte) i2);
            if (!z2) {
                return;
            }
            i++;
            j2 = j14;
        }
    }
}
