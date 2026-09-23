package okhttp3.internal;

import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f22079a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ b(String str, boolean z) {
        this.f22079a = str;
        this.b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        TimeZone timeZone = _UtilJvmKt.f22077a;
        Thread thread = new Thread(runnable, this.f22079a);
        thread.setDaemon(this.b);
        return thread;
    }
}
