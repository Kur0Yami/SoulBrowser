package kotlinx.coroutines.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.EventLoopImplBase;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005R\u000b\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/atomicfu/AtomicInt;", "_size", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n24#2,4:160\n24#2,4:165\n24#2,4:170\n24#2,4:175\n24#2,4:180\n24#2,4:185\n24#2,4:190\n16#3:164\n16#3:169\n16#3:174\n16#3:179\n16#3:184\n16#3:189\n16#3:194\n1#4:195\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n33#1:160,4\n41#1:165,4\n43#1:170,4\n51#1:175,4\n60#1:180,4\n63#1:185,4\n72#1:190,4\n33#1:164\n41#1:169\n43#1:174\n51#1:179\n60#1:184\n63#1:189\n72#1:194\n*E\n"})
/* loaded from: classes4.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {
    public static final /* synthetic */ AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(ThreadSafeHeap.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: a, reason: collision with root package name */
    public ThreadSafeHeapNode[] f21901a;

    public final void a(EventLoopImplBase.DelayedTask delayedTask) {
        delayedTask.b((EventLoopImplBase.DelayedTaskQueue) this);
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f21901a;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        if (threadSafeHeapNodeArr == null) {
            threadSafeHeapNodeArr = new ThreadSafeHeapNode[4];
            this.f21901a = threadSafeHeapNodeArr;
        } else if (atomicIntegerFieldUpdater.get(this) >= threadSafeHeapNodeArr.length) {
            Object[] copyOf = Arrays.copyOf(threadSafeHeapNodeArr, atomicIntegerFieldUpdater.get(this) * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            threadSafeHeapNodeArr = (ThreadSafeHeapNode[]) copyOf;
            this.f21901a = threadSafeHeapNodeArr;
        }
        int i = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i + 1);
        threadSafeHeapNodeArr[i] = delayedTask;
        delayedTask.f = i;
        e(i);
    }

    public final ThreadSafeHeapNode b() {
        ThreadSafeHeapNode threadSafeHeapNode;
        synchronized (this) {
            ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f21901a;
            if (threadSafeHeapNodeArr != null) {
                threadSafeHeapNode = threadSafeHeapNodeArr[0];
            } else {
                threadSafeHeapNode = null;
            }
        }
        return threadSafeHeapNode;
    }

    public final void c(EventLoopImplBase.DelayedTask delayedTask) {
        synchronized (this) {
            if (delayedTask.d() != null) {
                d(delayedTask.f);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0064, code lost:
    
        if (((java.lang.Comparable) r6).compareTo(r7) < 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.ThreadSafeHeapNode d(int r9) {
        /*
            r8 = this;
            kotlinx.coroutines.internal.ThreadSafeHeapNode[] r0 = r8.f21901a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = kotlinx.coroutines.internal.ThreadSafeHeap.b
            int r2 = r1.get(r8)
            r3 = -1
            int r2 = r2 + r3
            r1.set(r8, r2)
            int r2 = r1.get(r8)
            if (r9 >= r2) goto L80
            int r2 = r1.get(r8)
            r8.f(r9, r2)
            int r2 = r9 + (-1)
            int r2 = r2 / 2
            if (r9 <= 0) goto L3c
            r4 = r0[r9]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            java.lang.Comparable r4 = (java.lang.Comparable) r4
            r5 = r0[r2]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            int r4 = r4.compareTo(r5)
            if (r4 >= 0) goto L3c
            r8.f(r9, r2)
            r8.e(r2)
            goto L80
        L3c:
            int r2 = r9 * 2
            int r4 = r2 + 1
            int r5 = r1.get(r8)
            if (r4 < r5) goto L47
            goto L80
        L47:
            kotlinx.coroutines.internal.ThreadSafeHeapNode[] r5 = r8.f21901a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            int r2 = r2 + 2
            int r6 = r1.get(r8)
            if (r2 >= r6) goto L67
            r6 = r5[r2]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            java.lang.Comparable r6 = (java.lang.Comparable) r6
            r7 = r5[r4]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            int r6 = r6.compareTo(r7)
            if (r6 >= 0) goto L67
            goto L68
        L67:
            r2 = r4
        L68:
            r4 = r5[r9]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            java.lang.Comparable r4 = (java.lang.Comparable) r4
            r5 = r5[r2]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            int r4 = r4.compareTo(r5)
            if (r4 > 0) goto L7b
            goto L80
        L7b:
            r8.f(r9, r2)
            r9 = r2
            goto L3c
        L80:
            int r9 = r1.get(r8)
            r9 = r0[r9]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            r2 = 0
            r9.b(r2)
            r9.setIndex(r3)
            int r1 = r1.get(r8)
            r0[r1] = r2
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.ThreadSafeHeap.d(int):kotlinx.coroutines.internal.ThreadSafeHeapNode");
    }

    public final void e(int i) {
        while (i > 0) {
            ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f21901a;
            Intrinsics.checkNotNull(threadSafeHeapNodeArr);
            int i2 = (i - 1) / 2;
            ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
            Intrinsics.checkNotNull(threadSafeHeapNode);
            ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
            Intrinsics.checkNotNull(threadSafeHeapNode2);
            if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                return;
            }
            f(i, i2);
            i = i2;
        }
    }

    public final void f(int i, int i2) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f21901a;
        Intrinsics.checkNotNull(threadSafeHeapNodeArr);
        ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
        Intrinsics.checkNotNull(threadSafeHeapNode);
        ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
        Intrinsics.checkNotNull(threadSafeHeapNode2);
        threadSafeHeapNodeArr[i] = threadSafeHeapNode;
        threadSafeHeapNodeArr[i2] = threadSafeHeapNode2;
        threadSafeHeapNode.setIndex(i);
        threadSafeHeapNode2.setIndex(i2);
    }
}
