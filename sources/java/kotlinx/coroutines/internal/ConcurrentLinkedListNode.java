package kotlinx.coroutines.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002R\u0013\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00038\u0002X\u0082\u0004R\u0013\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00038\u0002X\u0082\u0004¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n103#1,7:266\n1#2:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n111#1:266,7\n*E\n"})
/* loaded from: classes4.dex */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f21869c = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public ConcurrentLinkedListNode(Segment segment) {
        this._prev$volatile = segment;
    }

    public final void a() {
        f.set(this, null);
    }

    public final ConcurrentLinkedListNode b() {
        Object obj = f21869c.get(this);
        if (obj == ConcurrentLinkedListKt.f21868a) {
            return null;
        }
        return (ConcurrentLinkedListNode) obj;
    }

    public abstract boolean c();

    public final void d() {
        ConcurrentLinkedListNode concurrentLinkedListNode;
        ConcurrentLinkedListNode b;
        if (b() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            ConcurrentLinkedListNode concurrentLinkedListNode2 = (ConcurrentLinkedListNode) atomicReferenceFieldUpdater.get(this);
            while (concurrentLinkedListNode2 != null && concurrentLinkedListNode2.c()) {
                concurrentLinkedListNode2 = (ConcurrentLinkedListNode) atomicReferenceFieldUpdater.get(concurrentLinkedListNode2);
            }
            ConcurrentLinkedListNode b2 = b();
            Intrinsics.checkNotNull(b2);
            while (b2.c() && (b = b2.b()) != null) {
                b2 = b;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(b2);
                if (((ConcurrentLinkedListNode) obj) == null) {
                    concurrentLinkedListNode = null;
                } else {
                    concurrentLinkedListNode = concurrentLinkedListNode2;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(b2, obj, concurrentLinkedListNode)) {
                    if (atomicReferenceFieldUpdater.get(b2) != obj) {
                        break;
                    }
                }
            }
            if (concurrentLinkedListNode2 != null) {
                f21869c.set(concurrentLinkedListNode2, b2);
            }
            if (!b2.c() || b2.b() == null) {
                if (concurrentLinkedListNode2 == null || !concurrentLinkedListNode2.c()) {
                    return;
                }
            }
        }
    }
}
