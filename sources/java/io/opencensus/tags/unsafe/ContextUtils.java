package io.opencensus.tags.unsafe;

import io.grpc.Context;
import io.opencensus.tags.TagContext;
import java.util.Collections;
import java.util.Iterator;
import java.util.logging.Logger;
import javax.annotation.concurrent.Immutable;

/* loaded from: classes3.dex */
public final class ContextUtils {

    @Immutable
    /* loaded from: classes3.dex */
    public static final class EmptyTagContext extends TagContext {
        @Override // io.opencensus.tags.TagContext
        public final Iterator a() {
            return Collections.EMPTY_SET.iterator();
        }
    }

    static {
        Object obj = new Object();
        Logger logger = Context.h;
        new Context.Key("opencensus-tag-context-key", obj);
    }
}
