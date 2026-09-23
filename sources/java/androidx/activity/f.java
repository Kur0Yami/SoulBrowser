package androidx.activity;

import androidx.activity.ComponentActivity;
import androidx.activity.ComponentActivity$fullyDrawnReporter$2;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f49c;
    public final /* synthetic */ Object f;

    public /* synthetic */ f(int i, Object obj) {
        this.f49c = i;
        this.f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f49c) {
            case 0:
                ComponentActivity.ReportFullyDrawnExecutorImpl this$0 = (ComponentActivity.ReportFullyDrawnExecutorImpl) this.f;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                Runnable runnable = this$0.f;
                if (runnable != null) {
                    Intrinsics.checkNotNull(runnable);
                    runnable.run();
                    this$0.f = null;
                    return;
                }
                return;
            case 1:
                FullyDrawnReporter this$02 = (FullyDrawnReporter) this.f;
                Intrinsics.checkNotNullParameter(this$02, "this$0");
                synchronized (this$02.f21c) {
                    try {
                        if (!this$02.d) {
                            ((ComponentActivity$fullyDrawnReporter$2.AnonymousClass1) this$02.b).invoke();
                            this$02.a();
                        }
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                ComponentDialog.a((ComponentDialog) this.f);
                return;
        }
    }
}
