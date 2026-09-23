package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GapWorker implements Runnable {
    public static final ThreadLocal i = new ThreadLocal();
    public static final Comparator j = new Object();

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f1522c;
    public long f;
    public long g;
    public ArrayList h;

    /* renamed from: androidx.recyclerview.widget.GapWorker$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Comparator<Task> {
        @Override // java.util.Comparator
        public final int compare(Task task, Task task2) {
            boolean z;
            boolean z2;
            Task task3 = task;
            Task task4 = task2;
            RecyclerView recyclerView = task3.d;
            if (recyclerView == null) {
                z = true;
            } else {
                z = false;
            }
            if (task4.d == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z != z2) {
                if (recyclerView != null) {
                    return -1;
                }
            } else {
                boolean z3 = task3.f1525a;
                if (z3 != task4.f1525a) {
                    if (z3) {
                        return -1;
                    }
                } else {
                    int i = task4.b - task3.b;
                    if (i != 0) {
                        return i;
                    }
                    int i2 = task3.f1526c - task4.f1526c;
                    if (i2 == 0) {
                        return 0;
                    }
                    return i2;
                }
            }
            return 1;
        }
    }

    @SuppressLint({"VisibleForTests"})
    /* loaded from: classes.dex */
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* renamed from: a, reason: collision with root package name */
        public int f1523a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int[] f1524c;
        public int d;

        public final void a(int i, int i2) {
            if (i >= 0) {
                if (i2 >= 0) {
                    int i3 = this.d;
                    int i4 = i3 * 2;
                    int[] iArr = this.f1524c;
                    if (iArr == null) {
                        int[] iArr2 = new int[4];
                        this.f1524c = iArr2;
                        Arrays.fill(iArr2, -1);
                    } else if (i4 >= iArr.length) {
                        int[] iArr3 = new int[i3 * 4];
                        this.f1524c = iArr3;
                        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                    }
                    int[] iArr4 = this.f1524c;
                    iArr4[i4] = i;
                    iArr4[i4 + 1] = i2;
                    this.d++;
                    return;
                }
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }

        public final void b(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            int[] iArr = this.f1524c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.r;
            if (recyclerView.q != null && layoutManager != null && layoutManager.i) {
                if (z) {
                    if (!recyclerView.i.g()) {
                        layoutManager.k(recyclerView.q.d(), this);
                    }
                } else if (!recyclerView.P()) {
                    layoutManager.j(this.f1523a, this.b, recyclerView.m0, this);
                }
                int i = this.d;
                if (i > layoutManager.j) {
                    layoutManager.j = i;
                    layoutManager.k = z;
                    recyclerView.g.n();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Task {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1525a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1526c;
        public RecyclerView d;
        public int e;
    }

    public static RecyclerView.ViewHolder c(RecyclerView recyclerView, int i2, long j2) {
        int childCount = RecyclerView.this.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            RecyclerView.ViewHolder M = RecyclerView.M(RecyclerView.this.getChildAt(i3));
            if (M.f1590c == i2 && !M.h()) {
                return null;
            }
        }
        RecyclerView.Recycler recycler = recyclerView.g;
        try {
            recyclerView.U();
            RecyclerView.ViewHolder l = recycler.l(i2, j2);
            if (l != null) {
                if (l.g() && !l.h()) {
                    recycler.i(l.f1589a);
                } else {
                    recycler.a(l, false);
                }
            }
            recyclerView.V(false);
            return l;
        } catch (Throwable th) {
            recyclerView.V(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.x) {
            if (RecyclerView.G0 && !this.f1522c.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f == 0) {
                this.f = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.l0;
        layoutPrefetchRegistryImpl.f1523a = i2;
        layoutPrefetchRegistryImpl.b = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(long j2) {
        Task task;
        RecyclerView recyclerView;
        long j3;
        RecyclerView recyclerView2;
        Task task2;
        boolean z;
        ArrayList arrayList = this.h;
        ArrayList arrayList2 = this.f1522c;
        int size = arrayList2.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList2.get(i3);
            int windowVisibility = recyclerView3.getWindowVisibility();
            LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView3.l0;
            if (windowVisibility == 0) {
                layoutPrefetchRegistryImpl.b(recyclerView3, false);
                i2 += layoutPrefetchRegistryImpl.d;
            }
        }
        arrayList.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList2.get(i5);
            if (recyclerView4.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl2 = recyclerView4.l0;
                int abs = Math.abs(layoutPrefetchRegistryImpl2.b) + Math.abs(layoutPrefetchRegistryImpl2.f1523a);
                for (int i6 = 0; i6 < layoutPrefetchRegistryImpl2.d * 2; i6 += 2) {
                    if (i4 >= arrayList.size()) {
                        Object obj = new Object();
                        arrayList.add(obj);
                        task2 = obj;
                    } else {
                        task2 = (Task) arrayList.get(i4);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl2.f1524c;
                    int i7 = iArr[i6 + 1];
                    if (i7 <= abs) {
                        z = true;
                    } else {
                        z = false;
                    }
                    task2.f1525a = z;
                    task2.b = abs;
                    task2.f1526c = i7;
                    task2.d = recyclerView4;
                    task2.e = iArr[i6];
                    i4++;
                }
            }
        }
        Collections.sort(arrayList, j);
        for (int i8 = 0; i8 < arrayList.size() && (recyclerView = (task = (Task) arrayList.get(i8)).d) != null; i8++) {
            if (task.f1525a) {
                j3 = LongCompanionObject.MAX_VALUE;
            } else {
                j3 = j2;
            }
            RecyclerView.ViewHolder c2 = c(recyclerView, task.e, j3);
            if (c2 != null && c2.b != null && c2.g() && !c2.h() && (recyclerView2 = (RecyclerView) c2.b.get()) != null) {
                if (recyclerView2.I && RecyclerView.this.getChildCount() != 0) {
                    RecyclerView.Recycler recycler = recyclerView2.g;
                    RecyclerView.ItemAnimator itemAnimator = recyclerView2.R;
                    if (itemAnimator != null) {
                        itemAnimator.j();
                    }
                    RecyclerView.LayoutManager layoutManager = recyclerView2.r;
                    if (layoutManager != null) {
                        layoutManager.p0(recycler);
                        recyclerView2.r.q0(recycler);
                    }
                    recycler.f1579a.clear();
                    recycler.g();
                }
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl3 = recyclerView2.l0;
                layoutPrefetchRegistryImpl3.b(recyclerView2, true);
                if (layoutPrefetchRegistryImpl3.d != 0) {
                    try {
                        int i9 = TraceCompat.f712a;
                        Trace.beginSection("RV Nested Prefetch");
                        RecyclerView.State state = recyclerView2.m0;
                        RecyclerView.Adapter adapter = recyclerView2.q;
                        state.d = 1;
                        state.e = adapter.d();
                        state.g = false;
                        state.h = false;
                        state.i = false;
                        for (int i10 = 0; i10 < layoutPrefetchRegistryImpl3.d * 2; i10 += 2) {
                            c(recyclerView2, layoutPrefetchRegistryImpl3.f1524c[i10], j2);
                        }
                        Trace.endSection();
                        task.f1525a = false;
                        task.b = 0;
                        task.f1526c = 0;
                        task.d = null;
                        task.e = 0;
                    } catch (Throwable th) {
                        int i11 = TraceCompat.f712a;
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            task.f1525a = false;
            task.b = 0;
            task.f1526c = 0;
            task.d = null;
            task.e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f1522c;
        try {
            int i2 = TraceCompat.f712a;
            Trace.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i3);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j2 = Math.max(recyclerView.getDrawingTime(), j2);
                    }
                }
                if (j2 != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(j2) + this.g);
                }
            }
            this.f = 0L;
            Trace.endSection();
        } catch (Throwable th) {
            this.f = 0L;
            int i4 = TraceCompat.f712a;
            Trace.endSection();
            throw th;
        }
    }
}
