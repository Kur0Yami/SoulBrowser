package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SemaphoreKt {

    /* renamed from: a, reason: collision with root package name */
    public static final int f21949a = SystemPropsKt.d(100, 12, "kotlinx.coroutines.semaphore.maxSpinCycles");
    public static final Symbol b = new Symbol("PERMIT");

    /* renamed from: c, reason: collision with root package name */
    public static final Symbol f21950c = new Symbol("TAKEN");
    public static final Symbol d = new Symbol("BROKEN");
    public static final Symbol e = new Symbol("CANCELLED");
    public static final int f = SystemPropsKt.d(16, 12, "kotlinx.coroutines.semaphore.segmentSize");
}
