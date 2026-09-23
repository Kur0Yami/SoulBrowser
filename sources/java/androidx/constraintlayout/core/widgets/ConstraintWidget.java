package androidx.constraintlayout.core.widgets;

import android.support.v4.media.a;
import android.view.View;
import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConstraintWidget {
    public float A;
    public final int[] B;
    public float C;
    public boolean D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public final ConstraintAnchor I;
    public final ConstraintAnchor J;
    public final ConstraintAnchor K;
    public final ConstraintAnchor L;
    public final ConstraintAnchor M;
    public final ConstraintAnchor N;
    public final ConstraintAnchor O;
    public final ConstraintAnchor P;
    public final ConstraintAnchor[] Q;
    public final ArrayList R;
    public final boolean[] S;
    public final DimensionBehaviour[] T;
    public ConstraintWidget U;
    public int V;
    public int W;
    public float X;
    public int Y;
    public int Z;
    public int a0;
    public ChainRun b;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public ChainRun f533c;
    public int c0;
    public int d0;
    public float e0;
    public float f0;
    public View g0;
    public int h0;
    public String i0;
    public boolean j;
    public int j0;
    public boolean k;
    public int k0;
    public boolean l;
    public final float[] l0;
    public boolean m;
    public final ConstraintWidget[] m0;
    public int n;
    public final ConstraintWidget[] n0;
    public int o;
    public int o0;
    public int p;
    public int p0;
    public int q;
    public int r;
    public final int[] s;
    public int t;
    public int u;
    public float v;
    public int w;
    public int x;
    public float y;
    public int z;

    /* renamed from: a, reason: collision with root package name */
    public boolean f532a = false;
    public HorizontalWidgetRun d = null;
    public VerticalWidgetRun e = null;
    public final boolean[] f = {true, true};
    public boolean g = true;
    public int h = -1;
    public int i = -1;

    /* renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f534a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            b = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f534a = iArr2;
            try {
                iArr2[1] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f534a[2] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f534a[3] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f534a[4] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f534a[5] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f534a[6] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f534a[7] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f534a[8] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f534a[0] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class DimensionBehaviour {

        /* renamed from: c, reason: collision with root package name */
        public static final DimensionBehaviour f535c;
        public static final DimensionBehaviour f;
        public static final DimensionBehaviour g;
        public static final DimensionBehaviour h;
        public static final /* synthetic */ DimensionBehaviour[] i;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour] */
        static {
            ?? r0 = new Enum("FIXED", 0);
            f535c = r0;
            ?? r1 = new Enum("WRAP_CONTENT", 1);
            f = r1;
            ?? r3 = new Enum("MATCH_CONSTRAINT", 2);
            g = r3;
            ?? r5 = new Enum("MATCH_PARENT", 3);
            h = r5;
            i = new DimensionBehaviour[]{r0, r1, r3, r5};
        }

        public static DimensionBehaviour valueOf(String str) {
            return (DimensionBehaviour) Enum.valueOf(DimensionBehaviour.class, str);
        }

        public static DimensionBehaviour[] values() {
            return (DimensionBehaviour[]) i.clone();
        }
    }

    public ConstraintWidget() {
        new HashMap();
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = -1;
        this.o = -1;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = new int[2];
        this.t = 0;
        this.u = 0;
        this.v = 1.0f;
        this.w = 0;
        this.x = 0;
        this.y = 1.0f;
        this.z = -1;
        this.A = 1.0f;
        this.B = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.C = 0.0f;
        this.D = false;
        this.F = false;
        this.G = 0;
        this.H = 0;
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.f531c);
        this.I = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.f);
        this.J = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.g);
        this.K = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.h);
        this.L = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.i);
        this.M = constraintAnchor5;
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.k);
        this.N = constraintAnchor6;
        ConstraintAnchor constraintAnchor7 = new ConstraintAnchor(this, ConstraintAnchor.Type.l);
        this.O = constraintAnchor7;
        ConstraintAnchor constraintAnchor8 = new ConstraintAnchor(this, ConstraintAnchor.Type.j);
        this.P = constraintAnchor8;
        this.Q = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor8};
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        this.S = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.f535c;
        this.T = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.U = null;
        this.V = 0;
        this.W = 0;
        this.X = 0.0f;
        this.Y = -1;
        this.Z = 0;
        this.a0 = 0;
        this.b0 = 0;
        this.e0 = 0.5f;
        this.f0 = 0.5f;
        this.h0 = 0;
        this.i0 = null;
        this.j0 = 0;
        this.k0 = 0;
        this.l0 = new float[]{-1.0f, -1.0f};
        this.m0 = new ConstraintWidget[]{null, null};
        this.n0 = new ConstraintWidget[]{null, null};
        this.o0 = -1;
        this.p0 = -1;
        arrayList.add(constraintAnchor);
        arrayList.add(constraintAnchor2);
        arrayList.add(constraintAnchor3);
        arrayList.add(constraintAnchor4);
        arrayList.add(constraintAnchor6);
        arrayList.add(constraintAnchor7);
        arrayList.add(constraintAnchor8);
        arrayList.add(constraintAnchor5);
    }

    public void A() {
        this.I.j();
        this.J.j();
        this.K.j();
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.U = null;
        this.C = 0.0f;
        this.V = 0;
        this.W = 0;
        this.X = 0.0f;
        this.Y = -1;
        this.Z = 0;
        this.a0 = 0;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = 0;
        this.e0 = 0.5f;
        this.f0 = 0.5f;
        DimensionBehaviour[] dimensionBehaviourArr = this.T;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.f535c;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.g0 = null;
        this.h0 = 0;
        this.j0 = 0;
        this.k0 = 0;
        float[] fArr = this.l0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.n = -1;
        this.o = -1;
        int[] iArr = this.B;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.q = 0;
        this.r = 0;
        this.v = 1.0f;
        this.y = 1.0f;
        this.u = Integer.MAX_VALUE;
        this.x = Integer.MAX_VALUE;
        this.t = 0;
        this.w = 0;
        this.z = -1;
        this.A = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        this.F = false;
        boolean[] zArr2 = this.S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.g = true;
        int[] iArr2 = this.s;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.h = -1;
        this.i = -1;
    }

    public final void B() {
        ConstraintWidget constraintWidget = this.U;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            ((ConstraintWidgetContainer) constraintWidget).getClass();
        }
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintAnchor) arrayList.get(i)).j();
        }
    }

    public final void C() {
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = false;
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) arrayList.get(i);
            constraintAnchor.f529c = false;
            constraintAnchor.b = 0;
        }
    }

    public void D(Cache cache) {
        this.I.k();
        this.J.k();
        this.K.k();
        this.L.k();
        this.M.k();
        this.P.k();
        this.N.k();
        this.O.k();
    }

    public final void E(int i) {
        boolean z;
        this.b0 = i;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        this.D = z;
    }

    public final void F(int i, int i2) {
        if (this.j) {
            return;
        }
        this.I.l(i);
        this.K.l(i2);
        this.Z = i;
        this.V = i2 - i;
        this.j = true;
    }

    public final void G(int i, int i2) {
        if (this.k) {
            return;
        }
        this.J.l(i);
        this.L.l(i2);
        this.a0 = i;
        this.W = i2 - i;
        if (this.D) {
            this.M.l(i + this.b0);
        }
        this.k = true;
    }

    public final void H(int i) {
        this.W = i;
        int i2 = this.d0;
        if (i < i2) {
            this.W = i2;
        }
    }

    public final void I(DimensionBehaviour dimensionBehaviour) {
        this.T[0] = dimensionBehaviour;
    }

    public final void J(DimensionBehaviour dimensionBehaviour) {
        this.T[1] = dimensionBehaviour;
    }

    public final void K(int i) {
        this.V = i;
        int i2 = this.c0;
        if (i < i2) {
            this.V = i2;
        }
    }

    public void L(boolean z, boolean z2) {
        int i;
        int i2;
        HorizontalWidgetRun horizontalWidgetRun = this.d;
        boolean z3 = z & horizontalWidgetRun.g;
        VerticalWidgetRun verticalWidgetRun = this.e;
        boolean z4 = z2 & verticalWidgetRun.g;
        int i3 = horizontalWidgetRun.h.g;
        int i4 = verticalWidgetRun.h.g;
        int i5 = horizontalWidgetRun.i.g;
        int i6 = verticalWidgetRun.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.Z = i3;
        }
        if (z4) {
            this.a0 = i4;
        }
        if (this.h0 == 8) {
            this.V = 0;
            this.W = 0;
            return;
        }
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.f535c;
        if (z3) {
            if (this.T[0] == dimensionBehaviour && i8 < (i2 = this.V)) {
                i8 = i2;
            }
            this.V = i8;
            int i10 = this.c0;
            if (i8 < i10) {
                this.V = i10;
            }
        }
        if (z4) {
            if (this.T[1] == dimensionBehaviour && i9 < (i = this.W)) {
                i9 = i;
            }
            this.W = i9;
            int i11 = this.d0;
            if (i9 < i11) {
                this.W = i11;
            }
        }
    }

    public void M(LinearSystem linearSystem, boolean z) {
        int i;
        int i2;
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        linearSystem.getClass();
        int n = LinearSystem.n(this.I);
        int n2 = LinearSystem.n(this.J);
        int n3 = LinearSystem.n(this.K);
        int n4 = LinearSystem.n(this.L);
        if (z && (horizontalWidgetRun = this.d) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.h;
            if (dependencyNode.j) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.i;
                if (dependencyNode2.j) {
                    n = dependencyNode.g;
                    n3 = dependencyNode2.g;
                }
            }
        }
        if (z && (verticalWidgetRun = this.e) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.h;
            if (dependencyNode3.j) {
                DependencyNode dependencyNode4 = verticalWidgetRun.i;
                if (dependencyNode4.j) {
                    n2 = dependencyNode3.g;
                    n4 = dependencyNode4.g;
                }
            }
        }
        int i3 = n4 - n2;
        if (n3 - n < 0 || i3 < 0 || n == Integer.MIN_VALUE || n == Integer.MAX_VALUE || n2 == Integer.MIN_VALUE || n2 == Integer.MAX_VALUE || n3 == Integer.MIN_VALUE || n3 == Integer.MAX_VALUE || n4 == Integer.MIN_VALUE || n4 == Integer.MAX_VALUE) {
            n = 0;
            n2 = 0;
            n3 = 0;
            n4 = 0;
        }
        int i4 = n3 - n;
        int i5 = n4 - n2;
        this.Z = n;
        this.a0 = n2;
        if (this.h0 == 8) {
            this.V = 0;
            this.W = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.T;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.f535c;
        if (dimensionBehaviour == dimensionBehaviour2 && i4 < (i2 = this.V)) {
            i4 = i2;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i5 < (i = this.W)) {
            i5 = i;
        }
        this.V = i4;
        this.W = i5;
        int i6 = this.d0;
        if (i5 < i6) {
            this.W = i6;
        }
        int i7 = this.c0;
        if (i4 < i7) {
            this.V = i7;
        }
        int i8 = this.u;
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.g;
        if (i8 > 0 && dimensionBehaviour == dimensionBehaviour3) {
            this.V = Math.min(this.V, i8);
        }
        int i9 = this.x;
        if (i9 > 0 && this.T[1] == dimensionBehaviour3) {
            this.W = Math.min(this.W, i9);
        }
        int i10 = this.V;
        if (i4 != i10) {
            this.h = i10;
        }
        int i11 = this.W;
        if (i5 != i11) {
            this.i = i11;
        }
    }

    public final void b(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet hashSet, int i, boolean z) {
        if (z) {
            if (hashSet.contains(this)) {
                Optimizer.a(constraintWidgetContainer, linearSystem, this);
                hashSet.remove(this);
                c(linearSystem, constraintWidgetContainer.R(64));
            } else {
                return;
            }
        }
        if (i == 0) {
            HashSet hashSet2 = this.I.f528a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((ConstraintAnchor) it.next()).d.b(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
            }
            HashSet hashSet3 = this.K.f528a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((ConstraintAnchor) it2.next()).d.b(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.J.f528a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((ConstraintAnchor) it3.next()).d.b(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet hashSet5 = this.L.f528a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((ConstraintAnchor) it4.next()).d.b(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet hashSet6 = this.M.f528a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((ConstraintAnchor) it5.next()).d.b(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
    
        if (r12 != 3) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x05de, code lost:
    
        if (r59.h0 == r9) goto L377;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02b6  */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36, types: [int] */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r13v50, types: [androidx.constraintlayout.core.widgets.ConstraintWidgetContainer] */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v18 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r20v11 */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r27v9 */
    /* JADX WARN: Type inference failed for: r59v0, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r9v14, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(androidx.constraintlayout.core.LinearSystem r60, boolean r61) {
        /*
            Method dump skipped, instructions count: 1922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.c(androidx.constraintlayout.core.LinearSystem, boolean):void");
    }

    public boolean d() {
        if (this.h0 != 8) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x03b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x043b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x04cf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(androidx.constraintlayout.core.LinearSystem r30, boolean r31, boolean r32, boolean r33, boolean r34, androidx.constraintlayout.core.SolverVariable r35, androidx.constraintlayout.core.SolverVariable r36, androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour r37, boolean r38, androidx.constraintlayout.core.widgets.ConstraintAnchor r39, androidx.constraintlayout.core.widgets.ConstraintAnchor r40, int r41, int r42, int r43, int r44, float r45, boolean r46, boolean r47, boolean r48, boolean r49, boolean r50, int r51, int r52, int r53, int r54, float r55, boolean r56) {
        /*
            Method dump skipped, instructions count: 1320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.e(androidx.constraintlayout.core.LinearSystem, boolean, boolean, boolean, boolean, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.core.widgets.ConstraintAnchor, androidx.constraintlayout.core.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public final void f(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        boolean z;
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.l;
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.k;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.f531c;
        ConstraintAnchor.Type type6 = ConstraintAnchor.Type.f;
        ConstraintAnchor.Type type7 = ConstraintAnchor.Type.g;
        ConstraintAnchor.Type type8 = ConstraintAnchor.Type.h;
        ConstraintAnchor.Type type9 = ConstraintAnchor.Type.j;
        if (type == type9) {
            if (type2 == type9) {
                ConstraintAnchor j = j(type5);
                ConstraintAnchor j2 = j(type7);
                ConstraintAnchor j3 = j(type6);
                ConstraintAnchor j4 = j(type8);
                boolean z2 = true;
                if ((j != null && j.h()) || (j2 != null && j2.h())) {
                    z = false;
                } else {
                    f(type5, constraintWidget, type5, 0);
                    f(type7, constraintWidget, type7, 0);
                    z = true;
                }
                if ((j3 != null && j3.h()) || (j4 != null && j4.h())) {
                    z2 = false;
                } else {
                    f(type6, constraintWidget, type6, 0);
                    f(type8, constraintWidget, type8, 0);
                }
                if (z && z2) {
                    j(type9).a(constraintWidget.j(type9), 0);
                    return;
                } else if (z) {
                    j(type4).a(constraintWidget.j(type4), 0);
                    return;
                } else {
                    if (z2) {
                        j(type3).a(constraintWidget.j(type3), 0);
                        return;
                    }
                    return;
                }
            }
            if (type2 != type5 && type2 != type7) {
                if (type2 == type6 || type2 == type8) {
                    f(type6, constraintWidget, type2, 0);
                    f(type8, constraintWidget, type2, 0);
                    j(type9).a(constraintWidget.j(type2), 0);
                    return;
                }
                return;
            }
            f(type5, constraintWidget, type2, 0);
            f(type7, constraintWidget, type2, 0);
            j(type9).a(constraintWidget.j(type2), 0);
            return;
        }
        if (type == type4 && (type2 == type5 || type2 == type7)) {
            ConstraintAnchor j5 = j(type5);
            ConstraintAnchor j6 = constraintWidget.j(type2);
            ConstraintAnchor j7 = j(type7);
            j5.a(j6, 0);
            j7.a(j6, 0);
            j(type4).a(j6, 0);
            return;
        }
        if (type == type3 && (type2 == type6 || type2 == type8)) {
            ConstraintAnchor j8 = constraintWidget.j(type2);
            j(type6).a(j8, 0);
            j(type8).a(j8, 0);
            j(type3).a(j8, 0);
            return;
        }
        if (type == type4 && type2 == type4) {
            j(type5).a(constraintWidget.j(type5), 0);
            j(type7).a(constraintWidget.j(type7), 0);
            j(type4).a(constraintWidget.j(type2), 0);
            return;
        }
        if (type == type3 && type2 == type3) {
            j(type6).a(constraintWidget.j(type6), 0);
            j(type8).a(constraintWidget.j(type8), 0);
            j(type3).a(constraintWidget.j(type2), 0);
            return;
        }
        ConstraintAnchor j9 = j(type);
        ConstraintAnchor j10 = constraintWidget.j(type2);
        if (j9.i(j10)) {
            ConstraintAnchor.Type type10 = ConstraintAnchor.Type.i;
            if (type == type10) {
                ConstraintAnchor j11 = j(type6);
                ConstraintAnchor j12 = j(type8);
                if (j11 != null) {
                    j11.j();
                }
                if (j12 != null) {
                    j12.j();
                }
            } else if (type != type6 && type != type8) {
                if (type == type5 || type == type7) {
                    ConstraintAnchor j13 = j(type9);
                    if (j13.f != j10) {
                        j13.j();
                    }
                    ConstraintAnchor f = j(type).f();
                    ConstraintAnchor j14 = j(type4);
                    if (j14.h()) {
                        f.j();
                        j14.j();
                    }
                }
            } else {
                ConstraintAnchor j15 = j(type10);
                if (j15 != null) {
                    j15.j();
                }
                ConstraintAnchor j16 = j(type9);
                if (j16.f != j10) {
                    j16.j();
                }
                ConstraintAnchor f2 = j(type).f();
                ConstraintAnchor j17 = j(type3);
                if (j17.h()) {
                    f2.j();
                    j17.j();
                }
            }
            j9.a(j10, i);
        }
    }

    public final void g(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.d == this) {
            f(constraintAnchor.e, constraintAnchor2.d, constraintAnchor2.e, i);
        }
    }

    public final void h(LinearSystem linearSystem) {
        linearSystem.k(this.I);
        linearSystem.k(this.J);
        linearSystem.k(this.K);
        linearSystem.k(this.L);
        if (this.b0 > 0) {
            linearSystem.k(this.M);
        }
    }

    public final void i() {
        if (this.d == null) {
            this.d = new HorizontalWidgetRun(this);
        }
        if (this.e == null) {
            this.e = new VerticalWidgetRun(this);
        }
    }

    public ConstraintAnchor j(ConstraintAnchor.Type type) {
        switch (type.ordinal()) {
            case 0:
                return null;
            case 1:
                return this.I;
            case 2:
                return this.J;
            case 3:
                return this.K;
            case 4:
                return this.L;
            case 5:
                return this.M;
            case 6:
                return this.P;
            case 7:
                return this.N;
            case 8:
                return this.O;
            default:
                throw new AssertionError(type.name());
        }
    }

    public final DimensionBehaviour k(int i) {
        if (i == 0) {
            return this.T[0];
        }
        if (i == 1) {
            return this.T[1];
        }
        return null;
    }

    public final int l() {
        if (this.h0 == 8) {
            return 0;
        }
        return this.W;
    }

    public final ConstraintWidget m(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.K;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f;
            if (constraintAnchor4 != null && constraintAnchor4.f == constraintAnchor3) {
                return constraintAnchor4.d;
            }
            return null;
        }
        if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.L).f) != null && constraintAnchor2.f == constraintAnchor) {
            return constraintAnchor2.d;
        }
        return null;
    }

    public final ConstraintWidget n(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.I;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f;
            if (constraintAnchor4 != null && constraintAnchor4.f == constraintAnchor3) {
                return constraintAnchor4.d;
            }
            return null;
        }
        if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.J).f) != null && constraintAnchor2.f == constraintAnchor) {
            return constraintAnchor2.d;
        }
        return null;
    }

    public final int o() {
        if (this.h0 == 8) {
            return 0;
        }
        return this.V;
    }

    public final int p() {
        ConstraintWidget constraintWidget = this.U;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).x0 + this.Z;
        }
        return this.Z;
    }

    public final int q() {
        ConstraintWidget constraintWidget = this.U;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).y0 + this.a0;
        }
        return this.a0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(int r5) {
        /*
            r4 = this;
            r0 = 2
            r1 = 0
            r2 = 1
            if (r5 != 0) goto L1b
            androidx.constraintlayout.core.widgets.ConstraintAnchor r5 = r4.I
            androidx.constraintlayout.core.widgets.ConstraintAnchor r5 = r5.f
            if (r5 == 0) goto Ld
            r5 = r2
            goto Le
        Ld:
            r5 = r1
        Le:
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r4.K
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r3.f
            if (r3 == 0) goto L16
            r3 = r2
            goto L17
        L16:
            r3 = r1
        L17:
            int r5 = r5 + r3
            if (r5 >= r0) goto L3b
            goto L3a
        L1b:
            androidx.constraintlayout.core.widgets.ConstraintAnchor r5 = r4.J
            androidx.constraintlayout.core.widgets.ConstraintAnchor r5 = r5.f
            if (r5 == 0) goto L23
            r5 = r2
            goto L24
        L23:
            r5 = r1
        L24:
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r4.L
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r3.f
            if (r3 == 0) goto L2c
            r3 = r2
            goto L2d
        L2c:
            r3 = r1
        L2d:
            int r5 = r5 + r3
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r4.M
            androidx.constraintlayout.core.widgets.ConstraintAnchor r3 = r3.f
            if (r3 == 0) goto L36
            r3 = r2
            goto L37
        L36:
            r3 = r1
        L37:
            int r5 = r5 + r3
            if (r5 >= r0) goto L3b
        L3a:
            return r2
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.r(int):boolean");
    }

    public final boolean s(int i, int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (i == 0) {
            ConstraintAnchor constraintAnchor5 = this.I;
            ConstraintAnchor constraintAnchor6 = constraintAnchor5.f;
            if (constraintAnchor6 != null && constraintAnchor6.f529c && (constraintAnchor4 = (constraintAnchor3 = this.K).f) != null && constraintAnchor4.f529c) {
                if ((constraintAnchor4.d() - constraintAnchor3.e()) - (constraintAnchor5.e() + constraintAnchor5.f.d()) >= i2) {
                    return true;
                }
                return false;
            }
            return false;
        }
        ConstraintAnchor constraintAnchor7 = this.J;
        ConstraintAnchor constraintAnchor8 = constraintAnchor7.f;
        if (constraintAnchor8 != null && constraintAnchor8.f529c && (constraintAnchor2 = (constraintAnchor = this.L).f) != null && constraintAnchor2.f529c) {
            if ((constraintAnchor2.d() - constraintAnchor.e()) - (constraintAnchor7.e() + constraintAnchor7.f.d()) >= i2) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void t(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        j(type).b(constraintWidget.j(type2), i, i2, true);
    }

    public String toString() {
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        StringBuilder t = a.t(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (this.i0 != null) {
            str = a.p(new StringBuilder("id: "), this.i0, " ");
        }
        t.append(str);
        t.append("(");
        t.append(this.Z);
        t.append(", ");
        t.append(this.a0);
        t.append(") - (");
        t.append(this.V);
        t.append(" x ");
        return a.g(this.W, ")", t);
    }

    public final boolean u(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.Q;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f;
        if (constraintAnchor4 != null && constraintAnchor4.f != constraintAnchor3 && (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i2 + 1]).f) != null && constraintAnchor2.f == constraintAnchor) {
            return true;
        }
        return false;
    }

    public final boolean v() {
        ConstraintAnchor constraintAnchor = this.I;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f;
        if (constraintAnchor2 == null || constraintAnchor2.f != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.K;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f;
            if (constraintAnchor4 != null && constraintAnchor4.f == constraintAnchor3) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean w() {
        ConstraintAnchor constraintAnchor = this.J;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f;
        if (constraintAnchor2 == null || constraintAnchor2.f != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.L;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f;
            if (constraintAnchor4 != null && constraintAnchor4.f == constraintAnchor3) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean x() {
        if (this.g && this.h0 != 8) {
            return true;
        }
        return false;
    }

    public boolean y() {
        if (!this.j) {
            if (!this.I.f529c || !this.K.f529c) {
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean z() {
        if (!this.k) {
            if (!this.J.f529c || !this.L.f529c) {
                return false;
            }
            return true;
        }
        return true;
    }
}
