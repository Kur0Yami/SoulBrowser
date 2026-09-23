package io.opencensus.trace.samplers;

import io.opencensus.trace.Sampler;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
abstract class ProbabilitySampler extends Sampler {
    public abstract long a();

    public abstract double b();
}
