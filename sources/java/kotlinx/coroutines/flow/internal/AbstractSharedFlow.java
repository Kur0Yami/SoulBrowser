package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b \u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00060\u0003j\u0002`\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "S", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/internal/SynchronizedObject;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,128:1\n24#2,4:129\n24#2,4:134\n24#2,4:140\n16#3:133\n16#3:138\n16#3:144\n1#4:139\n13309#5,2:145\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n26#1:129,4\n41#1:134,4\n72#1:140,4\n26#1:133\n41#1:138\n72#1:144\n91#1:145,2\n*E\n"})
/* loaded from: classes4.dex */
public abstract class AbstractSharedFlow<S extends AbstractSharedFlowSlot<?>> {

    /* renamed from: c, reason: collision with root package name */
    public AbstractSharedFlowSlot[] f21827c;
    public int f;
    public int g;

    public final AbstractSharedFlowSlot c() {
        AbstractSharedFlowSlot abstractSharedFlowSlot;
        synchronized (this) {
            try {
                AbstractSharedFlowSlot[] abstractSharedFlowSlotArr = this.f21827c;
                if (abstractSharedFlowSlotArr == null) {
                    abstractSharedFlowSlotArr = e();
                    this.f21827c = abstractSharedFlowSlotArr;
                } else if (this.f >= abstractSharedFlowSlotArr.length) {
                    Object[] copyOf = Arrays.copyOf(abstractSharedFlowSlotArr, abstractSharedFlowSlotArr.length * 2);
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                    this.f21827c = (AbstractSharedFlowSlot[]) copyOf;
                    abstractSharedFlowSlotArr = (AbstractSharedFlowSlot[]) copyOf;
                }
                int i = this.g;
                do {
                    abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                    if (abstractSharedFlowSlot == null) {
                        abstractSharedFlowSlot = d();
                        abstractSharedFlowSlotArr[i] = abstractSharedFlowSlot;
                    }
                    i++;
                    if (i >= abstractSharedFlowSlotArr.length) {
                        i = 0;
                    }
                    Intrinsics.checkNotNull(abstractSharedFlowSlot, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!abstractSharedFlowSlot.a(this));
                this.g = i;
                this.f++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractSharedFlowSlot;
    }

    public abstract AbstractSharedFlowSlot d();

    public abstract AbstractSharedFlowSlot[] e();

    public final void f(AbstractSharedFlowSlot abstractSharedFlowSlot) {
        int i;
        Continuation[] b;
        synchronized (this) {
            try {
                int i2 = this.f - 1;
                this.f = i2;
                if (i2 == 0) {
                    this.g = 0;
                }
                Intrinsics.checkNotNull(abstractSharedFlowSlot, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                b = abstractSharedFlowSlot.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : b) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m30constructorimpl(Unit.INSTANCE));
            }
        }
    }
}
