package kotlinx.coroutines.scheduling;

import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeTaskQueue;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\b\t\nR\u000b\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004R\u000b\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004R\u000b\u0010\u0007\u001a\u00020\u00058\u0002X\u0082\u0004¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "Lkotlinx/atomicfu/AtomicBoolean;", "_isTerminated", "Lkotlinx/atomicfu/AtomicLong;", "controlState", "parkedWorkersStack", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1042:1\n282#1:1045\n280#1:1046\n280#1:1047\n282#1:1048\n277#1:1054\n278#1,5:1055\n288#1:1061\n280#1:1062\n281#1:1063\n280#1:1069\n281#1:1070\n277#1:1071\n285#1:1072\n280#1:1073\n280#1:1076\n281#1:1077\n282#1:1078\n89#2:1043\n89#2:1060\n1#3:1044\n24#4,4:1049\n24#4,4:1064\n16#5:1053\n16#5:1068\n86#6:1074\n618#7:1075\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n278#1:1045\n285#1:1046\n286#1:1047\n295#1:1048\n344#1:1054\n373#1:1055,5\n396#1:1061\n443#1:1062\n444#1:1063\n480#1:1069\n481#1:1070\n487#1:1071\n496#1:1072\n496#1:1073\n577#1:1076\n578#1:1077\n579#1:1078\n116#1:1043\n393#1:1060\n344#1:1049,4\n476#1:1064,4\n344#1:1053\n476#1:1068\n513#1:1074\n520#1:1075\n*E\n"})
/* loaded from: classes4.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final /* synthetic */ AtomicLongFieldUpdater l = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater m = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater n = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");
    public static final Symbol o = new Symbol("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* renamed from: c, reason: collision with root package name */
    public final int f21905c;
    private volatile /* synthetic */ long controlState$volatile;
    public final int f;
    public final long g;
    public final String h;
    public final GlobalQueue i;
    public final GlobalQueue j;
    public final ResizableAtomicArray k;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00058\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00058\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0007R\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0007¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BLOCKING_MASK", "J", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BLOCKING_SHIFT", "I", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "Lkotlinx/coroutines/internal/Symbol;", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/Symbol;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                WorkerState workerState = WorkerState.f21907c;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                WorkerState workerState2 = WorkerState.f21907c;
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                WorkerState workerState3 = WorkerState.f21907c;
                iArr[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                WorkerState workerState4 = WorkerState.f21907c;
                iArr[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                WorkerState workerState5 = WorkerState.f21907c;
                iArr[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001R*\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\b\u0010\u0012\u001a\u00020\u00118\u0006¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "index", "indexInArray", "I", "b", "()I", "f", "(I)V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "nextParkedWorker", "Ljava/lang/Object;", "c", "()Ljava/lang/Object;", "g", "(Ljava/lang/Object;)V", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1042:1\n294#2,2:1043\n282#2:1045\n296#2,4:1046\n301#2:1050\n291#2,2:1051\n291#2,2:1055\n277#2:1062\n286#2:1063\n280#2:1064\n277#2:1065\n1#3:1053\n86#4:1054\n24#5,4:1057\n16#6:1061\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n673#1:1043,2\n673#1:1045\n673#1:1046,4\n688#1:1050\n762#1:1051,2\n816#1:1055,2\n864#1:1062\n890#1:1063\n890#1:1064\n972#1:1065\n799#1:1054\n860#1:1057,4\n860#1:1061\n*E\n"})
    /* loaded from: classes4.dex */
    public final class Worker extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater m = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");

        /* renamed from: c, reason: collision with root package name */
        public final WorkQueue f21906c;
        public final Ref.ObjectRef f;
        public WorkerState g;
        public long h;
        public long i;
        private volatile int indexInArray;
        public int j;
        public boolean k;

        @Nullable
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        public Worker(int i) {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.class.getClassLoader());
            this.f21906c = new WorkQueue();
            this.f = new Ref.ObjectRef();
            this.g = WorkerState.h;
            this.nextParkedWorker = CoroutineScheduler.o;
            this.j = Random.INSTANCE.nextInt();
            f(i);
        }

        public final Task a(boolean z) {
            Task e;
            Task e2;
            long j;
            WorkerState workerState = this.g;
            WorkerState workerState2 = WorkerState.f21907c;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            Task task = null;
            boolean z2 = true;
            WorkQueue workQueue = this.f21906c;
            if (workerState != workerState2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.m;
                do {
                    j = atomicLongFieldUpdater.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        workQueue.getClass();
                        loop1: while (true) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = WorkQueue.b;
                            Task task2 = (Task) atomicReferenceFieldUpdater.get(workQueue);
                            if (task2 == null || task2.f.getF21910c() != 1) {
                                break;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(workQueue, task2, null)) {
                                if (atomicReferenceFieldUpdater.get(workQueue) != task2) {
                                    break;
                                }
                            }
                            task = task2;
                        }
                        int i = WorkQueue.d.get(workQueue);
                        int i2 = WorkQueue.f21913c.get(workQueue);
                        while (true) {
                            if (i == i2 || WorkQueue.e.get(workQueue) == 0) {
                                break;
                            }
                            i2--;
                            Task c2 = workQueue.c(i2, true);
                            if (c2 != null) {
                                task = c2;
                                break;
                            }
                        }
                        if (task == null) {
                            Task task3 = (Task) coroutineScheduler.j.d();
                            if (task3 == null) {
                                return i(1);
                            }
                            return task3;
                        }
                        return task;
                    }
                } while (!CoroutineScheduler.m.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
                this.g = WorkerState.f21907c;
            }
            if (z) {
                if (d(coroutineScheduler.f21905c * 2) != 0) {
                    z2 = false;
                }
                if (z2 && (e2 = e()) != null) {
                    return e2;
                }
                workQueue.getClass();
                Task task4 = (Task) WorkQueue.b.getAndSet(workQueue, null);
                if (task4 == null) {
                    task4 = workQueue.b();
                }
                if (task4 != null) {
                    return task4;
                }
                if (!z2 && (e = e()) != null) {
                    return e;
                }
            } else {
                Task e3 = e();
                if (e3 != null) {
                    return e3;
                }
            }
            return i(3);
        }

        /* renamed from: b, reason: from getter */
        public final int getIndexInArray() {
            return this.indexInArray;
        }

        /* renamed from: c, reason: from getter */
        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final int d(int i) {
            int i2 = this.j;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.j = i5;
            int i6 = i - 1;
            if ((i6 & i) == 0) {
                return i5 & i6;
            }
            return (i5 & Integer.MAX_VALUE) % i;
        }

        public final Task e() {
            int d = d(2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            if (d == 0) {
                Task task = (Task) coroutineScheduler.i.d();
                if (task != null) {
                    return task;
                }
                return (Task) coroutineScheduler.j.d();
            }
            Task task2 = (Task) coroutineScheduler.j.d();
            if (task2 != null) {
                return task2;
            }
            return (Task) coroutineScheduler.i.d();
        }

        public final void f(int i) {
            String valueOf;
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.h);
            sb.append("-worker-");
            if (i == 0) {
                valueOf = "TERMINATED";
            } else {
                valueOf = String.valueOf(i);
            }
            sb.append(valueOf);
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void g(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean h(WorkerState workerState) {
            boolean z;
            WorkerState workerState2 = this.g;
            if (workerState2 == WorkerState.f21907c) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                CoroutineScheduler.m.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.g = workerState;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a3, code lost:
        
            r7 = -2;
            r5 = r4;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v1, types: [T, kotlinx.coroutines.scheduling.Task, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v14, types: [kotlinx.coroutines.scheduling.Task] */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.scheduling.Task] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlinx.coroutines.scheduling.Task i(int r26) {
            /*
                Method dump skipped, instructions count: 263
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.i(int):kotlinx.coroutines.scheduling.Task");
        }

        /* JADX WARN: Code restructure failed: missing block: B:80:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0004, code lost:
        
            continue;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 409
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.run():void");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class WorkerState {

        /* renamed from: c, reason: collision with root package name */
        public static final WorkerState f21907c;
        public static final WorkerState f;
        public static final WorkerState g;
        public static final WorkerState h;
        public static final WorkerState i;
        public static final /* synthetic */ WorkerState[] j;
        public static final /* synthetic */ EnumEntries k;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        static {
            ?? r0 = new Enum("CPU_ACQUIRED", 0);
            f21907c = r0;
            ?? r1 = new Enum("BLOCKING", 1);
            f = r1;
            ?? r3 = new Enum("PARKING", 2);
            g = r3;
            ?? r5 = new Enum("DORMANT", 3);
            h = r5;
            ?? r7 = new Enum("TERMINATED", 4);
            i = r7;
            WorkerState[] workerStateArr = {r0, r1, r3, r5, r7};
            j = workerStateArr;
            k = EnumEntriesKt.enumEntries(workerStateArr);
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) j.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r3v10, types: [kotlinx.coroutines.scheduling.GlobalQueue, kotlinx.coroutines.internal.LockFreeTaskQueue] */
    /* JADX WARN: Type inference failed for: r3v11, types: [kotlinx.coroutines.scheduling.GlobalQueue, kotlinx.coroutines.internal.LockFreeTaskQueue] */
    public CoroutineScheduler(int i, int i2, String str, long j) {
        this.f21905c = i;
        this.f = i2;
        this.g = j;
        this.h = str;
        if (i >= 1) {
            if (i2 >= i) {
                if (i2 <= 2097150) {
                    if (j > 0) {
                        this.i = new LockFreeTaskQueue();
                        this.j = new LockFreeTaskQueue();
                        this.k = new ResizableAtomicArray((i + 1) * 2);
                        this.controlState$volatile = i << 42;
                        this._isTerminated$volatile = 0;
                        return;
                    }
                    throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
                }
                throw new IllegalArgumentException(a.f(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
            }
            throw new IllegalArgumentException(androidx.work.impl.workers.a.s("Max pool size ", i2, i, " should be greater than or equals to core pool size ").toString());
        }
        throw new IllegalArgumentException(a.f(i, "Core pool size ", " should be at least 1").toString());
    }

    public static /* synthetic */ void d(CoroutineScheduler coroutineScheduler, Runnable runnable, int i) {
        boolean z;
        TaskContext taskContext = TasksKt.g;
        if ((i & 4) != 0) {
            z = false;
        } else {
            z = true;
        }
        coroutineScheduler.b(runnable, taskContext, z);
    }

    public final int a() {
        boolean z;
        synchronized (this.k) {
            try {
                if (n.get(this) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = m;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int coerceAtLeast = RangesKt.coerceAtLeast(i - ((int) ((j & 4398044413952L) >> 21)), 0);
                if (coerceAtLeast >= this.f21905c) {
                    return 0;
                }
                if (i >= this.f) {
                    return 0;
                }
                int i2 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i2 > 0 && this.k.b(i2) == null) {
                    Worker worker = new Worker(i2);
                    this.k.c(i2, worker);
                    if (i2 == ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                        int i3 = coerceAtLeast + 1;
                        worker.start();
                        return i3;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Runnable runnable, TaskContext taskContext, boolean z) {
        Task taskImpl;
        boolean z2;
        long j;
        Worker worker;
        boolean a2;
        TasksKt.f.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof Task) {
            taskImpl = (Task) runnable;
            taskImpl.f21909c = nanoTime;
            taskImpl.f = taskContext;
        } else {
            taskImpl = new TaskImpl(runnable, nanoTime, taskContext);
        }
        boolean z3 = false;
        if (taskImpl.f.getF21910c() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = m;
        if (z2) {
            j = atomicLongFieldUpdater.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        } else {
            j = 0;
        }
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof Worker) {
            worker = (Worker) currentThread;
        } else {
            worker = null;
        }
        if (worker == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            worker = null;
        }
        if (worker != null && worker.g != WorkerState.i && (taskImpl.f.getF21910c() != 0 || worker.g != WorkerState.f)) {
            worker.k = true;
            WorkQueue workQueue = worker.f21906c;
            if (z) {
                taskImpl = workQueue.a(taskImpl);
            } else {
                workQueue.getClass();
                Task task = (Task) WorkQueue.b.getAndSet(workQueue, taskImpl);
                if (task == null) {
                    taskImpl = null;
                } else {
                    taskImpl = workQueue.a(task);
                }
            }
        }
        if (taskImpl != null) {
            if (taskImpl.f.getF21910c() == 1) {
                a2 = this.j.a(taskImpl);
            } else {
                a2 = this.i.a(taskImpl);
            }
            if (!a2) {
                throw new RejectedExecutionException(a.p(new StringBuilder(), this.h, " was terminated"));
            }
        }
        if (z && worker != null) {
            z3 = true;
        }
        if (z2) {
            if (!z3 && !i() && !f(j)) {
                i();
                return;
            }
            return;
        }
        if (z3 || i() || f(atomicLongFieldUpdater.get(this))) {
            return;
        }
        i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        if (r1 == null) goto L39;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.n
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof kotlinx.coroutines.scheduling.CoroutineScheduler.Worker
            r3 = 0
            if (r1 == 0) goto L17
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r0 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r0
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 == 0) goto L23
            kotlinx.coroutines.scheduling.CoroutineScheduler r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r8)
            if (r1 == 0) goto L23
            goto L24
        L23:
            r0 = r3
        L24:
            kotlinx.coroutines.internal.ResizableAtomicArray r1 = r8.k
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = kotlinx.coroutines.scheduling.CoroutineScheduler.m     // Catch: java.lang.Throwable -> Lc3
            long r4 = r4.get(r8)     // Catch: java.lang.Throwable -> Lc3
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r4 = (int) r4
            monitor-exit(r1)
            if (r2 > r4) goto L78
            r1 = r2
        L36:
            kotlinx.coroutines.internal.ResizableAtomicArray r5 = r8.k
            java.lang.Object r5 = r5.b(r1)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r5 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r5
            if (r5 == r0) goto L73
        L43:
            java.lang.Thread$State r6 = r5.getState()
            java.lang.Thread$State r7 = java.lang.Thread.State.TERMINATED
            if (r6 == r7) goto L54
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r6 = 10000(0x2710, double:4.9407E-320)
            r5.join(r6)
            goto L43
        L54:
            kotlinx.coroutines.scheduling.WorkQueue r5 = r5.f21906c
            kotlinx.coroutines.scheduling.GlobalQueue r6 = r8.j
            r5.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = kotlinx.coroutines.scheduling.WorkQueue.b
            java.lang.Object r7 = r7.getAndSet(r5, r3)
            kotlinx.coroutines.scheduling.Task r7 = (kotlinx.coroutines.scheduling.Task) r7
            if (r7 == 0) goto L68
            r6.a(r7)
        L68:
            kotlinx.coroutines.scheduling.Task r7 = r5.b()
            if (r7 != 0) goto L6f
            goto L73
        L6f:
            r6.a(r7)
            goto L68
        L73:
            if (r1 == r4) goto L78
            int r1 = r1 + 1
            goto L36
        L78:
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r8.j
            r1.b()
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r8.i
            r1.b()
        L82:
            if (r0 == 0) goto L8a
            kotlinx.coroutines.scheduling.Task r1 = r0.a(r2)
            if (r1 != 0) goto Lb2
        L8a:
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r8.i
            java.lang.Object r1 = r1.d()
            kotlinx.coroutines.scheduling.Task r1 = (kotlinx.coroutines.scheduling.Task) r1
            if (r1 != 0) goto Lb2
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r8.j
            java.lang.Object r1 = r1.d()
            kotlinx.coroutines.scheduling.Task r1 = (kotlinx.coroutines.scheduling.Task) r1
            if (r1 != 0) goto Lb2
            if (r0 == 0) goto La5
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.i
            r0.h(r1)
        La5:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.l
            r1 = 0
            r0.set(r8, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.m
            r0.set(r8, r1)
            return
        Lb2:
            r1.run()     // Catch: java.lang.Throwable -> Lb6
            goto L82
        Lb6:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()
            r4.uncaughtException(r3, r1)
            goto L82
        Lc3:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.close():void");
    }

    public final void e(Worker worker, int i, int i2) {
        while (true) {
            long j = l.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object nextParkedWorker = worker.getNextParkedWorker();
                    while (true) {
                        if (nextParkedWorker == o) {
                            i3 = -1;
                            break;
                        }
                        if (nextParkedWorker == null) {
                            i3 = 0;
                            break;
                        }
                        Worker worker2 = (Worker) nextParkedWorker;
                        int indexInArray = worker2.getIndexInArray();
                        if (indexInArray != 0) {
                            i3 = indexInArray;
                            break;
                        }
                        nextParkedWorker = worker2.getNextParkedWorker();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                if (l.compareAndSet(this, j, i3 | j2)) {
                    return;
                }
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        d(this, runnable, 6);
    }

    public final boolean f(long j) {
        int coerceAtLeast = RangesKt.coerceAtLeast(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0);
        int i = this.f21905c;
        if (coerceAtLeast < i) {
            int a2 = a();
            if (a2 == 1 && i > 1) {
                a();
            }
            if (a2 > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean i() {
        Symbol symbol;
        int i;
        while (true) {
            long j = l.get(this);
            Worker worker = (Worker) this.k.b((int) (2097151 & j));
            if (worker == null) {
                worker = null;
            } else {
                long j2 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152);
                Object nextParkedWorker = worker.getNextParkedWorker();
                while (true) {
                    symbol = o;
                    if (nextParkedWorker == symbol) {
                        i = -1;
                        break;
                    }
                    if (nextParkedWorker == null) {
                        i = 0;
                        break;
                    }
                    Worker worker2 = (Worker) nextParkedWorker;
                    i = worker2.getIndexInArray();
                    if (i != 0) {
                        break;
                    }
                    nextParkedWorker = worker2.getNextParkedWorker();
                }
                if (i >= 0) {
                    if (l.compareAndSet(this, j, i | j2)) {
                        worker.g(symbol);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (worker == null) {
                return false;
            }
            if (Worker.m.compareAndSet(worker, -1, 0)) {
                LockSupport.unpark(worker);
                return true;
            }
        }
    }

    public final String toString() {
        int i;
        ArrayList arrayList = new ArrayList();
        ResizableAtomicArray resizableAtomicArray = this.k;
        int a2 = resizableAtomicArray.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < a2; i7++) {
            Worker worker = (Worker) resizableAtomicArray.b(i7);
            if (worker != null) {
                WorkQueue workQueue = worker.f21906c;
                workQueue.getClass();
                if (WorkQueue.b.get(workQueue) != null) {
                    i = (WorkQueue.f21913c.get(workQueue) - WorkQueue.d.get(workQueue)) + 1;
                } else {
                    i = WorkQueue.f21913c.get(workQueue) - WorkQueue.d.get(workQueue);
                }
                int ordinal = worker.g.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal != 3) {
                                if (ordinal == 4) {
                                    i6++;
                                }
                            } else {
                                i5++;
                                if (i > 0) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(i);
                                    sb.append('d');
                                    arrayList.add(sb.toString());
                                }
                            }
                        } else {
                            i4++;
                        }
                    } else {
                        i3++;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(i);
                        sb2.append('b');
                        arrayList.add(sb2.toString());
                    }
                } else {
                    i2++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(i);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                }
            }
        }
        long j = m.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.h);
        sb4.append('@');
        sb4.append(DebugStringsKt.a(this));
        sb4.append("[Pool Size {core = ");
        int i8 = this.f21905c;
        sb4.append(i8);
        sb4.append(", max = ");
        sb4.append(this.f);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i2);
        sb4.append(", blocking = ");
        sb4.append(i3);
        sb4.append(", parked = ");
        sb4.append(i4);
        sb4.append(", dormant = ");
        sb4.append(i5);
        sb4.append(", terminated = ");
        sb4.append(i6);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.i.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.j.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i8 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
