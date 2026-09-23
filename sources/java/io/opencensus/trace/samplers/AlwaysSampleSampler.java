package io.opencensus.trace.samplers;

import io.opencensus.trace.Sampler;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
final class AlwaysSampleSampler extends Sampler {
    public final String toString() {
        return "AlwaysSampleSampler";
    }
}
