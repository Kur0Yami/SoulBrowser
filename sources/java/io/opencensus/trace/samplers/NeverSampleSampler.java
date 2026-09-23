package io.opencensus.trace.samplers;

import io.opencensus.trace.Sampler;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
final class NeverSampleSampler extends Sampler {
    public final String toString() {
        return "NeverSampleSampler";
    }
}
