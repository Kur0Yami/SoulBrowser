package io.grpc;

import io.grpc.Context;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
final class ThreadLocalContextStorage extends Context.Storage {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f21056a = Logger.getLogger(ThreadLocalContextStorage.class.getName());
    public static final ThreadLocal b = new ThreadLocal();

    @Override // io.grpc.Context.Storage
    public final Context a() {
        Context context = (Context) b.get();
        if (context == null) {
            return Context.i;
        }
        return context;
    }

    @Override // io.grpc.Context.Storage
    public final void b(Context context, Context context2) {
        if (a() != context) {
            f21056a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        Context context3 = Context.i;
        ThreadLocal threadLocal = b;
        if (context2 != context3) {
            threadLocal.set(context2);
        } else {
            threadLocal.set(null);
        }
    }

    @Override // io.grpc.Context.Storage
    public final Context c(Context context) {
        Context a2 = a();
        b.set(context);
        return a2;
    }
}
