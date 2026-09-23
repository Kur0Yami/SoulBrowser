package io.opencensus.trace;

import io.opencensus.trace.export.ExportComponent;

/* loaded from: classes3.dex */
public abstract class TraceComponent {

    /* loaded from: classes3.dex */
    public static final class NoopTraceComponent extends TraceComponent {

        /* renamed from: a, reason: collision with root package name */
        public final ExportComponent f21113a = ExportComponent.b();

        @Override // io.opencensus.trace.TraceComponent
        public final ExportComponent a() {
            return this.f21113a;
        }
    }

    public abstract ExportComponent a();
}
