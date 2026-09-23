package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/CompletedContinuation;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CompletedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,658:1\n1#2:659\n*E\n"})
/* loaded from: classes4.dex */
public final /* data */ class CompletedContinuation {

    /* renamed from: a, reason: collision with root package name */
    public final Object f21571a;
    public final CancelHandler b;

    /* renamed from: c, reason: collision with root package name */
    public final Function1 f21572c;
    public final Object d;
    public final Throwable e;

    public CompletedContinuation(Object obj, CancelHandler cancelHandler, Function1 function1, Object obj2, Throwable th) {
        this.f21571a = obj;
        this.b = cancelHandler;
        this.f21572c = function1;
        this.d = obj2;
        this.e = th;
    }

    public static CompletedContinuation a(CompletedContinuation completedContinuation, CancelHandler cancelHandler, Throwable th, int i) {
        Object obj = completedContinuation.f21571a;
        if ((i & 2) != 0) {
            cancelHandler = completedContinuation.b;
        }
        CancelHandler cancelHandler2 = cancelHandler;
        Function1 function1 = completedContinuation.f21572c;
        Object obj2 = completedContinuation.d;
        if ((i & 16) != 0) {
            th = completedContinuation.e;
        }
        return new CompletedContinuation(obj, cancelHandler2, function1, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompletedContinuation)) {
            return false;
        }
        CompletedContinuation completedContinuation = (CompletedContinuation) obj;
        return Intrinsics.areEqual(this.f21571a, completedContinuation.f21571a) && Intrinsics.areEqual(this.b, completedContinuation.b) && Intrinsics.areEqual(this.f21572c, completedContinuation.f21572c) && Intrinsics.areEqual(this.d, completedContinuation.d) && Intrinsics.areEqual(this.e, completedContinuation.e);
    }

    public final int hashCode() {
        Object obj = this.f21571a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        CancelHandler cancelHandler = this.b;
        int hashCode2 = (hashCode + (cancelHandler == null ? 0 : cancelHandler.hashCode())) * 31;
        Function1 function1 = this.f21572c;
        int hashCode3 = (hashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f21571a + ", cancelHandler=" + this.b + ", onCancellation=" + this.f21572c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public /* synthetic */ CompletedContinuation(Object obj, CancelHandler cancelHandler, Function1 function1, Throwable th, int i) {
        this(obj, (i & 2) != 0 ? null : cancelHandler, (i & 4) != 0 ? null : function1, (Object) null, (i & 16) != 0 ? null : th);
    }
}
