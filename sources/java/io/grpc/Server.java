package io.grpc;

import io.grpc.Context;
import java.util.logging.Logger;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public abstract class Server {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f21052a = 0;

    static {
        Logger logger = Context.h;
        new Context.Key("io.grpc.Server", null);
    }
}
