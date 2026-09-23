package androidx.biometric;

import android.os.CancellationSignal;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes.dex */
class CancellationSignalProvider {

    /* renamed from: a, reason: collision with root package name */
    public CancellationSignal f399a;
    public androidx.core.os.CancellationSignal b;

    /* renamed from: androidx.biometric.CancellationSignalProvider$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Injector {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api16Impl {
        public static void a(CancellationSignal cancellationSignal) {
            cancellationSignal.cancel();
        }

        public static CancellationSignal b() {
            return new CancellationSignal();
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface Injector {
    }
}
