package j$.util.stream;

/* loaded from: classes2.dex */
public final class m8 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f21456a;
    public final /* synthetic */ Runnable b;

    public m8(Runnable runnable, Runnable runnable2) {
        this.f21456a = runnable;
        this.b = runnable2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f21456a.run();
            this.b.run();
        } catch (Throwable th) {
            try {
                this.b.run();
            } catch (Throwable th2) {
                try {
                    th.addSuppressed(th2);
                } catch (Throwable unused) {
                }
            }
            throw th;
        }
    }
}
