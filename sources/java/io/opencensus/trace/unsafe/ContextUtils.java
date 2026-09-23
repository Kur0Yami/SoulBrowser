package io.opencensus.trace.unsafe;

import io.grpc.Context;
import java.util.logging.Logger;

@Deprecated
/* loaded from: classes3.dex */
public final class ContextUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Context.Key f21129a;

    static {
        Logger logger = Context.h;
        f21129a = new Context.Key("opencensus-trace-span-key", null);
    }
}
