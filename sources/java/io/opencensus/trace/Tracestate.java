package io.opencensus.trace;

import io.opencensus.internal.Utils;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Tracestate {

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public static final Tracestate f21117a;

        static {
            boolean z;
            List list = Collections.EMPTY_LIST;
            if (list.size() <= 32) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                f21117a = new AutoValue_Tracestate(DesugarCollections.unmodifiableList(list));
                return;
            }
            throw new IllegalStateException("Invalid size");
        }

        public Builder(Tracestate tracestate) {
            Utils.b(tracestate, "parent");
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Entry {
    }

    public abstract List a();
}
