package kotlinx.coroutines.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.Incomplete;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.JobNode;
import kotlinx.coroutines.NodeList;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0007R\u0011\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u00028\u0002X\u0082\u0004R\u0011\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u00028\u0002X\u0082\u0004R\u0013\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00028\u0002X\u0082\u0004¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "Lkotlinx/coroutines/internal/Removed;", "_removedRef", "CondAddOp", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,351:1\n70#1,3:353\n1#2:352\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n132#1:353,3\n*E\n"})
/* loaded from: classes4.dex */
public class LockFreeLinkedListNode {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f21884c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b!\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @PublishedApi
    /* loaded from: classes4.dex */
    public static abstract class CondAddOp extends AtomicOp<LockFreeLinkedListNode> {
        public final JobNode b;

        /* renamed from: c, reason: collision with root package name */
        public NodeList f21885c;

        public CondAddOp(JobNode jobNode) {
            this.b = jobNode;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public final void b(Object obj, Object obj2) {
            boolean z;
            Incomplete incomplete;
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
            if (obj2 == null) {
                z = true;
            } else {
                z = false;
            }
            JobNode jobNode = this.b;
            if (z) {
                incomplete = jobNode;
            } else {
                incomplete = this.f21885c;
            }
            if (incomplete != null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = LockFreeLinkedListNode.f21884c;
                while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, this, incomplete)) {
                    if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != this) {
                        return;
                    }
                }
                if (z) {
                    NodeList nodeList = this.f21885c;
                    Intrinsics.checkNotNull(nodeList);
                    jobNode.e(nodeList);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        r6 = ((kotlinx.coroutines.internal.Removed) r6).f21892a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r5.get(r4) == r3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode d() {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f
            java.lang.Object r1 = r0.get(r9)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            r2 = 0
            r3 = r1
        La:
            r4 = r2
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f21884c
            java.lang.Object r6 = r5.get(r3)
            if (r6 != r9) goto L24
            if (r1 != r3) goto L16
            goto L2d
        L16:
            boolean r2 = r0.compareAndSet(r9, r1, r3)
            if (r2 == 0) goto L1d
            goto L2d
        L1d:
            java.lang.Object r2 = r0.get(r9)
            if (r2 == r1) goto L16
            goto L0
        L24:
            boolean r7 = r9.h()
            if (r7 == 0) goto L2b
            return r2
        L2b:
            if (r6 != 0) goto L2e
        L2d:
            return r3
        L2e:
            boolean r7 = r6 instanceof kotlinx.coroutines.internal.OpDescriptor
            if (r7 == 0) goto L38
            kotlinx.coroutines.internal.OpDescriptor r6 = (kotlinx.coroutines.internal.OpDescriptor) r6
            r6.a(r3)
            goto L0
        L38:
            boolean r7 = r6 instanceof kotlinx.coroutines.internal.Removed
            if (r7 == 0) goto L58
            if (r4 == 0) goto L51
            kotlinx.coroutines.internal.Removed r6 = (kotlinx.coroutines.internal.Removed) r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r6 = r6.f21892a
        L42:
            boolean r7 = r5.compareAndSet(r4, r3, r6)
            if (r7 == 0) goto L4a
            r3 = r4
            goto La
        L4a:
            java.lang.Object r7 = r5.get(r4)
            if (r7 == r3) goto L42
            goto L0
        L51:
            java.lang.Object r3 = r0.get(r3)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            goto Lb
        L58:
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r4)
            r4 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r4 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r4
            r8 = r4
            r4 = r3
            r3 = r8
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.d():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    public final void e(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (f() != lockFreeLinkedListNode) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this)) {
                if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != lockFreeLinkedListNode2) {
                    break;
                }
            }
            if (h()) {
                lockFreeLinkedListNode.d();
                return;
            }
            return;
        }
    }

    public final Object f() {
        while (true) {
            Object obj = f21884c.get(this);
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).a(this);
        }
    }

    public final LockFreeLinkedListNode g() {
        Removed removed;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object f2 = f();
        if (f2 instanceof Removed) {
            removed = (Removed) f2;
        } else {
            removed = null;
        }
        if (removed != null && (lockFreeLinkedListNode = removed.f21892a) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.checkNotNull(f2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (LockFreeLinkedListNode) f2;
    }

    public boolean h() {
        return f() instanceof Removed;
    }

    public final void i() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object f2 = f();
            if (!(f2 instanceof Removed)) {
                if (f2 == this) {
                    return;
                }
                Intrinsics.checkNotNull(f2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) f2;
                lockFreeLinkedListNode.getClass();
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = g;
                Removed removed = (Removed) atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode);
                if (removed == null) {
                    removed = new Removed(lockFreeLinkedListNode);
                    atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, removed);
                }
                do {
                    atomicReferenceFieldUpdater = f21884c;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, f2, removed)) {
                        lockFreeLinkedListNode.d();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == f2);
            } else {
                return;
            }
        }
    }

    public String toString() {
        return new PropertyReference0Impl(this, DebugStringsKt.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + DebugStringsKt.a(this);
    }
}
