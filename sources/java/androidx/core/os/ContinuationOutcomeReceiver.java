package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Landroidx/core/os/ContinuationOutcomeReceiver;", "R", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "Landroid/os/OutcomeReceiver;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver {

    /* renamed from: c, reason: collision with root package name */
    public final CancellableContinuationImpl f705c;

    public ContinuationOutcomeReceiver(CancellableContinuationImpl cancellableContinuationImpl) {
        super(false);
        this.f705c = cancellableContinuationImpl;
    }

    public final void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            Result.Companion companion = Result.INSTANCE;
            this.f705c.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public final void onResult(Object obj) {
        if (compareAndSet(false, true)) {
            this.f705c.resumeWith(Result.m30constructorimpl(obj));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public final String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
