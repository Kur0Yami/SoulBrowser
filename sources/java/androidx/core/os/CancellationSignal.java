package androidx.core.os;

@Deprecated
/* loaded from: classes.dex */
public final class CancellationSignal {

    /* renamed from: a, reason: collision with root package name */
    public boolean f703a;
    public OnCancelListener b;

    /* renamed from: c, reason: collision with root package name */
    public android.os.CancellationSignal f704c;
    public boolean d;

    /* loaded from: classes.dex */
    public interface OnCancelListener {
        void onCancel();
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.f703a) {
                    return;
                }
                this.f703a = true;
                this.d = true;
                OnCancelListener onCancelListener = this.b;
                android.os.CancellationSignal cancellationSignal = this.f704c;
                if (onCancelListener != null) {
                    try {
                        onCancelListener.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (cancellationSignal != null) {
                    cancellationSignal.cancel();
                }
                synchronized (this) {
                    this.d = false;
                    notifyAll();
                }
            } finally {
            }
        }
    }

    public final Object b() {
        android.os.CancellationSignal cancellationSignal;
        synchronized (this) {
            try {
                if (this.f704c == null) {
                    android.os.CancellationSignal cancellationSignal2 = new android.os.CancellationSignal();
                    this.f704c = cancellationSignal2;
                    if (this.f703a) {
                        cancellationSignal2.cancel();
                    }
                }
                cancellationSignal = this.f704c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cancellationSignal;
    }

    public final void c(OnCancelListener onCancelListener) {
        synchronized (this) {
            while (this.d) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (this.b != onCancelListener) {
                this.b = onCancelListener;
                if (this.f703a) {
                    onCancelListener.onCancel();
                }
            }
        }
    }
}
