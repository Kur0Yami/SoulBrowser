package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/internal/ScopeCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "threadLocalIsSet", "Z", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,310:1\n1#2:311\n103#3,13:312\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n265#1:312,13\n*E\n"})
/* loaded from: classes4.dex */
public final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {
    public final ThreadLocal i;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UndispatchedCoroutine(kotlin.coroutines.CoroutineContext r3, kotlin.coroutines.jvm.internal.ContinuationImpl r4) {
        /*
            r2 = this;
            kotlinx.coroutines.UndispatchedMarker r0 = kotlinx.coroutines.UndispatchedMarker.f21608c
            kotlin.coroutines.CoroutineContext$Element r1 = r3.get(r0)
            if (r1 != 0) goto Ld
            kotlin.coroutines.CoroutineContext r0 = r3.plus(r0)
            goto Le
        Ld:
            r0 = r3
        Le:
            r2.<init>(r4, r0)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.i = r0
            kotlin.coroutines.CoroutineContext r4 = r4.getF()
            kotlin.coroutines.ContinuationInterceptor$Key r0 = kotlin.coroutines.ContinuationInterceptor.INSTANCE
            kotlin.coroutines.CoroutineContext$Element r4 = r4.get(r0)
            boolean r4 = r4 instanceof kotlinx.coroutines.CoroutineDispatcher
            if (r4 != 0) goto L31
            r4 = 0
            java.lang.Object r4 = kotlinx.coroutines.internal.ThreadContextKt.c(r3, r4)
            kotlinx.coroutines.internal.ThreadContextKt.a(r3, r4)
            r2.n0(r3, r4)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.UndispatchedCoroutine.<init>(kotlin.coroutines.CoroutineContext, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }

    public final boolean m0() {
        boolean z;
        if (this.threadLocalIsSet && this.i.get() == null) {
            z = true;
        } else {
            z = false;
        }
        this.i.remove();
        return !z;
    }

    public final void n0(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.i.set(TuplesKt.to(coroutineContext, obj));
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.JobSupport
    public final void y(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.i.get();
            if (pair != null) {
                ThreadContextKt.a((CoroutineContext) pair.component1(), pair.component2());
            }
            this.i.remove();
        }
        Object a2 = CompletionStateKt.a(obj);
        Continuation continuation = this.h;
        CoroutineContext f = continuation.getF();
        UndispatchedCoroutine undispatchedCoroutine = null;
        Object c2 = ThreadContextKt.c(f, null);
        if (c2 != ThreadContextKt.f21896a) {
            undispatchedCoroutine = CoroutineContextKt.d(continuation, f, c2);
        }
        try {
            this.h.resumeWith(a2);
            Unit unit = Unit.INSTANCE;
            if (undispatchedCoroutine != null && !undispatchedCoroutine.m0()) {
                return;
            }
            ThreadContextKt.a(f, c2);
        } catch (Throwable th) {
            if (undispatchedCoroutine == null || undispatchedCoroutine.m0()) {
                ThreadContextKt.a(f, c2);
            }
            throw th;
        }
    }
}
