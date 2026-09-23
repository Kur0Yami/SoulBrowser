package io.opencensus.trace.samplers;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class AutoValue_ProbabilitySampler extends ProbabilitySampler {

    /* renamed from: a, reason: collision with root package name */
    public final long f21126a;

    public AutoValue_ProbabilitySampler(long j) {
        this.f21126a = j;
    }

    @Override // io.opencensus.trace.samplers.ProbabilitySampler
    public final long a() {
        return this.f21126a;
    }

    @Override // io.opencensus.trace.samplers.ProbabilitySampler
    public final double b() {
        return 1.0E-4d;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ProbabilitySampler) {
                ProbabilitySampler probabilitySampler = (ProbabilitySampler) obj;
                if (Double.doubleToLongBits(1.0E-4d) == Double.doubleToLongBits(probabilitySampler.b()) && this.f21126a == probabilitySampler.a()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long doubleToLongBits = ((int) (1000003 ^ (Double.doubleToLongBits(1.0E-4d) ^ (Double.doubleToLongBits(1.0E-4d) >>> 32)))) * 1000003;
        long j = this.f21126a;
        return (int) (doubleToLongBits ^ (j ^ (j >>> 32)));
    }

    public final String toString() {
        return a.o(new StringBuilder("ProbabilitySampler{probability=1.0E-4, idUpperBound="), this.f21126a, "}");
    }
}
