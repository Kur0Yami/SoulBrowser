package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public int H0;
    public int I0;
    public float J0;
    public float K0;
    public float L0;
    public float M0;
    public float N0;
    public float O0;
    public int P0;
    public int Q0;
    public int R0;
    public int S0;
    public int T0;
    public int U0;
    public int V0;
    public ArrayList W0;
    public ConstraintWidget[] X0;
    public ConstraintWidget[] Y0;
    public int[] Z0;
    public ConstraintWidget[] a1;
    public int b1;

    /* loaded from: classes.dex */
    public class WidgetsList {

        /* renamed from: a, reason: collision with root package name */
        public int f536a;
        public ConstraintAnchor d;
        public ConstraintAnchor e;
        public ConstraintAnchor f;
        public ConstraintAnchor g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int q;
        public ConstraintWidget b = null;

        /* renamed from: c, reason: collision with root package name */
        public int f537c = 0;
        public int l = 0;
        public int m = 0;
        public int n = 0;
        public int o = 0;
        public int p = 0;

        public WidgetsList(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.f536a = i;
            this.d = constraintAnchor;
            this.e = constraintAnchor2;
            this.f = constraintAnchor3;
            this.g = constraintAnchor4;
            this.h = Flow.this.w0;
            this.i = Flow.this.s0;
            this.j = Flow.this.x0;
            this.k = Flow.this.t0;
            this.q = i2;
        }

        public final void a(ConstraintWidget constraintWidget) {
            int i = this.f536a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.g;
            int i2 = 0;
            Flow flow = Flow.this;
            if (i == 0) {
                int R = flow.R(constraintWidget, this.q);
                if (constraintWidget.T[0] == dimensionBehaviour) {
                    this.p++;
                    R = 0;
                }
                int i3 = flow.P0;
                if (constraintWidget.h0 != 8) {
                    i2 = i3;
                }
                this.l = R + i2 + this.l;
                int Q = flow.Q(constraintWidget, this.q);
                if (this.b == null || this.f537c < Q) {
                    this.b = constraintWidget;
                    this.f537c = Q;
                    this.m = Q;
                }
            } else {
                int R2 = flow.R(constraintWidget, this.q);
                int Q2 = flow.Q(constraintWidget, this.q);
                if (constraintWidget.T[1] == dimensionBehaviour) {
                    this.p++;
                    Q2 = 0;
                }
                int i4 = flow.Q0;
                if (constraintWidget.h0 != 8) {
                    i2 = i4;
                }
                this.m = Q2 + i2 + this.m;
                if (this.b == null || this.f537c < R2) {
                    this.b = constraintWidget;
                    this.f537c = R2;
                    this.l = R2;
                }
            }
            this.o++;
        }

        public final void b(int i, boolean z, boolean z2) {
            Flow flow;
            boolean z3;
            int i2;
            int i3;
            ConstraintWidget constraintWidget;
            int i4;
            char c2;
            float f;
            int i5;
            int i6;
            float f2;
            float f3;
            int i7;
            int i8;
            int i9;
            int i10 = this.o;
            int i11 = 0;
            while (true) {
                flow = Flow.this;
                if (i11 >= i10 || (i9 = this.n + i11) >= flow.b1) {
                    break;
                }
                ConstraintWidget constraintWidget2 = flow.a1[i9];
                if (constraintWidget2 != null) {
                    constraintWidget2.B();
                }
                i11++;
            }
            if (i10 != 0 && this.b != null) {
                if (z2 && i == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i12 = -1;
                int i13 = -1;
                for (int i14 = 0; i14 < i10; i14++) {
                    if (z) {
                        i8 = (i10 - 1) - i14;
                    } else {
                        i8 = i14;
                    }
                    int i15 = this.n + i8;
                    if (i15 >= flow.b1) {
                        break;
                    }
                    if (flow.a1[i15].h0 == 0) {
                        if (i12 == -1) {
                            i12 = i14;
                        }
                        i13 = i14;
                    }
                }
                if (this.f536a == 0) {
                    ConstraintWidget constraintWidget3 = this.b;
                    constraintWidget3.k0 = flow.E0;
                    ConstraintAnchor constraintAnchor = constraintWidget3.L;
                    ConstraintAnchor constraintAnchor2 = constraintWidget3.J;
                    int i16 = this.i;
                    if (i > 0) {
                        i16 += flow.Q0;
                    }
                    constraintAnchor2.a(this.e, i16);
                    if (z2) {
                        constraintAnchor.a(this.g, this.k);
                    }
                    if (i > 0) {
                        this.e.d.L.a(constraintAnchor2, 0);
                    }
                    if (flow.S0 == 3 && !constraintWidget3.D) {
                        for (int i17 = 0; i17 < i10; i17++) {
                            if (z) {
                                i7 = (i10 - 1) - i17;
                            } else {
                                i7 = i17;
                            }
                            int i18 = this.n + i7;
                            if (i18 >= flow.b1) {
                                break;
                            }
                            constraintWidget = flow.a1[i18];
                            if (constraintWidget.D) {
                                break;
                            }
                        }
                    }
                    constraintWidget = constraintWidget3;
                    int i19 = 0;
                    ConstraintWidget constraintWidget4 = null;
                    while (i19 < i10) {
                        if (z) {
                            i4 = (i10 - 1) - i19;
                        } else {
                            i4 = i19;
                        }
                        int i20 = this.n + i4;
                        if (i20 < flow.b1) {
                            ConstraintWidget constraintWidget5 = flow.a1[i20];
                            if (i19 == 0) {
                                constraintWidget5.g(constraintWidget5.I, this.d, this.h);
                            }
                            if (i4 == 0) {
                                int i21 = flow.D0;
                                if (z) {
                                    f = 1.0f - flow.J0;
                                } else {
                                    f = flow.J0;
                                }
                                if (this.n == 0) {
                                    int i22 = flow.F0;
                                    i5 = i21;
                                    if (i22 != -1) {
                                        if (z) {
                                            f3 = 1.0f - flow.L0;
                                        } else {
                                            f3 = flow.L0;
                                        }
                                        f = f3;
                                        i6 = i22;
                                        constraintWidget5.j0 = i6;
                                        constraintWidget5.e0 = f;
                                    }
                                } else {
                                    i5 = i21;
                                }
                                if (z2 && (i6 = flow.H0) != -1) {
                                    if (z) {
                                        f2 = 1.0f - flow.N0;
                                    } else {
                                        f2 = flow.N0;
                                    }
                                    f = f2;
                                } else {
                                    i6 = i5;
                                }
                                constraintWidget5.j0 = i6;
                                constraintWidget5.e0 = f;
                            }
                            if (i19 == i10 - 1) {
                                constraintWidget5.g(constraintWidget5.K, this.f, this.j);
                            }
                            if (constraintWidget4 != null) {
                                ConstraintAnchor constraintAnchor3 = constraintWidget4.K;
                                ConstraintAnchor constraintAnchor4 = constraintWidget5.I;
                                constraintAnchor4.a(constraintAnchor3, flow.P0);
                                if (i19 == i12) {
                                    int i23 = this.h;
                                    if (constraintAnchor4.h()) {
                                        constraintAnchor4.h = i23;
                                    }
                                }
                                constraintAnchor3.a(constraintAnchor4, 0);
                                if (i19 == i13 + 1) {
                                    int i24 = this.j;
                                    if (constraintAnchor3.h()) {
                                        constraintAnchor3.h = i24;
                                    }
                                }
                            }
                            if (constraintWidget5 != constraintWidget3) {
                                int i25 = flow.S0;
                                c2 = 3;
                                if (i25 == 3 && constraintWidget.D && constraintWidget5 != constraintWidget && constraintWidget5.D) {
                                    constraintWidget5.M.a(constraintWidget.M, 0);
                                } else if (i25 != 0) {
                                    if (i25 != 1) {
                                        if (z3) {
                                            constraintWidget5.J.a(this.e, this.i);
                                            constraintWidget5.L.a(this.g, this.k);
                                        } else {
                                            constraintWidget5.J.a(constraintAnchor2, 0);
                                            constraintWidget5.L.a(constraintAnchor, 0);
                                        }
                                    } else {
                                        constraintWidget5.L.a(constraintAnchor, 0);
                                    }
                                } else {
                                    constraintWidget5.J.a(constraintAnchor2, 0);
                                }
                            } else {
                                c2 = 3;
                            }
                            i19++;
                            constraintWidget4 = constraintWidget5;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                ConstraintWidget constraintWidget6 = this.b;
                constraintWidget6.j0 = flow.D0;
                ConstraintAnchor constraintAnchor5 = constraintWidget6.I;
                ConstraintAnchor constraintAnchor6 = constraintWidget6.K;
                int i26 = this.h;
                if (i > 0) {
                    i26 += flow.P0;
                }
                if (z) {
                    constraintAnchor6.a(this.f, i26);
                    if (z2) {
                        constraintAnchor5.a(this.d, this.j);
                    }
                    if (i > 0) {
                        this.f.d.I.a(constraintAnchor6, 0);
                    }
                } else {
                    constraintAnchor5.a(this.d, i26);
                    if (z2) {
                        constraintAnchor6.a(this.f, this.j);
                    }
                    if (i > 0) {
                        this.d.d.K.a(constraintAnchor5, 0);
                    }
                }
                ConstraintWidget constraintWidget7 = null;
                int i27 = 0;
                while (i27 < i10) {
                    int i28 = this.n + i27;
                    if (i28 < flow.b1) {
                        ConstraintWidget constraintWidget8 = flow.a1[i28];
                        if (i27 == 0) {
                            constraintWidget8.g(constraintWidget8.J, this.e, this.i);
                            int i29 = flow.E0;
                            float f4 = flow.K0;
                            if (this.n == 0) {
                                i3 = flow.G0;
                                i2 = -1;
                                if (i3 != -1) {
                                    f4 = flow.M0;
                                    i29 = i3;
                                    constraintWidget8.k0 = i29;
                                    constraintWidget8.f0 = f4;
                                }
                            } else {
                                i2 = -1;
                            }
                            if (z2 && (i3 = flow.I0) != i2) {
                                f4 = flow.O0;
                                i29 = i3;
                            }
                            constraintWidget8.k0 = i29;
                            constraintWidget8.f0 = f4;
                        }
                        if (i27 == i10 - 1) {
                            constraintWidget8.g(constraintWidget8.L, this.g, this.k);
                        }
                        if (constraintWidget7 != null) {
                            ConstraintAnchor constraintAnchor7 = constraintWidget7.L;
                            ConstraintAnchor constraintAnchor8 = constraintWidget8.J;
                            constraintAnchor8.a(constraintAnchor7, flow.Q0);
                            if (i27 == i12) {
                                int i30 = this.i;
                                if (constraintAnchor8.h()) {
                                    constraintAnchor8.h = i30;
                                }
                            }
                            constraintAnchor7.a(constraintAnchor8, 0);
                            if (i27 == i13 + 1) {
                                int i31 = this.k;
                                if (constraintAnchor7.h()) {
                                    constraintAnchor7.h = i31;
                                }
                            }
                        }
                        if (constraintWidget8 != constraintWidget6) {
                            if (z) {
                                int i32 = flow.R0;
                                if (i32 != 0) {
                                    if (i32 != 1) {
                                        if (i32 == 2) {
                                            constraintWidget8.I.a(constraintAnchor5, 0);
                                            constraintWidget8.K.a(constraintAnchor6, 0);
                                        }
                                    } else {
                                        constraintWidget8.I.a(constraintAnchor5, 0);
                                    }
                                } else {
                                    constraintWidget8.K.a(constraintAnchor6, 0);
                                }
                            } else {
                                int i33 = flow.R0;
                                if (i33 != 0) {
                                    if (i33 != 1) {
                                        if (i33 == 2) {
                                            if (z3) {
                                                constraintWidget8.I.a(this.d, this.h);
                                                constraintWidget8.K.a(this.f, this.j);
                                            } else {
                                                constraintWidget8.I.a(constraintAnchor5, 0);
                                                constraintWidget8.K.a(constraintAnchor6, 0);
                                            }
                                        }
                                    } else {
                                        constraintWidget8.K.a(constraintAnchor6, 0);
                                    }
                                } else {
                                    constraintWidget8.I.a(constraintAnchor5, 0);
                                }
                                i27++;
                                constraintWidget7 = constraintWidget8;
                            }
                        }
                        i27++;
                        constraintWidget7 = constraintWidget8;
                    } else {
                        return;
                    }
                }
            }
        }

        public final int c() {
            if (this.f536a == 1) {
                return this.m - Flow.this.Q0;
            }
            return this.m;
        }

        public final int d() {
            if (this.f536a == 0) {
                return this.l - Flow.this.P0;
            }
            return this.l;
        }

        public final void e(int i) {
            int i2 = this.p;
            if (i2 != 0) {
                int i3 = this.o;
                int i4 = i / i2;
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = this.n;
                    int i7 = i6 + i5;
                    Flow flow = Flow.this;
                    if (i7 >= flow.b1) {
                        break;
                    }
                    ConstraintWidget constraintWidget = flow.a1[i6 + i5];
                    int i8 = this.f536a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.f535c;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.g;
                    if (i8 == 0) {
                        if (constraintWidget != null) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.T;
                            if (dimensionBehaviourArr[0] == dimensionBehaviour2 && constraintWidget.q == 0) {
                                flow.P(constraintWidget, dimensionBehaviour, i4, dimensionBehaviourArr[1], constraintWidget.l());
                            }
                        }
                    } else if (constraintWidget != null) {
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget.T;
                        if (dimensionBehaviourArr2[1] == dimensionBehaviour2 && constraintWidget.r == 0) {
                            int i9 = i4;
                            flow.P(constraintWidget, dimensionBehaviourArr2[0], constraintWidget.o(), dimensionBehaviour, i9);
                            i4 = i9;
                        }
                    }
                }
                this.l = 0;
                this.m = 0;
                this.b = null;
                this.f537c = 0;
                int i10 = this.o;
                for (int i11 = 0; i11 < i10; i11++) {
                    int i12 = this.n + i11;
                    Flow flow2 = Flow.this;
                    if (i12 < flow2.b1) {
                        ConstraintWidget constraintWidget2 = flow2.a1[i12];
                        if (this.f536a == 0) {
                            int o = constraintWidget2.o();
                            int i13 = flow2.P0;
                            if (constraintWidget2.h0 == 8) {
                                i13 = 0;
                            }
                            this.l = o + i13 + this.l;
                            int Q = flow2.Q(constraintWidget2, this.q);
                            if (this.b == null || this.f537c < Q) {
                                this.b = constraintWidget2;
                                this.f537c = Q;
                                this.m = Q;
                            }
                        } else {
                            int R = flow2.R(constraintWidget2, this.q);
                            int Q2 = flow2.Q(constraintWidget2, this.q);
                            int i14 = flow2.Q0;
                            if (constraintWidget2.h0 == 8) {
                                i14 = 0;
                            }
                            this.m = Q2 + i14 + this.m;
                            if (this.b == null || this.f537c < R) {
                                this.b = constraintWidget2;
                                this.f537c = R;
                                this.l = R;
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        public final void f(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.f536a = i;
            this.d = constraintAnchor;
            this.e = constraintAnchor2;
            this.f = constraintAnchor3;
            this.g = constraintAnchor4;
            this.h = i2;
            this.i = i3;
            this.j = i4;
            this.k = i5;
            this.q = i6;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public final void O(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr;
        int i10;
        int i11;
        int i12;
        WidgetsList widgetsList;
        char c2;
        int i13;
        boolean z;
        int i14;
        boolean z2;
        int i15;
        boolean z3;
        boolean z4;
        int i16;
        ConstraintWidget constraintWidget;
        int i17;
        int i18;
        int i19;
        boolean z5;
        int i20;
        int i21;
        Object obj;
        ConstraintWidget constraintWidget2;
        int i22;
        int i23;
        BasicMeasure.Measurer measurer;
        ArrayList arrayList = this.W0;
        int i24 = this.r0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.g;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.f;
        int i25 = 0;
        if (i24 > 0) {
            BasicMeasure.Measure measure = this.B0;
            ConstraintWidget constraintWidget3 = this.U;
            if (constraintWidget3 != null) {
                measurer = ((ConstraintWidgetContainer) constraintWidget3).u0;
            } else {
                measurer = null;
            }
            if (measurer == null) {
                this.z0 = 0;
                this.A0 = 0;
                this.y0 = false;
                return;
            }
            int i26 = 0;
            while (i26 < this.r0) {
                ConstraintWidget constraintWidget4 = this.q0[i26];
                if (constraintWidget4 != null && !(constraintWidget4 instanceof Guideline)) {
                    ConstraintWidget.DimensionBehaviour k = constraintWidget4.k(i25);
                    ConstraintWidget.DimensionBehaviour k2 = constraintWidget4.k(1);
                    if (k != dimensionBehaviour || constraintWidget4.q == 1 || k2 != dimensionBehaviour || constraintWidget4.r == 1) {
                        if (k == dimensionBehaviour) {
                            k = dimensionBehaviour2;
                        }
                        if (k2 == dimensionBehaviour) {
                            k2 = dimensionBehaviour2;
                        }
                        measure.f542a = k;
                        measure.b = k2;
                        measure.f543c = constraintWidget4.o();
                        measure.d = constraintWidget4.l();
                        measurer.b(constraintWidget4, measure);
                        constraintWidget4.K(measure.e);
                        constraintWidget4.H(measure.f);
                        constraintWidget4.E(measure.g);
                    }
                }
                i26++;
                i25 = 0;
            }
        }
        int i27 = this.w0;
        int i28 = this.x0;
        int i29 = this.s0;
        int i30 = this.t0;
        int[] iArr2 = new int[2];
        int i31 = (i2 - i27) - i28;
        int i32 = this.V0;
        if (i32 == 1) {
            i31 = (i4 - i29) - i30;
        }
        if (i32 == 0) {
            if (this.D0 == -1) {
                i23 = 0;
                this.D0 = 0;
            } else {
                i23 = 0;
            }
            i5 = i27;
            if (this.E0 == -1) {
                this.E0 = i23;
            }
        } else {
            i5 = i27;
            if (this.D0 == -1) {
                this.D0 = 0;
            }
            if (this.E0 == -1) {
                this.E0 = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.q0;
        int i33 = 0;
        int i34 = 0;
        while (true) {
            i6 = this.r0;
            i7 = i28;
            if (i33 >= i6) {
                break;
            }
            if (this.q0[i33].h0 == 8) {
                i34++;
            }
            i33++;
            i28 = i7;
        }
        if (i34 > 0) {
            ConstraintWidget[] constraintWidgetArr2 = new ConstraintWidget[i6 - i34];
            int i35 = 0;
            int i36 = 0;
            while (i35 < this.r0) {
                ConstraintWidget constraintWidget5 = this.q0[i35];
                ConstraintWidget[] constraintWidgetArr3 = constraintWidgetArr2;
                if (constraintWidget5.h0 != 8) {
                    constraintWidgetArr3[i36] = constraintWidget5;
                    i36++;
                }
                i35++;
                constraintWidgetArr2 = constraintWidgetArr3;
            }
            constraintWidgetArr = constraintWidgetArr2;
            i6 = i36;
        }
        ConstraintWidget[] constraintWidgetArr4 = constraintWidgetArr;
        this.a1 = constraintWidgetArr4;
        this.b1 = i6;
        int i37 = this.T0;
        if (i37 != 0) {
            if (i37 != 1) {
                if (i37 != 2) {
                    i8 = i29;
                    i9 = i30;
                    iArr = iArr2;
                    i10 = i5;
                    i11 = i7;
                    c2 = 1;
                    i12 = 0;
                } else {
                    int i38 = this.V0;
                    if (i38 == 0) {
                        i19 = this.U0;
                        if (i19 <= 0) {
                            int i39 = 0;
                            int i40 = 0;
                            for (int i41 = 0; i41 < i6; i41++) {
                                if (i41 > 0) {
                                    i39 += this.P0;
                                }
                                ConstraintWidget constraintWidget6 = constraintWidgetArr4[i41];
                                if (constraintWidget6 != null) {
                                    int R = R(constraintWidget6, i31) + i39;
                                    if (R > i31) {
                                        break;
                                    }
                                    i40++;
                                    i39 = R;
                                }
                            }
                            i19 = i40;
                        }
                        i18 = 0;
                    } else {
                        int i42 = this.U0;
                        if (i42 <= 0) {
                            int i43 = 0;
                            i18 = 0;
                            for (int i44 = 0; i44 < i6; i44++) {
                                if (i44 > 0) {
                                    i43 += this.Q0;
                                }
                                ConstraintWidget constraintWidget7 = constraintWidgetArr4[i44];
                                if (constraintWidget7 != null) {
                                    int Q = Q(constraintWidget7, i31) + i43;
                                    if (Q > i31) {
                                        break;
                                    }
                                    i18++;
                                    i43 = Q;
                                }
                            }
                        } else {
                            i18 = i42;
                        }
                        i19 = 0;
                    }
                    if (this.Z0 == null) {
                        this.Z0 = new int[2];
                    }
                    if ((i18 == 0 && i38 == 1) || (i19 == 0 && i38 == 0)) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    while (!z5) {
                        if (i38 == 0) {
                            i18 = (int) Math.ceil(i6 / i19);
                            i20 = i29;
                            i21 = i30;
                        } else {
                            i20 = i29;
                            i21 = i30;
                            i19 = (int) Math.ceil(i6 / i18);
                        }
                        ConstraintWidget[] constraintWidgetArr5 = this.Y0;
                        if (constraintWidgetArr5 == null || constraintWidgetArr5.length < i19) {
                            obj = null;
                            this.Y0 = new ConstraintWidget[i19];
                        } else {
                            obj = null;
                            Arrays.fill(constraintWidgetArr5, (Object) null);
                        }
                        ConstraintWidget[] constraintWidgetArr6 = this.X0;
                        if (constraintWidgetArr6 != null && constraintWidgetArr6.length >= i18) {
                            Arrays.fill(constraintWidgetArr6, obj);
                        } else {
                            this.X0 = new ConstraintWidget[i18];
                        }
                        for (int i45 = 0; i45 < i19; i45++) {
                            int i46 = 0;
                            while (i46 < i18) {
                                int i47 = (i46 * i19) + i45;
                                int i48 = i6;
                                if (i38 == 1) {
                                    i47 = (i45 * i18) + i46;
                                }
                                if (i47 >= constraintWidgetArr4.length || (constraintWidget2 = constraintWidgetArr4[i47]) == null) {
                                    i22 = i38;
                                } else {
                                    int R2 = R(constraintWidget2, i31);
                                    i22 = i38;
                                    ConstraintWidget constraintWidget8 = this.Y0[i45];
                                    if (constraintWidget8 == null || constraintWidget8.o() < R2) {
                                        this.Y0[i45] = constraintWidget2;
                                    }
                                    int Q2 = Q(constraintWidget2, i31);
                                    ConstraintWidget constraintWidget9 = this.X0[i46];
                                    if (constraintWidget9 == null || constraintWidget9.l() < Q2) {
                                        this.X0[i46] = constraintWidget2;
                                    }
                                }
                                i46++;
                                i6 = i48;
                                i38 = i22;
                            }
                        }
                        int i49 = i6;
                        int i50 = i38;
                        int i51 = 0;
                        for (int i52 = 0; i52 < i19; i52++) {
                            ConstraintWidget constraintWidget10 = this.Y0[i52];
                            if (constraintWidget10 != null) {
                                if (i52 > 0) {
                                    i51 += this.P0;
                                }
                                i51 = R(constraintWidget10, i31) + i51;
                            }
                        }
                        int i53 = 0;
                        for (int i54 = 0; i54 < i18; i54++) {
                            ConstraintWidget constraintWidget11 = this.X0[i54];
                            if (constraintWidget11 != null) {
                                if (i54 > 0) {
                                    i53 += this.Q0;
                                }
                                i53 = Q(constraintWidget11, i31) + i53;
                            }
                        }
                        iArr2[0] = i51;
                        iArr2[1] = i53;
                        if (i50 == 0) {
                            if (i51 > i31 && i19 > 1) {
                                i19--;
                            }
                            z5 = true;
                        } else {
                            if (i53 > i31 && i18 > 1) {
                                i18--;
                            }
                            z5 = true;
                        }
                        i29 = i20;
                        i30 = i21;
                        i6 = i49;
                        i38 = i50;
                    }
                    int[] iArr3 = this.Z0;
                    iArr3[0] = i19;
                    iArr3[1] = i18;
                    c2 = 1;
                    iArr = iArr2;
                    i12 = 0;
                    i8 = i29;
                    i10 = i5;
                    i9 = i30;
                    i11 = i7;
                }
            } else {
                int i55 = i6;
                int i56 = this.V0;
                if (i55 == 0) {
                    iArr = iArr2;
                    i12 = 0;
                    i8 = i29;
                    i10 = i5;
                    i9 = i30;
                    i11 = i7;
                } else {
                    arrayList.clear();
                    iArr = iArr2;
                    i12 = 0;
                    i8 = i29;
                    i10 = i5;
                    i9 = i30;
                    i11 = i7;
                    WidgetsList widgetsList2 = new WidgetsList(i56, this.I, this.J, this.K, this.L, i31);
                    arrayList.add(widgetsList2);
                    if (i56 == 0) {
                        int i57 = 0;
                        i14 = 0;
                        int i58 = 0;
                        while (i57 < i55) {
                            ConstraintWidget constraintWidget12 = constraintWidgetArr4[i57];
                            int R3 = R(constraintWidget12, i31);
                            int i59 = i56;
                            if (constraintWidget12.T[0] == dimensionBehaviour) {
                                i14++;
                            }
                            int i60 = i14;
                            if ((i58 == i31 || this.P0 + i58 + R3 > i31) && widgetsList2.b != null) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (!z4 && i57 > 0 && (i17 = this.U0) > 0 && i57 % i17 == 0) {
                                z4 = true;
                            }
                            if (z4) {
                                constraintWidget = constraintWidget12;
                                i56 = i59;
                                i16 = i57;
                                widgetsList2 = new WidgetsList(i56, this.I, this.J, this.K, this.L, i31);
                                widgetsList2.n = i16;
                                arrayList.add(widgetsList2);
                            } else {
                                i16 = i57;
                                constraintWidget = constraintWidget12;
                                i56 = i59;
                                if (i16 > 0) {
                                    i58 = this.P0 + R3 + i58;
                                    widgetsList2.a(constraintWidget);
                                    i57 = i16 + 1;
                                    i14 = i60;
                                }
                            }
                            i58 = R3;
                            widgetsList2.a(constraintWidget);
                            i57 = i16 + 1;
                            i14 = i60;
                        }
                    } else {
                        int i61 = 0;
                        int i62 = 0;
                        int i63 = 0;
                        while (i63 < i55) {
                            ConstraintWidget constraintWidget13 = constraintWidgetArr4[i63];
                            int Q3 = Q(constraintWidget13, i31);
                            if (constraintWidget13.T[1] == dimensionBehaviour) {
                                i61++;
                            }
                            int i64 = i61;
                            if ((i62 == i31 || this.Q0 + i62 + Q3 > i31) && widgetsList2.b != null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (!z2 && i63 > 0 && (i15 = this.U0) > 0 && i63 % i15 == 0) {
                                z2 = true;
                            }
                            if (z2) {
                                widgetsList2 = new WidgetsList(i56, this.I, this.J, this.K, this.L, i31);
                                widgetsList2.n = i63;
                                arrayList.add(widgetsList2);
                            } else if (i63 > 0) {
                                i62 = this.Q0 + Q3 + i62;
                                widgetsList2.a(constraintWidget13);
                                i63++;
                                i61 = i64;
                            }
                            i62 = Q3;
                            widgetsList2.a(constraintWidget13);
                            i63++;
                            i61 = i64;
                        }
                        i14 = i61;
                    }
                    int size = arrayList.size();
                    int i65 = this.w0;
                    int i66 = this.s0;
                    int i67 = this.x0;
                    int i68 = this.t0;
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.T;
                    if (dimensionBehaviourArr[0] != dimensionBehaviour2 && dimensionBehaviourArr[1] != dimensionBehaviour2) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (i14 > 0 && z3) {
                        for (int i69 = 0; i69 < size; i69++) {
                            WidgetsList widgetsList3 = (WidgetsList) arrayList.get(i69);
                            if (i56 == 0) {
                                widgetsList3.e(i31 - widgetsList3.d());
                            } else {
                                widgetsList3.e(i31 - widgetsList3.c());
                            }
                        }
                    }
                    ConstraintAnchor constraintAnchor = this.L;
                    ConstraintAnchor constraintAnchor2 = this.K;
                    int i70 = i65;
                    ConstraintAnchor constraintAnchor3 = constraintAnchor;
                    int i71 = i66;
                    int i72 = i67;
                    int i73 = i68;
                    ConstraintAnchor constraintAnchor4 = constraintAnchor2;
                    ConstraintAnchor constraintAnchor5 = this.I;
                    ConstraintAnchor constraintAnchor6 = this.J;
                    int i74 = 0;
                    int i75 = 0;
                    for (int i76 = 0; i76 < size; i76++) {
                        WidgetsList widgetsList4 = (WidgetsList) arrayList.get(i76);
                        if (i56 == 0) {
                            if (i76 < size - 1) {
                                constraintAnchor3 = ((WidgetsList) arrayList.get(i76 + 1)).b.J;
                                i73 = 0;
                            } else {
                                constraintAnchor3 = constraintAnchor;
                                i73 = this.t0;
                            }
                            ConstraintAnchor constraintAnchor7 = widgetsList4.b.L;
                            widgetsList4.f(i56, constraintAnchor5, constraintAnchor6, constraintAnchor4, constraintAnchor3, i70, i71, i72, i73, i31);
                            i74 = Math.max(i74, widgetsList4.d());
                            i75 += widgetsList4.c();
                            if (i76 > 0) {
                                i75 += this.Q0;
                            }
                            constraintAnchor6 = constraintAnchor7;
                            i71 = 0;
                        } else {
                            if (i76 < size - 1) {
                                constraintAnchor4 = ((WidgetsList) arrayList.get(i76 + 1)).b.I;
                                i72 = 0;
                            } else {
                                constraintAnchor4 = constraintAnchor2;
                                i72 = this.x0;
                            }
                            ConstraintAnchor constraintAnchor8 = widgetsList4.b.K;
                            widgetsList4.f(i56, constraintAnchor5, constraintAnchor6, constraintAnchor4, constraintAnchor3, i70, i71, i72, i73, i31);
                            i74 += widgetsList4.d();
                            i75 = Math.max(i75, widgetsList4.c());
                            if (i76 > 0) {
                                i74 += this.P0;
                            }
                            constraintAnchor5 = constraintAnchor8;
                            i70 = 0;
                        }
                    }
                    iArr[0] = i74;
                    iArr[1] = i75;
                }
                c2 = 1;
            }
        } else {
            i8 = i29;
            i9 = i30;
            iArr = iArr2;
            i10 = i5;
            i11 = i7;
            i12 = 0;
            int i77 = i6;
            int i78 = this.V0;
            if (i77 != 0) {
                if (arrayList.size() == 0) {
                    widgetsList = new WidgetsList(i78, this.I, this.J, this.K, this.L, i31);
                    arrayList.add(widgetsList);
                } else {
                    widgetsList = (WidgetsList) arrayList.get(0);
                    widgetsList.f537c = 0;
                    widgetsList.b = null;
                    widgetsList.l = 0;
                    widgetsList.m = 0;
                    widgetsList.n = 0;
                    widgetsList.o = 0;
                    widgetsList.p = 0;
                    widgetsList.f(i78, this.I, this.J, this.K, this.L, this.w0, this.s0, this.x0, this.t0, i31);
                }
                for (int i79 = 0; i79 < i77; i79++) {
                    widgetsList.a(constraintWidgetArr4[i79]);
                }
                i12 = 0;
                iArr[0] = widgetsList.d();
                c2 = 1;
                iArr[1] = widgetsList.c();
            }
            c2 = 1;
        }
        int i80 = iArr[i12] + i10 + i11;
        int i81 = iArr[c2] + i8 + i9;
        if (i == 1073741824) {
            i13 = i3;
            i80 = i2;
        } else if (i == Integer.MIN_VALUE) {
            i80 = Math.min(i80, i2);
            i13 = i3;
        } else {
            i13 = i3;
            if (i != 0) {
                i80 = i12;
            }
        }
        if (i13 == 1073741824) {
            i81 = i4;
        } else if (i13 == Integer.MIN_VALUE) {
            i81 = Math.min(i81, i4);
        } else if (i13 != 0) {
            i81 = i12;
        }
        this.z0 = i80;
        this.A0 = i81;
        K(i80);
        H(i81);
        if (this.r0 > 0) {
            z = c2;
        } else {
            z = i12;
        }
        this.y0 = z;
    }

    public final int Q(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.T[1] == ConstraintWidget.DimensionBehaviour.g) {
            int i2 = constraintWidget.r;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.y * i);
                if (i3 != constraintWidget.l()) {
                    constraintWidget.g = true;
                    P(constraintWidget, constraintWidget.T[0], constraintWidget.o(), ConstraintWidget.DimensionBehaviour.f535c, i3);
                }
                return i3;
            }
            constraintWidget2 = constraintWidget;
            if (i2 == 1) {
                return constraintWidget2.l();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget2.o() * constraintWidget2.X) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.l();
    }

    public final int R(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.T[0] == ConstraintWidget.DimensionBehaviour.g) {
            int i2 = constraintWidget.q;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.v * i);
                if (i3 != constraintWidget.o()) {
                    constraintWidget.g = true;
                    P(constraintWidget, ConstraintWidget.DimensionBehaviour.f535c, i3, constraintWidget.T[1], constraintWidget.l());
                }
                return i3;
            }
            constraintWidget2 = constraintWidget;
            if (i2 == 1) {
                return constraintWidget2.o();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget2.l() * constraintWidget2.X) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.o();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void c(LinearSystem linearSystem, boolean z) {
        boolean z2;
        boolean z3;
        ConstraintWidget constraintWidget;
        float f;
        int i;
        ArrayList arrayList = this.W0;
        super.c(linearSystem, z);
        ConstraintWidget constraintWidget2 = this.U;
        if (constraintWidget2 != null && ((ConstraintWidgetContainer) constraintWidget2).v0) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i2 = this.T0;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2 && this.Z0 != null && this.Y0 != null && this.X0 != null) {
                    for (int i3 = 0; i3 < this.b1; i3++) {
                        this.a1[i3].B();
                    }
                    int[] iArr = this.Z0;
                    int i4 = iArr[0];
                    int i5 = iArr[1];
                    float f2 = this.J0;
                    ConstraintWidget constraintWidget3 = null;
                    int i6 = 0;
                    while (i6 < i4) {
                        if (z2) {
                            i = (i4 - i6) - 1;
                            f = 1.0f - this.J0;
                        } else {
                            f = f2;
                            i = i6;
                        }
                        ConstraintWidget constraintWidget4 = this.Y0[i];
                        if (constraintWidget4 != null) {
                            ConstraintAnchor constraintAnchor = constraintWidget4.I;
                            if (constraintWidget4.h0 != 8) {
                                if (i6 == 0) {
                                    constraintWidget4.g(constraintAnchor, this.I, this.w0);
                                    constraintWidget4.j0 = this.D0;
                                    constraintWidget4.e0 = f;
                                }
                                if (i6 == i4 - 1) {
                                    constraintWidget4.g(constraintWidget4.K, this.K, this.x0);
                                }
                                if (i6 > 0 && constraintWidget3 != null) {
                                    ConstraintAnchor constraintAnchor2 = constraintWidget3.K;
                                    constraintWidget4.g(constraintAnchor, constraintAnchor2, this.P0);
                                    constraintWidget3.g(constraintAnchor2, constraintAnchor, 0);
                                }
                                constraintWidget3 = constraintWidget4;
                            }
                        }
                        i6++;
                        f2 = f;
                    }
                    for (int i7 = 0; i7 < i5; i7++) {
                        ConstraintWidget constraintWidget5 = this.X0[i7];
                        if (constraintWidget5 != null) {
                            ConstraintAnchor constraintAnchor3 = constraintWidget5.J;
                            if (constraintWidget5.h0 != 8) {
                                if (i7 == 0) {
                                    constraintWidget5.g(constraintAnchor3, this.J, this.s0);
                                    constraintWidget5.k0 = this.E0;
                                    constraintWidget5.f0 = this.K0;
                                }
                                if (i7 == i5 - 1) {
                                    constraintWidget5.g(constraintWidget5.L, this.L, this.t0);
                                }
                                if (i7 > 0 && constraintWidget3 != null) {
                                    ConstraintAnchor constraintAnchor4 = constraintWidget3.L;
                                    constraintWidget5.g(constraintAnchor3, constraintAnchor4, this.Q0);
                                    constraintWidget3.g(constraintAnchor4, constraintAnchor3, 0);
                                }
                                constraintWidget3 = constraintWidget5;
                            }
                        }
                    }
                    for (int i8 = 0; i8 < i4; i8++) {
                        for (int i9 = 0; i9 < i5; i9++) {
                            int i10 = (i9 * i4) + i8;
                            if (this.V0 == 1) {
                                i10 = (i8 * i5) + i9;
                            }
                            ConstraintWidget[] constraintWidgetArr = this.a1;
                            if (i10 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i10]) != null && constraintWidget.h0 != 8) {
                                ConstraintWidget constraintWidget6 = this.Y0[i8];
                                ConstraintWidget constraintWidget7 = this.X0[i9];
                                if (constraintWidget != constraintWidget6) {
                                    constraintWidget.g(constraintWidget.I, constraintWidget6.I, 0);
                                    constraintWidget.g(constraintWidget.K, constraintWidget6.K, 0);
                                }
                                if (constraintWidget != constraintWidget7) {
                                    constraintWidget.g(constraintWidget.J, constraintWidget7.J, 0);
                                    constraintWidget.g(constraintWidget.L, constraintWidget7.L, 0);
                                }
                            }
                        }
                    }
                }
            } else {
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    WidgetsList widgetsList = (WidgetsList) arrayList.get(i11);
                    if (i11 == size - 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    widgetsList.b(i11, z2, z3);
                }
            }
        } else if (arrayList.size() > 0) {
            ((WidgetsList) arrayList.get(0)).b(0, z2, true);
        }
        this.y0 = false;
    }
}
