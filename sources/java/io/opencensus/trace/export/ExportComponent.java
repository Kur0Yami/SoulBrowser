package io.opencensus.trace.export;

import io.opencensus.trace.export.SampledSpanStore;

/* loaded from: classes3.dex */
public abstract class ExportComponent {

    /* loaded from: classes3.dex */
    public static final class NoopExportComponent extends ExportComponent {

        /* renamed from: a, reason: collision with root package name */
        public final SampledSpanStore f21123a = new SampledSpanStore.NoopSampledSpanStore();

        @Override // io.opencensus.trace.export.ExportComponent
        public final SampledSpanStore a() {
            return this.f21123a;
        }
    }

    public static ExportComponent b() {
        return new NoopExportComponent();
    }

    public abstract SampledSpanStore a();
}
