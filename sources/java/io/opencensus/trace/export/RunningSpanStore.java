package io.opencensus.trace.export;

import io.opencensus.internal.Utils;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public abstract class RunningSpanStore {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Filter {
    }

    /* loaded from: classes3.dex */
    public static final class NoopRunningSpanStore extends RunningSpanStore {
        static {
            Map map = Collections.EMPTY_MAP;
            Utils.b(map, "perSpanNameSummary");
            new AutoValue_RunningSpanStore_Summary(DesugarCollections.unmodifiableMap(new HashMap(map)));
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class PerSpanNameSummary {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Summary {
        public abstract Map a();
    }
}
