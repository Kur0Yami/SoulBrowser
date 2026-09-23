package androidx.recyclerview.widget;

import android.support.v4.media.a;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChildHelper {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView.AnonymousClass5 f1495a;
    public final Bucket b = new Bucket();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1496c = new ArrayList();

    /* loaded from: classes.dex */
    public static class Bucket {

        /* renamed from: a, reason: collision with root package name */
        public long f1497a = 0;
        public Bucket b;

        public final void a(int i) {
            if (i >= 64) {
                Bucket bucket = this.b;
                if (bucket != null) {
                    bucket.a(i - 64);
                    return;
                }
                return;
            }
            this.f1497a &= ~(1 << i);
        }

        public final int b(int i) {
            Bucket bucket = this.b;
            if (bucket == null) {
                if (i >= 64) {
                    return Long.bitCount(this.f1497a);
                }
                return Long.bitCount(this.f1497a & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.f1497a & ((1 << i) - 1));
            }
            return Long.bitCount(this.f1497a) + bucket.b(i - 64);
        }

        public final void c() {
            if (this.b == null) {
                this.b = new Bucket();
            }
        }

        public final boolean d(int i) {
            if (i >= 64) {
                c();
                return this.b.d(i - 64);
            }
            if ((this.f1497a & (1 << i)) != 0) {
                return true;
            }
            return false;
        }

        public final void e(int i, boolean z) {
            boolean z2;
            if (i >= 64) {
                c();
                this.b.e(i - 64, z);
                return;
            }
            long j = this.f1497a;
            if ((Long.MIN_VALUE & j) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            long j2 = (1 << i) - 1;
            this.f1497a = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (!z2 && this.b == null) {
                return;
            }
            c();
            this.b.e(0, z2);
        }

        public final boolean f(int i) {
            boolean z;
            if (i >= 64) {
                c();
                return this.b.f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f1497a;
            if ((j2 & j) != 0) {
                z = true;
            } else {
                z = false;
            }
            long j3 = j2 & (~j);
            this.f1497a = j3;
            long j4 = j - 1;
            this.f1497a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            Bucket bucket = this.b;
            if (bucket != null) {
                if (bucket.d(0)) {
                    h(63);
                }
                this.b.f(0);
            }
            return z;
        }

        public final void g() {
            this.f1497a = 0L;
            Bucket bucket = this.b;
            if (bucket != null) {
                bucket.g();
            }
        }

        public final void h(int i) {
            if (i >= 64) {
                c();
                this.b.h(i - 64);
            } else {
                this.f1497a |= 1 << i;
            }
        }

        public final String toString() {
            if (this.b == null) {
                return Long.toBinaryString(this.f1497a);
            }
            return this.b.toString() + "xx" + Long.toBinaryString(this.f1497a);
        }
    }

    /* loaded from: classes.dex */
    public interface Callback {
    }

    public ChildHelper(RecyclerView.AnonymousClass5 anonymousClass5) {
        this.f1495a = anonymousClass5;
    }

    public final void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int d;
        RecyclerView.AnonymousClass5 anonymousClass5 = this.f1495a;
        RecyclerView recyclerView = RecyclerView.this;
        if (i < 0) {
            d = recyclerView.getChildCount();
        } else {
            d = d(i);
        }
        this.b.e(d, z);
        if (z) {
            this.f1496c.add(view);
            RecyclerView.ViewHolder M = RecyclerView.M(view);
            if (M != null) {
                View view2 = M.f1589a;
                RecyclerView recyclerView2 = RecyclerView.this;
                int i2 = M.q;
                if (i2 != -1) {
                    M.p = i2;
                } else {
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    M.p = view2.getImportantForAccessibility();
                }
                if (recyclerView2.Q()) {
                    M.q = 4;
                    recyclerView2.A0.add(M);
                } else {
                    WeakHashMap weakHashMap2 = ViewCompat.f792a;
                    view2.setImportantForAccessibility(4);
                }
            }
        }
        RecyclerView.ViewHolder M2 = RecyclerView.M(view);
        if (M2 != null) {
            if (!M2.l() && !M2.q()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(M2);
                throw new IllegalArgumentException(a.i(recyclerView, sb));
            }
            if (RecyclerView.H0) {
                Log.d("RecyclerView", "reAttach " + M2);
            }
            M2.j &= -257;
        } else if (RecyclerView.G0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(d);
            throw new IllegalArgumentException(a.i(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, d, layoutParams);
    }

    public final View b(int i) {
        return RecyclerView.this.getChildAt(d(i));
    }

    public final int c() {
        return RecyclerView.this.getChildCount() - this.f1496c.size();
    }

    public final int d(int i) {
        if (i >= 0) {
            int childCount = RecyclerView.this.getChildCount();
            int i2 = i;
            while (i2 < childCount) {
                Bucket bucket = this.b;
                int b = i - (i2 - bucket.b(i2));
                if (b == 0) {
                    while (bucket.d(i2)) {
                        i2++;
                    }
                    return i2;
                }
                i2 += b;
            }
            return -1;
        }
        return -1;
    }

    public final void e(View view) {
        if (this.f1496c.remove(view)) {
            this.f1495a.a(view);
        }
    }

    public final String toString() {
        return this.b.toString() + ", hidden list:" + this.f1496c.size();
    }
}
