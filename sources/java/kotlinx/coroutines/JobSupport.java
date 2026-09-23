package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.selects.SelectInstance;

@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0005\t\n\u000b\f\rR\u0013\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002X\u0082\u0004R\u0013\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00048\u0002X\u0082\u0004¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/ChildHandle;", "_parentHandle", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_state", "AwaitContinuation", "ChildCompletion", "Finishing", "SelectOnAwaitCompletionHandler", "SelectOnJoinCompletionHandler", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 9 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 10 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 11 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 12 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1451:1\n703#1,2:1458\n364#1,2:1467\n366#1,4:1472\n370#1,4:1477\n374#1,2:1484\n364#1,2:1486\n366#1,4:1491\n370#1,4:1496\n374#1,2:1503\n175#1,2:1511\n704#1:1513\n175#1,2:1514\n175#1,2:1533\n175#1,2:1548\n703#1,2:1550\n703#1,2:1552\n175#1,2:1554\n703#1,2:1556\n175#1,2:1558\n175#1,2:1565\n175#1,2:1567\n1#2:1452\n1#2:1476\n1#2:1495\n24#3,4:1453\n24#3,4:1516\n24#3,4:1560\n24#3,4:1569\n16#4:1457\n16#4:1520\n16#4:1564\n16#4:1573\n288#5,2:1460\n288#5,2:1462\n15#6:1464\n159#7:1465\n159#7:1466\n149#7,4:1576\n336#8,3:1469\n339#8,3:1481\n336#8,3:1488\n339#8,3:1500\n336#8,6:1505\n43#9:1521\n18#10:1522\n18#10:1523\n9#10:1544\n9#10:1547\n9#10:1574\n9#10:1575\n9#10:1580\n9#10:1581\n132#11:1524\n70#11,3:1525\n133#11,5:1528\n310#12,9:1535\n319#12,2:1545\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n247#1:1458,2\n329#1:1467,2\n329#1:1472,4\n329#1:1477,4\n329#1:1484,2\n361#1:1486,2\n361#1:1491,4\n361#1:1496,4\n361#1:1503,2\n378#1:1511,2\n423#1:1513\n458#1:1514,2\n550#1:1533,2\n591#1:1548,2\n618#1:1550,2\n627#1:1552,2\n691#1:1554,2\n720#1:1556,2\n733#1:1558,2\n806#1:1565,2\n828#1:1567,2\n329#1:1476\n361#1:1495\n210#1:1453,4\n475#1:1516,4\n736#1:1560,4\n881#1:1569,4\n210#1:1457\n475#1:1520\n736#1:1564\n881#1:1573\n258#1:1460,2\n262#1:1462,2\n270#1:1464\n276#1:1465\n278#1:1466\n1215#1:1576,4\n329#1:1469,3\n329#1:1481,3\n361#1:1488,3\n361#1:1500,3\n365#1:1505,6\n480#1:1521\n492#1:1522\n502#1:1523\n558#1:1544\n574#1:1547\n921#1:1574\n971#1:1575\n1234#1:1580\n1256#1:1581\n523#1:1524\n523#1:1525,3\n523#1:1528,5\n556#1:1535,9\n556#1:1545,2\n*E\n"})
/* loaded from: classes4.dex */
public class JobSupport implements Job, ChildJob, ParentJob {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f21597c = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CancellableContinuationImpl;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1451:1\n1#2:1452\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        public final JobSupport m;

        public AwaitContinuation(Continuation continuation, JobSupport jobSupport) {
            super(1, continuation);
            this.m = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final Throwable p(JobSupport jobSupport) {
            Throwable c2;
            Object S = this.m.S();
            if ((S instanceof Finishing) && (c2 = ((Finishing) S).c()) != null) {
                return c2;
            }
            if (S instanceof CompletedExceptionally) {
                return ((CompletedExceptionally) S).f21573a;
            }
            return jobSupport.j();
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final String y() {
            return "AwaitContinuation";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ChildCompletion extends JobNode {
        public final JobSupport i;
        public final Finishing j;
        public final ChildHandleNode k;
        public final Object l;

        public ChildCompletion(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
            this.i = jobSupport;
            this.j = finishing;
            this.k = childHandleNode;
            this.l = obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            j(th);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        
            r0.x(r0.M(r1, r2));
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:2:0x000c, code lost:
        
            if (r7 != null) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
        
            if (kotlinx.coroutines.Job.DefaultImpls.a(r7.i, new kotlinx.coroutines.JobSupport.ChildCompletion(r0, r1, r7, r2), 1) == kotlinx.coroutines.NonDisposableHandle.f21602c) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
        
            r7 = kotlinx.coroutines.JobSupport.Z(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
        
            if (r7 != null) goto L13;
         */
        @Override // kotlinx.coroutines.CompletionHandlerBase
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void j(java.lang.Throwable r7) {
            /*
                r6 = this;
                kotlinx.coroutines.ChildHandleNode r7 = r6.k
                kotlinx.coroutines.ChildHandleNode r7 = kotlinx.coroutines.JobSupport.Z(r7)
                kotlinx.coroutines.JobSupport r0 = r6.i
                kotlinx.coroutines.JobSupport$Finishing r1 = r6.j
                java.lang.Object r2 = r6.l
                if (r7 == 0) goto L25
            Le:
                kotlinx.coroutines.JobSupport r3 = r7.i
                kotlinx.coroutines.JobSupport$ChildCompletion r4 = new kotlinx.coroutines.JobSupport$ChildCompletion
                r4.<init>(r0, r1, r7, r2)
                r5 = 1
                kotlinx.coroutines.DisposableHandle r3 = kotlinx.coroutines.Job.DefaultImpls.a(r3, r4, r5)
                kotlinx.coroutines.NonDisposableHandle r4 = kotlinx.coroutines.NonDisposableHandle.f21602c
                if (r3 == r4) goto L1f
                return
            L1f:
                kotlinx.coroutines.ChildHandleNode r7 = kotlinx.coroutines.JobSupport.Z(r7)
                if (r7 != 0) goto Le
            L25:
                java.lang.Object r7 = r0.M(r1, r2)
                r0.x(r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.ChildCompletion.j(java.lang.Throwable):void");
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003R\u0013\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048\u0002X\u0082\u0004R\u000b\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004R\u0013\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00048\u0002X\u0082\u0004¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/Incomplete;", "Lkotlinx/atomicfu/AtomicRef;", "_exceptionsHolder", "Lkotlinx/atomicfu/AtomicBoolean;", "_isCompleting", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_rootCause", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1451:1\n1#2:1452\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Finishing implements Incomplete {
        public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(Finishing.class, "_isCompleting$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_rootCause$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile = 0;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* renamed from: c, reason: collision with root package name and from toString */
        public final NodeList list;

        public Finishing(NodeList nodeList, Throwable th) {
            this.list = nodeList;
            this._rootCause$volatile = th;
        }

        public final void a(Throwable th) {
            Throwable c2 = c();
            if (c2 == null) {
                g.set(this, th);
                return;
            }
            if (th != c2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
                Object obj = atomicReferenceFieldUpdater.get(this);
                if (obj == null) {
                    atomicReferenceFieldUpdater.set(this, th);
                    return;
                }
                if (obj instanceof Throwable) {
                    if (th == obj) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList(4);
                    arrayList.add(obj);
                    arrayList.add(th);
                    atomicReferenceFieldUpdater.set(this, arrayList);
                    return;
                }
                if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(th);
                } else {
                    throw new IllegalStateException(("State is " + obj).toString());
                }
            }
        }

        @Override // kotlinx.coroutines.Incomplete
        /* renamed from: b, reason: from getter */
        public final NodeList getF21592c() {
            return this.list;
        }

        public final Throwable c() {
            return (Throwable) g.get(this);
        }

        public final boolean d() {
            if (c() != null) {
                return true;
            }
            return false;
        }

        public final boolean e() {
            if (f.get(this) != 0) {
                return true;
            }
            return false;
        }

        public final ArrayList f(Throwable th) {
            ArrayList arrayList;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                arrayList = new ArrayList(4);
            } else if (obj instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(obj);
                arrayList = arrayList2;
            } else if (obj instanceof ArrayList) {
                arrayList = (ArrayList) obj;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            Throwable c2 = c();
            if (c2 != null) {
                arrayList.add(0, c2);
            }
            if (th != null && !Intrinsics.areEqual(th, c2)) {
                arrayList.add(th);
            }
            atomicReferenceFieldUpdater.set(this, JobSupportKt.e);
            return arrayList;
        }

        @Override // kotlinx.coroutines.Incomplete
        /* renamed from: isActive */
        public final boolean getF21587c() {
            if (c() == null) {
                return true;
            }
            return false;
        }

        public final String toString() {
            return "Finishing[cancelling=" + d() + ", completing=" + e() + ", rootCause=" + c() + ", exceptions=" + h.get(this) + ", list=" + this.list + ']';
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class SelectOnAwaitCompletionHandler extends JobNode {
        public final SelectInstance i;

        public SelectOnAwaitCompletionHandler(SelectInstance selectInstance) {
            this.i = selectInstance;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            j(th);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        public final void j(Throwable th) {
            JobSupport jobSupport = JobSupport.this;
            Object S = jobSupport.S();
            if (!(S instanceof CompletedExceptionally)) {
                S = JobSupportKt.a(S);
            }
            this.i.c(jobSupport, S);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class SelectOnJoinCompletionHandler extends JobNode {
        public final SelectInstance i;

        public SelectOnJoinCompletionHandler(SelectInstance selectInstance) {
            this.i = selectInstance;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            j(th);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        public final void j(Throwable th) {
            this.i.c(JobSupport.this, Unit.INSTANCE);
        }
    }

    public JobSupport(boolean z) {
        Empty empty;
        if (z) {
            empty = JobSupportKt.g;
        } else {
            empty = JobSupportKt.f;
        }
        this._state$volatile = empty;
    }

    public static ChildHandleNode Z(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.h()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = LockFreeLinkedListNode.f;
            LockFreeLinkedListNode d = lockFreeLinkedListNode.d();
            if (d == null) {
                Object obj = atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
                while (true) {
                    lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
                    if (!lockFreeLinkedListNode.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
                }
            } else {
                lockFreeLinkedListNode = d;
            }
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.g();
            if (!lockFreeLinkedListNode.h()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    public static String g0(Object obj) {
        if (obj instanceof Finishing) {
            Finishing finishing = (Finishing) obj;
            if (finishing.d()) {
                return "Cancelling";
            }
            if (finishing.e()) {
                return "Completing";
            }
            return "Active";
        }
        if (obj instanceof Incomplete) {
            if (((Incomplete) obj).getF21587c()) {
                return "Active";
            }
            return "New";
        }
        if (obj instanceof CompletedExceptionally) {
            return "Cancelled";
        }
        return "Completed";
    }

    public static CancellationException h0(JobSupport jobSupport, Throwable th) {
        CancellationException cancellationException;
        if (th instanceof CancellationException) {
            cancellationException = (CancellationException) th;
        } else {
            cancellationException = null;
        }
        if (cancellationException == null) {
            return new JobCancellationException(jobSupport.H(), th, jobSupport);
        }
        return cancellationException;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        r0 = kotlinx.coroutines.JobSupportKt.f21600a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.b) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0100, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        r0 = i0(r0, new kotlinx.coroutines.CompletedExceptionally(K(r10), false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r0 == kotlinx.coroutines.JobSupportKt.f21601c) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.f21600a) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
    
        r0 = null;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0040, code lost:
    
        r4 = S();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
    
        if ((r4 instanceof kotlinx.coroutines.JobSupport.Finishing) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0095, code lost:
    
        if ((r4 instanceof kotlinx.coroutines.Incomplete) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0097, code lost:
    
        if (r1 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
    
        r1 = K(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009d, code lost:
    
        r5 = (kotlinx.coroutines.Incomplete) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (P() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a4, code lost:
    
        if (r5.getF21587c() == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        r5 = i0(r4, new kotlinx.coroutines.CompletedExceptionally(r1, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d3, code lost:
    
        if (r5 == kotlinx.coroutines.JobSupportKt.f21600a) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d7, code lost:
    
        if (r5 == kotlinx.coroutines.JobSupportKt.f21601c) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d9, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r0 = S();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f2, code lost:
    
        throw new java.lang.IllegalStateException(("Cannot happen in " + r4).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a6, code lost:
    
        r6 = R(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00aa, code lost:
    
        if (r6 != null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ad, code lost:
    
        r7 = new kotlinx.coroutines.JobSupport.Finishing(r6, r1);
        r8 = kotlinx.coroutines.JobSupport.f21597c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b8, code lost:
    
        if (r8.compareAndSet(r9, r5, r7) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.Incomplete) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c4, code lost:
    
        if (r8.get(r9) == r5) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ba, code lost:
    
        a0(r6, r1);
        r10 = kotlinx.coroutines.JobSupportKt.f21600a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x005e, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f3, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0048, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0054, code lost:
    
        if (kotlinx.coroutines.JobSupport.Finishing.h.get((kotlinx.coroutines.JobSupport.Finishing) r4) != kotlinx.coroutines.JobSupportKt.e) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0056, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0059, code lost:
    
        if (r5 == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x005b, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x005d, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0063, code lost:
    
        r5 = ((kotlinx.coroutines.JobSupport.Finishing) r4).d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.JobSupport.Finishing) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x006a, code lost:
    
        if (r10 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x006c, code lost:
    
        if (r5 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x007a, code lost:
    
        r10 = ((kotlinx.coroutines.JobSupport.Finishing) r4).c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0081, code lost:
    
        if (r5 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0083, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0084, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0085, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0087, code lost:
    
        a0(((kotlinx.coroutines.JobSupport.Finishing) r4).list, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x008e, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.f21600a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x006e, code lost:
    
        if (r1 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0070, code lost:
    
        r1 = K(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0074, code lost:
    
        ((kotlinx.coroutines.JobSupport.Finishing) r4).a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0058, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00f9, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.f21600a) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00fe, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.b) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
    
        if (((kotlinx.coroutines.JobSupport.Finishing) r0).e() == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0103, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.d) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0105, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0106, code lost:
    
        x(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0109, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean C(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.C(java.lang.Object):boolean");
    }

    public void D(CancellationException cancellationException) {
        C(cancellationException);
    }

    public final boolean E(Throwable th) {
        if (!W()) {
            boolean z = th instanceof CancellationException;
            ChildHandle childHandle = (ChildHandle) f.get(this);
            if (childHandle != null && childHandle != NonDisposableHandle.f21602c) {
                if (childHandle.a(th) || z) {
                    return true;
                }
                return false;
            }
            return z;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.ParentJob
    public final CancellationException F() {
        CancellationException cancellationException;
        Object S = S();
        CancellationException cancellationException2 = null;
        if (S instanceof Finishing) {
            cancellationException = ((Finishing) S).c();
        } else if (S instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) S).f21573a;
        } else if (!(S instanceof Incomplete)) {
            cancellationException = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + S).toString());
        }
        if (cancellationException instanceof CancellationException) {
            cancellationException2 = cancellationException;
        }
        if (cancellationException2 == null) {
            return new JobCancellationException("Parent job is ".concat(g0(S)), cancellationException, this);
        }
        return cancellationException2;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean G() {
        Object S = S();
        if (!(S instanceof CompletedExceptionally)) {
            if (!(S instanceof Finishing) || !((Finishing) S).d()) {
                return false;
            }
            return true;
        }
        return true;
    }

    public String H() {
        return "Job was cancelled";
    }

    public boolean I(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        if (C(th) && getG()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.RuntimeException, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Throwable, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v8 */
    public final void J(Incomplete incomplete, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable th;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        ChildHandle childHandle = (ChildHandle) atomicReferenceFieldUpdater.get(this);
        if (childHandle != null) {
            childHandle.c();
            atomicReferenceFieldUpdater.set(this, NonDisposableHandle.f21602c);
        }
        CompletionHandlerException completionHandlerException = 0;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.f21573a;
        } else {
            th = null;
        }
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).j(th);
                return;
            } catch (Throwable th2) {
                U(new RuntimeException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList f21592c = incomplete.getF21592c();
        if (f21592c != null) {
            Object f2 = f21592c.f();
            Intrinsics.checkNotNull(f2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) f2;
            while (!Intrinsics.areEqual(lockFreeLinkedListNode, f21592c)) {
                if (lockFreeLinkedListNode instanceof JobNode) {
                    JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                    try {
                        jobNode.j(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != 0) {
                            kotlin.ExceptionsKt.addSuppressed(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new RuntimeException("Exception in completion handler " + jobNode + " for " + this, th3);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
                lockFreeLinkedListNode = lockFreeLinkedListNode.g();
                completionHandlerException = completionHandlerException;
            }
            if (completionHandlerException != 0) {
                U(completionHandlerException);
            }
        }
    }

    public final Throwable K(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof Throwable;
        }
        if (z) {
            Throwable th = (Throwable) obj;
            if (th == null) {
                return new JobCancellationException(H(), null, this);
            }
            return th;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ParentJob) obj).F();
    }

    public final Object M(Finishing finishing, Object obj) {
        CompletedExceptionally completedExceptionally;
        boolean d;
        Throwable N;
        Object obj2;
        Throwable th = null;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.f21573a;
        }
        synchronized (finishing) {
            d = finishing.d();
            ArrayList f2 = finishing.f(th);
            N = N(finishing, f2);
            if (N != null && f2.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(f2.size()));
                int size = f2.size();
                int i = 0;
                while (i < size) {
                    Object obj3 = f2.get(i);
                    i++;
                    Throwable th2 = (Throwable) obj3;
                    if (th2 != N && th2 != N && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        kotlin.ExceptionsKt.addSuppressed(N, th2);
                    }
                }
            }
        }
        if (N != null && N != th) {
            obj = new CompletedExceptionally(N, false);
        }
        if (N != null && (E(N) || T(N))) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            CompletedExceptionally completedExceptionally2 = (CompletedExceptionally) obj;
            completedExceptionally2.getClass();
            CompletedExceptionally.b.compareAndSet(completedExceptionally2, 0, 1);
        }
        if (!d) {
            b0(N);
        }
        c0(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f21597c;
        if (obj instanceof Incomplete) {
            obj2 = new IncompleteStateBox((Incomplete) obj);
        } else {
            obj2 = obj;
        }
        while (!atomicReferenceFieldUpdater.compareAndSet(this, finishing, obj2) && atomicReferenceFieldUpdater.get(this) == finishing) {
        }
        J(finishing, obj);
        return obj;
    }

    public final Throwable N(Finishing finishing, ArrayList arrayList) {
        Object obj;
        Object obj2 = null;
        if (arrayList.isEmpty()) {
            if (!finishing.d()) {
                return null;
            }
            return new JobCancellationException(H(), null, this);
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                obj = arrayList.get(i2);
                i2++;
                if (!(((Throwable) obj) instanceof CancellationException)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            int size2 = arrayList.size();
            while (true) {
                if (i >= size2) {
                    break;
                }
                Object obj3 = arrayList.get(i);
                i++;
                Throwable th3 = (Throwable) obj3;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = obj3;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    /* renamed from: O */
    public boolean getG() {
        return true;
    }

    public boolean P() {
        return this instanceof CompletableDeferredImpl;
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [kotlinx.coroutines.NodeList, kotlinx.coroutines.internal.LockFreeLinkedListNode] */
    public final NodeList R(Incomplete incomplete) {
        NodeList f21592c = incomplete.getF21592c();
        if (f21592c == null) {
            if (incomplete instanceof Empty) {
                return new LockFreeLinkedListNode();
            }
            if (incomplete instanceof JobNode) {
                e0((JobNode) incomplete);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + incomplete).toString());
        }
        return f21592c;
    }

    public final Object S() {
        while (true) {
            Object obj = f21597c.get(this);
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).a(this);
        }
    }

    public boolean T(Throwable th) {
        return false;
    }

    public final void V(Job job) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        NonDisposableHandle nonDisposableHandle = NonDisposableHandle.f21602c;
        if (job == null) {
            atomicReferenceFieldUpdater.set(this, nonDisposableHandle);
            return;
        }
        job.start();
        ChildHandle l = job.l(this);
        atomicReferenceFieldUpdater.set(this, l);
        if (!(S() instanceof Incomplete)) {
            l.c();
            atomicReferenceFieldUpdater.set(this, nonDisposableHandle);
        }
    }

    public boolean W() {
        return this instanceof BlockingCoroutine;
    }

    public final Object X(Object obj) {
        Object i0;
        CompletedExceptionally completedExceptionally;
        do {
            i0 = i0(S(), obj);
            if (i0 == JobSupportKt.f21600a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                Throwable th = null;
                if (obj instanceof CompletedExceptionally) {
                    completedExceptionally = (CompletedExceptionally) obj;
                } else {
                    completedExceptionally = null;
                }
                if (completedExceptionally != null) {
                    th = completedExceptionally.f21573a;
                }
                throw new IllegalStateException(str, th);
            }
        } while (i0 == JobSupportKt.f21601c);
        return i0;
    }

    public String Y() {
        return getClass().getSimpleName();
    }

    @Override // kotlinx.coroutines.Job
    public void a(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(H(), null, this);
        }
        D(cancellationException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v5 */
    public final void a0(NodeList nodeList, Throwable th) {
        b0(th);
        Object f2 = nodeList.f();
        Intrinsics.checkNotNull(f2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) f2;
        CompletionHandlerException completionHandlerException = 0;
        while (!Intrinsics.areEqual(lockFreeLinkedListNode, nodeList)) {
            if (lockFreeLinkedListNode instanceof JobCancellingNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                try {
                    jobNode.j(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != 0) {
                        kotlin.ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new RuntimeException("Exception in completion handler " + jobNode + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
            lockFreeLinkedListNode = lockFreeLinkedListNode.g();
            completionHandlerException = completionHandlerException;
        }
        if (completionHandlerException != 0) {
            U(completionHandlerException);
        }
        E(th);
    }

    public void b0(Throwable th) {
    }

    public void c0(Object obj) {
    }

    public void d0() {
    }

    public final void e0(JobNode jobNode) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        LockFreeLinkedListNode lockFreeLinkedListNode = new LockFreeLinkedListNode();
        jobNode.getClass();
        LockFreeLinkedListNode.f.set(lockFreeLinkedListNode, jobNode);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = LockFreeLinkedListNode.f21884c;
        atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, jobNode);
        loop0: while (true) {
            if (jobNode.f() != jobNode) {
                break;
            }
            while (!atomicReferenceFieldUpdater2.compareAndSet(jobNode, jobNode, lockFreeLinkedListNode)) {
                if (atomicReferenceFieldUpdater2.get(jobNode) != jobNode) {
                    break;
                }
            }
            lockFreeLinkedListNode.e(jobNode);
        }
        LockFreeLinkedListNode g = jobNode.g();
        do {
            atomicReferenceFieldUpdater = f21597c;
            if (atomicReferenceFieldUpdater.compareAndSet(this, jobNode, g)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == jobNode);
    }

    @Override // kotlinx.coroutines.Job
    public final Object f(ContinuationImpl continuationImpl) {
        Object S;
        do {
            S = S();
            if (!(S instanceof Incomplete)) {
                JobKt.b(continuationImpl.getF());
                return Unit.INSTANCE;
            }
        } while (f0(S) < 0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuationImpl));
        cancellableContinuationImpl.r();
        CancellableContinuationKt.a(cancellableContinuationImpl, i(false, true, new ResumeOnCompletion(cancellableContinuationImpl)));
        Object q = cancellableContinuationImpl.q();
        if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuationImpl);
        }
        if (q != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            q = Unit.INSTANCE;
        }
        if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return q;
        }
        return Unit.INSTANCE;
    }

    public final int f0(Object obj) {
        boolean z = obj instanceof Empty;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f21597c;
        if (z) {
            if (((Empty) obj).f21587c) {
                return 0;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, JobSupportKt.g)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            d0();
            return 1;
        }
        if (obj instanceof InactiveNodeList) {
            NodeList nodeList = ((InactiveNodeList) obj).f21592c;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, nodeList)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            d0();
            return 1;
        }
        return 0;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Job.Key.f21595c;
    }

    @Override // kotlinx.coroutines.Job
    public final Job getParent() {
        ChildHandle childHandle = (ChildHandle) f.get(this);
        if (childHandle != null) {
            return childHandle.getParent();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c7, code lost:
    
        return r1;
     */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.NodeList, kotlinx.coroutines.internal.LockFreeLinkedListNode] */
    @Override // kotlinx.coroutines.Job
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.DisposableHandle i(boolean r9, boolean r10, kotlin.jvm.functions.Function1 r11) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.i(boolean, boolean, kotlin.jvm.functions.Function1):kotlinx.coroutines.DisposableHandle");
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00cb, code lost:
    
        if (r1 != null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00da, code lost:
    
        if (kotlinx.coroutines.Job.DefaultImpls.a(r1.i, new kotlinx.coroutines.JobSupport.ChildCompletion(r7, r2, r1, r9), 1) == kotlinx.coroutines.NonDisposableHandle.f21602c) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00df, code lost:
    
        r1 = Z(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e3, code lost:
    
        if (r1 != null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00de, code lost:
    
        return kotlinx.coroutines.JobSupportKt.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00e9, code lost:
    
        return M(r2, r9);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Throwable, T] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i0(java.lang.Object r8, java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.i0(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object S = S();
        if ((S instanceof Incomplete) && ((Incomplete) S).getF21587c()) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException j() {
        Object S = S();
        CancellationException cancellationException = null;
        if (S instanceof Finishing) {
            Throwable c2 = ((Finishing) S).c();
            if (c2 != null) {
                String concat = getClass().getSimpleName().concat(" is cancelling");
                if (c2 instanceof CancellationException) {
                    cancellationException = (CancellationException) c2;
                }
                if (cancellationException == null) {
                    if (concat == null) {
                        concat = H();
                    }
                    return new JobCancellationException(concat, c2, this);
                }
                return cancellationException;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(S instanceof Incomplete)) {
            if (S instanceof CompletedExceptionally) {
                return h0(this, ((CompletedExceptionally) S).f21573a);
            }
            return new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle l(JobSupport jobSupport) {
        DisposableHandle a2 = Job.DefaultImpls.a(this, new ChildHandleNode(jobSupport), 2);
        Intrinsics.checkNotNull(a2, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (ChildHandle) a2;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle n(Function1 function1) {
        return i(false, true, function1);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int f0;
        do {
            f0 = f0(S());
            if (f0 == 0) {
                return false;
            }
        } while (f0 != 1);
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Y() + '{' + g0(S()) + '}');
        sb.append('@');
        sb.append(DebugStringsKt.a(this));
        return sb.toString();
    }

    public final boolean w(final Incomplete incomplete, NodeList nodeList, final JobNode jobNode) {
        LockFreeLinkedListNode d;
        LockFreeLinkedListNode.CondAddOp condAddOp = new LockFreeLinkedListNode.CondAddOp(jobNode) { // from class: kotlinx.coroutines.JobSupport$addLastAtomic$$inlined$addLastIf$1
            @Override // kotlinx.coroutines.internal.AtomicOp
            public final Object c(Object obj) {
                if (this.S() == incomplete) {
                    return null;
                }
                return LockFreeLinkedListKt.f21883a;
            }
        };
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = LockFreeLinkedListNode.f;
            d = nodeList.d();
            if (d == null) {
                Object obj = atomicReferenceFieldUpdater.get(nodeList);
                while (true) {
                    d = (LockFreeLinkedListNode) obj;
                    if (!d.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(d);
                }
            }
            LockFreeLinkedListNode.f.set(jobNode, d);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = LockFreeLinkedListNode.f21884c;
            atomicReferenceFieldUpdater2.set(jobNode, nodeList);
            condAddOp.f21885c = nodeList;
            while (!atomicReferenceFieldUpdater2.compareAndSet(d, nodeList, condAddOp)) {
                if (atomicReferenceFieldUpdater2.get(d) != nodeList) {
                    break;
                }
            }
        }
        if (condAddOp.a(d) == null) {
            return true;
        }
        return false;
    }

    public void x(Object obj) {
    }

    public void y(Object obj) {
        x(obj);
    }

    public void U(CompletionHandlerException completionHandlerException) {
        throw completionHandlerException;
    }
}
