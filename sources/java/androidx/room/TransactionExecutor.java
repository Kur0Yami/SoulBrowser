package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
class TransactionExecutor implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f1634c;
    public final ArrayDeque f = new ArrayDeque();
    public Runnable g;

    public TransactionExecutor(Executor executor) {
        this.f1634c = executor;
    }

    public final synchronized void a() {
        Runnable runnable = (Runnable) this.f.poll();
        this.g = runnable;
        if (runnable != null) {
            this.f1634c.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(final Runnable runnable) {
        this.f.offer(new Runnable() { // from class: androidx.room.TransactionExecutor.1
            @Override // java.lang.Runnable
            public final void run() {
                TransactionExecutor transactionExecutor = TransactionExecutor.this;
                try {
                    runnable.run();
                } finally {
                    transactionExecutor.a();
                }
            }
        });
        if (this.g == null) {
            a();
        }
    }
}
