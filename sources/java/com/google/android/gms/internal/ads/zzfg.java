package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzfg {

    /* renamed from: a, reason: collision with root package name */
    public long f7317a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f7318c;
    public final ThreadLocal d = new ThreadLocal();

    public zzfg() {
        c(0L);
    }

    public final synchronized long a() {
        long j = this.f7317a;
        if (j == LongCompanionObject.MAX_VALUE || j == 9223372036854775806L) {
            return -9223372036854775807L;
        }
        return j;
    }

    public final synchronized long b() {
        return this.b;
    }

    public final synchronized void c(long j) {
        this.f7317a = j;
        this.b = j == LongCompanionObject.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f7318c = -9223372036854775807L;
    }

    public final synchronized long d(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j2 = this.f7318c;
            if (j2 != -9223372036854775807L) {
                long u = zzfj.u(j2, 90000L, 1000000L, RoundingMode.DOWN);
                long j3 = (4294967296L + u) / 8589934592L;
                long j4 = (((-1) + j3) * 8589934592L) + j;
                long j5 = (j3 * 8589934592L) + j;
                if (Math.abs(j4 - u) < Math.abs(j5 - u)) {
                    j = j4;
                } else {
                    j = j5;
                }
            }
            return f(zzfj.u(j, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long e(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.f7318c;
        if (j2 != -9223372036854775807L) {
            long u = zzfj.u(j2, 90000L, 1000000L, RoundingMode.DOWN);
            long j3 = u / 8589934592L;
            Long.signum(j3);
            long j4 = (j3 * 8589934592L) + j;
            long j5 = ((j3 + 1) * 8589934592L) + j;
            if (j4 >= u) {
                j = j4;
            } else {
                j = j5;
            }
        }
        return f(zzfj.u(j, 1000000L, 90000L, RoundingMode.DOWN));
    }

    public final synchronized long f(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!g()) {
                long j2 = this.f7317a;
                if (j2 == 9223372036854775806L) {
                    Long l = (Long) this.d.get();
                    if (l != null) {
                        j2 = l.longValue();
                    } else {
                        throw null;
                    }
                }
                this.b = j2 - j;
                notifyAll();
            }
            this.f7318c = j;
            return j + this.b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean g() {
        return this.b != -9223372036854775807L;
    }
}
