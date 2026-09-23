package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    public int A0;
    public ChainHead[] B0;
    public ChainHead[] C0;
    public int D0;
    public boolean E0;
    public boolean F0;
    public WeakReference G0;
    public WeakReference H0;
    public WeakReference I0;
    public WeakReference J0;
    public final HashSet K0;
    public final BasicMeasure.Measure L0;
    public final BasicMeasure r0;
    public final DependencyGraph s0;
    public int t0;
    public BasicMeasure.Measurer u0;
    public boolean v0;
    public final LinearSystem w0;
    public int x0;
    public int y0;
    public int z0;

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.constraintlayout.core.widgets.analyzer.DependencyGraph, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    public ConstraintWidgetContainer() {
        this.q0 = new ArrayList();
        this.r0 = new BasicMeasure(this);
        ?? obj = new Object();
        obj.b = true;
        obj.f545c = true;
        obj.e = new ArrayList();
        new ArrayList();
        obj.f = null;
        obj.g = new Object();
        obj.h = new ArrayList();
        obj.f544a = this;
        obj.d = this;
        this.s0 = obj;
        this.u0 = null;
        this.v0 = false;
        this.w0 = new LinearSystem();
        this.z0 = 0;
        this.A0 = 0;
        this.B0 = new ChainHead[4];
        this.C0 = new ChainHead[4];
        this.D0 = 257;
        this.E0 = false;
        this.F0 = false;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = new HashSet();
        this.L0 = new Object();
    }

    public static void Q(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, BasicMeasure.Measure measure) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        if (measurer == null) {
            return;
        }
        int i3 = constraintWidget.h0;
        int[] iArr = constraintWidget.s;
        if (i3 != 8 && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier)) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.T;
            measure.f542a = dimensionBehaviourArr[0];
            measure.b = dimensionBehaviourArr[1];
            measure.f543c = constraintWidget.o();
            measure.d = constraintWidget.l();
            measure.i = false;
            measure.j = 0;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.f542a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.g;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z = true;
            } else {
                z = false;
            }
            if (measure.b == dimensionBehaviour2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z && constraintWidget.X > 0.0f) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 && constraintWidget.X > 0.0f) {
                z4 = true;
            } else {
                z4 = false;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.f;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.f535c;
            if (z && constraintWidget.r(0) && constraintWidget.q == 0 && !z3) {
                measure.f542a = dimensionBehaviour3;
                if (z2 && constraintWidget.r == 0) {
                    measure.f542a = dimensionBehaviour4;
                }
                z = false;
            }
            if (z2 && constraintWidget.r(1) && constraintWidget.r == 0 && !z4) {
                measure.b = dimensionBehaviour3;
                if (z && constraintWidget.q == 0) {
                    measure.b = dimensionBehaviour4;
                }
                z2 = false;
            }
            if (constraintWidget.y()) {
                measure.f542a = dimensionBehaviour4;
                z = false;
            }
            if (constraintWidget.z()) {
                measure.b = dimensionBehaviour4;
                z2 = false;
            }
            if (z3) {
                if (iArr[0] == 4) {
                    measure.f542a = dimensionBehaviour4;
                } else if (!z2) {
                    if (measure.b == dimensionBehaviour4) {
                        i2 = measure.d;
                    } else {
                        measure.f542a = dimensionBehaviour3;
                        measurer.b(constraintWidget, measure);
                        i2 = measure.f;
                    }
                    measure.f542a = dimensionBehaviour4;
                    measure.f543c = (int) (constraintWidget.X * i2);
                }
            }
            if (z4) {
                if (iArr[1] == 4) {
                    measure.b = dimensionBehaviour4;
                } else if (!z) {
                    if (measure.f542a == dimensionBehaviour4) {
                        i = measure.f543c;
                    } else {
                        measure.b = dimensionBehaviour3;
                        measurer.b(constraintWidget, measure);
                        i = measure.e;
                    }
                    measure.b = dimensionBehaviour4;
                    if (constraintWidget.Y == -1) {
                        measure.d = (int) (i / constraintWidget.X);
                    } else {
                        measure.d = (int) (constraintWidget.X * i);
                    }
                }
            }
            measurer.b(constraintWidget, measure);
            constraintWidget.K(measure.e);
            constraintWidget.H(measure.f);
            constraintWidget.D = measure.h;
            constraintWidget.E(measure.g);
            measure.j = 0;
            return;
        }
        measure.e = 0;
        measure.f = 0;
    }

    @Override // androidx.constraintlayout.core.widgets.WidgetContainer, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void A() {
        this.w0.t();
        this.x0 = 0;
        this.y0 = 0;
        super.A();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void L(boolean z, boolean z2) {
        super.L(z, z2);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.q0.get(i)).L(z, z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:203:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x069e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x06be  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x07ef  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x084a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x08c4  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x08e0  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x08ef  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x092d  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x092e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x08ec  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x082e  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x093d  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:599:0x0634 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:602:0x0644  */
    /* JADX WARN: Removed duplicated region for block: B:609:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x065c  */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v61, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void N() {
        /*
            Method dump skipped, instructions count: 2381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidgetContainer.N():void");
    }

    public final void O(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            int i2 = this.z0 + 1;
            ChainHead[] chainHeadArr = this.C0;
            if (i2 >= chainHeadArr.length) {
                this.C0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
            }
            ChainHead[] chainHeadArr2 = this.C0;
            int i3 = this.z0;
            chainHeadArr2[i3] = new ChainHead(constraintWidget, 0, this.v0);
            this.z0 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.A0 + 1;
            ChainHead[] chainHeadArr3 = this.B0;
            if (i4 >= chainHeadArr3.length) {
                this.B0 = (ChainHead[]) Arrays.copyOf(chainHeadArr3, chainHeadArr3.length * 2);
            }
            ChainHead[] chainHeadArr4 = this.B0;
            int i5 = this.A0;
            chainHeadArr4[i5] = new ChainHead(constraintWidget, 1, this.v0);
            this.A0 = i5 + 1;
        }
    }

    public final void P(LinearSystem linearSystem) {
        ConstraintWidgetContainer constraintWidgetContainer;
        LinearSystem linearSystem2;
        int i;
        boolean R = R(64);
        c(linearSystem, R);
        int size = this.q0.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.q0.get(i2);
            boolean[] zArr = constraintWidget.S;
            zArr[0] = false;
            zArr[1] = false;
            if (constraintWidget instanceof Barrier) {
                z = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.q0.get(i3);
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    for (int i4 = 0; i4 < barrier.r0; i4++) {
                        ConstraintWidget constraintWidget3 = barrier.q0[i4];
                        if (barrier.t0 || constraintWidget3.d()) {
                            int i5 = barrier.s0;
                            if (i5 != 0 && i5 != 1) {
                                if (i5 == 2 || i5 == 3) {
                                    constraintWidget3.S[1] = true;
                                }
                            } else {
                                constraintWidget3.S[0] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.K0;
        hashSet.clear();
        for (int i6 = 0; i6 < size; i6++) {
            ConstraintWidget constraintWidget4 = (ConstraintWidget) this.q0.get(i6);
            constraintWidget4.getClass();
            boolean z2 = constraintWidget4 instanceof VirtualLayout;
            if (z2 || (constraintWidget4 instanceof Guideline)) {
                if (z2) {
                    hashSet.add(constraintWidget4);
                } else {
                    constraintWidget4.c(linearSystem, R);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                VirtualLayout virtualLayout = (VirtualLayout) ((ConstraintWidget) it.next());
                for (int i7 = 0; i7 < virtualLayout.r0; i7++) {
                    if (hashSet.contains(virtualLayout.q0[i7])) {
                        virtualLayout.c(linearSystem, R);
                        hashSet.remove(virtualLayout);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ConstraintWidget) it2.next()).c(linearSystem, R);
                }
                hashSet.clear();
            }
        }
        boolean z3 = LinearSystem.p;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.f;
        if (z3) {
            HashSet hashSet2 = new HashSet();
            for (int i8 = 0; i8 < size; i8++) {
                ConstraintWidget constraintWidget5 = (ConstraintWidget) this.q0.get(i8);
                constraintWidget5.getClass();
                if (!(constraintWidget5 instanceof VirtualLayout) && !(constraintWidget5 instanceof Guideline)) {
                    hashSet2.add(constraintWidget5);
                }
            }
            if (this.T[0] == dimensionBehaviour) {
                i = 0;
            } else {
                i = 1;
            }
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            constraintWidgetContainer.b(this, linearSystem2, hashSet2, i, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                ConstraintWidget constraintWidget6 = (ConstraintWidget) it3.next();
                Optimizer.a(this, linearSystem2, constraintWidget6);
                constraintWidget6.c(linearSystem2, R);
            }
        } else {
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            for (int i9 = 0; i9 < size; i9++) {
                ConstraintWidget constraintWidget7 = (ConstraintWidget) constraintWidgetContainer.q0.get(i9);
                if (constraintWidget7 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget7.T;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.f535c;
                    if (dimensionBehaviour2 == dimensionBehaviour) {
                        constraintWidget7.I(dimensionBehaviour4);
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour) {
                        constraintWidget7.J(dimensionBehaviour4);
                    }
                    constraintWidget7.c(linearSystem2, R);
                    if (dimensionBehaviour2 == dimensionBehaviour) {
                        constraintWidget7.I(dimensionBehaviour2);
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour) {
                        constraintWidget7.J(dimensionBehaviour3);
                    }
                } else {
                    Optimizer.a(this, linearSystem2, constraintWidget7);
                    if (!(constraintWidget7 instanceof VirtualLayout) && !(constraintWidget7 instanceof Guideline)) {
                        constraintWidget7.c(linearSystem2, R);
                    }
                }
            }
        }
        if (constraintWidgetContainer.z0 > 0) {
            Chain.a(this, linearSystem2, null, 0);
        }
        if (constraintWidgetContainer.A0 > 0) {
            Chain.a(this, linearSystem2, null, 1);
        }
    }

    public final boolean R(int i) {
        if ((this.D0 & i) == i) {
            return true;
        }
        return false;
    }
}
