package androidx.arch.core.executor;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f361c;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f361c) {
            case 0:
                ArchTaskExecutor.a().f357a.b.execute(runnable);
                return;
            default:
                runnable.run();
                return;
        }
    }
}
