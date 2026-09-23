package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.IntCompanionObject;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintSet {
    public static final int[] d = {0, 4, 8};
    public static final SparseIntArray e;
    public static final SparseIntArray f;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f590a = new HashMap();
    public final boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f591c = new HashMap();

    /* loaded from: classes.dex */
    public static class Constraint {

        /* renamed from: a, reason: collision with root package name */
        public int f592a;
        public final PropertySet b;

        /* renamed from: c, reason: collision with root package name */
        public final Motion f593c;
        public final Layout d;
        public final Transform e;
        public HashMap f;

        /* loaded from: classes.dex */
        public static class Delta {

            /* renamed from: a, reason: collision with root package name */
            public int[] f594a;
            public int[] b;

            /* renamed from: c, reason: collision with root package name */
            public int f595c;
            public int[] d;
            public float[] e;
            public int f;
            public int[] g;
            public String[] h;
            public int i;
            public int[] j;
            public boolean[] k;
            public int l;

            public final void a(float f, int i) {
                int i2 = this.f;
                int[] iArr = this.d;
                if (i2 >= iArr.length) {
                    this.d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.e;
                    this.e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.d;
                int i3 = this.f;
                iArr2[i3] = i;
                float[] fArr2 = this.e;
                this.f = i3 + 1;
                fArr2[i3] = f;
            }

            public final void b(int i, int i2) {
                int i3 = this.f595c;
                int[] iArr = this.f594a;
                if (i3 >= iArr.length) {
                    this.f594a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.b;
                    this.b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f594a;
                int i4 = this.f595c;
                iArr3[i4] = i;
                int[] iArr4 = this.b;
                this.f595c = i4 + 1;
                iArr4[i4] = i2;
            }

            public final void c(int i, String str) {
                int i2 = this.i;
                int[] iArr = this.g;
                if (i2 >= iArr.length) {
                    this.g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.h;
                    this.h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.g;
                int i3 = this.i;
                iArr2[i3] = i;
                String[] strArr2 = this.h;
                this.i = i3 + 1;
                strArr2[i3] = str;
            }

            public final void d(int i, boolean z) {
                int i2 = this.l;
                int[] iArr = this.j;
                if (i2 >= iArr.length) {
                    this.j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.k;
                    this.k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.j;
                int i3 = this.l;
                iArr2[i3] = i;
                boolean[] zArr2 = this.k;
                this.l = i3 + 1;
                zArr2[i3] = z;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.widget.ConstraintSet$PropertySet, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintSet$Motion] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintSet$Layout] */
        /* JADX WARN: Type inference failed for: r0v3, types: [androidx.constraintlayout.widget.ConstraintSet$Transform, java.lang.Object] */
        public Constraint() {
            ?? obj = new Object();
            obj.f600a = 0;
            obj.b = 0;
            obj.f601c = 1.0f;
            obj.d = Float.NaN;
            this.b = obj;
            ?? obj2 = new Object();
            obj2.f598a = -1;
            obj2.b = 0;
            obj2.f599c = null;
            obj2.d = -1;
            obj2.e = 0;
            obj2.f = Float.NaN;
            obj2.g = Float.NaN;
            obj2.h = Float.NaN;
            obj2.i = -1;
            obj2.j = null;
            obj2.k = -1;
            this.f593c = obj2;
            ?? obj3 = new Object();
            obj3.f596a = false;
            obj3.d = -1;
            obj3.e = -1;
            obj3.f = -1.0f;
            obj3.g = -1;
            obj3.h = -1;
            obj3.i = -1;
            obj3.j = -1;
            obj3.k = -1;
            obj3.l = -1;
            obj3.m = -1;
            obj3.n = -1;
            obj3.o = -1;
            obj3.p = -1;
            obj3.q = -1;
            obj3.r = -1;
            obj3.s = -1;
            obj3.t = -1;
            obj3.u = -1;
            obj3.v = 0.5f;
            obj3.w = 0.5f;
            obj3.x = null;
            obj3.y = -1;
            obj3.z = 0;
            obj3.A = 0.0f;
            obj3.B = -1;
            obj3.C = -1;
            obj3.D = -1;
            obj3.E = 0;
            obj3.F = 0;
            obj3.G = 0;
            obj3.H = 0;
            obj3.I = 0;
            obj3.J = 0;
            obj3.K = 0;
            obj3.L = IntCompanionObject.MIN_VALUE;
            obj3.M = IntCompanionObject.MIN_VALUE;
            obj3.N = IntCompanionObject.MIN_VALUE;
            obj3.O = IntCompanionObject.MIN_VALUE;
            obj3.P = IntCompanionObject.MIN_VALUE;
            obj3.Q = IntCompanionObject.MIN_VALUE;
            obj3.R = IntCompanionObject.MIN_VALUE;
            obj3.S = -1.0f;
            obj3.T = -1.0f;
            obj3.U = 0;
            obj3.V = 0;
            obj3.W = 0;
            obj3.X = 0;
            obj3.Y = -1;
            obj3.Z = -1;
            obj3.a0 = -1;
            obj3.b0 = -1;
            obj3.c0 = 1.0f;
            obj3.d0 = 1.0f;
            obj3.e0 = -1;
            obj3.f0 = 0;
            obj3.g0 = -1;
            obj3.k0 = false;
            obj3.l0 = false;
            obj3.m0 = true;
            obj3.n0 = 0;
            this.d = obj3;
            ?? obj4 = new Object();
            obj4.f602a = 0.0f;
            obj4.b = 0.0f;
            obj4.f603c = 0.0f;
            obj4.d = 1.0f;
            obj4.e = 1.0f;
            obj4.f = Float.NaN;
            obj4.g = Float.NaN;
            obj4.h = -1;
            obj4.i = 0.0f;
            obj4.j = 0.0f;
            obj4.k = 0.0f;
            obj4.l = false;
            obj4.m = 0.0f;
            this.e = obj4;
            this.f = new HashMap();
        }

        public final void a(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.d;
            layoutParams.d = layout.g;
            layoutParams.e = layout.h;
            layoutParams.f = layout.i;
            layoutParams.g = layout.j;
            layoutParams.h = layout.k;
            layoutParams.i = layout.l;
            layoutParams.j = layout.m;
            layoutParams.k = layout.n;
            layoutParams.l = layout.o;
            layoutParams.m = layout.p;
            layoutParams.n = layout.q;
            layoutParams.r = layout.r;
            layoutParams.s = layout.s;
            layoutParams.t = layout.t;
            layoutParams.u = layout.u;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.E;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.F;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.G;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.H;
            layoutParams.z = layout.Q;
            layoutParams.A = layout.P;
            layoutParams.w = layout.M;
            layoutParams.y = layout.O;
            layoutParams.D = layout.v;
            layoutParams.E = layout.w;
            layoutParams.o = layout.y;
            layoutParams.p = layout.z;
            layoutParams.q = layout.A;
            layoutParams.F = layout.x;
            layoutParams.S = layout.B;
            layoutParams.T = layout.C;
            layoutParams.H = layout.S;
            layoutParams.G = layout.T;
            layoutParams.J = layout.V;
            layoutParams.I = layout.U;
            layoutParams.V = layout.k0;
            layoutParams.W = layout.l0;
            layoutParams.K = layout.W;
            layoutParams.L = layout.X;
            layoutParams.O = layout.Y;
            layoutParams.P = layout.Z;
            layoutParams.M = layout.a0;
            layoutParams.N = layout.b0;
            layoutParams.Q = layout.c0;
            layoutParams.R = layout.d0;
            layoutParams.U = layout.D;
            layoutParams.f580c = layout.f;
            layoutParams.f579a = layout.d;
            layoutParams.b = layout.e;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.b;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.f597c;
            String str = layout.j0;
            if (str != null) {
                layoutParams.X = str;
            }
            layoutParams.Y = layout.n0;
            layoutParams.setMarginStart(layout.J);
            layoutParams.setMarginEnd(layout.I);
            layoutParams.a();
        }

        public final void b(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f592a = i;
            int i2 = layoutParams.d;
            Layout layout = this.d;
            layout.g = i2;
            layout.h = layoutParams.e;
            layout.i = layoutParams.f;
            layout.j = layoutParams.g;
            layout.k = layoutParams.h;
            layout.l = layoutParams.i;
            layout.m = layoutParams.j;
            layout.n = layoutParams.k;
            layout.o = layoutParams.l;
            layout.p = layoutParams.m;
            layout.q = layoutParams.n;
            layout.r = layoutParams.r;
            layout.s = layoutParams.s;
            layout.t = layoutParams.t;
            layout.u = layoutParams.u;
            layout.v = layoutParams.D;
            layout.w = layoutParams.E;
            layout.x = layoutParams.F;
            layout.y = layoutParams.o;
            layout.z = layoutParams.p;
            layout.A = layoutParams.q;
            layout.B = layoutParams.S;
            layout.C = layoutParams.T;
            layout.D = layoutParams.U;
            layout.f = layoutParams.f580c;
            layout.d = layoutParams.f579a;
            layout.e = layoutParams.b;
            layout.b = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            layout.f597c = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            layout.E = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            layout.F = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            layout.G = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout.H = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            layout.K = layoutParams.C;
            layout.S = layoutParams.H;
            layout.T = layoutParams.G;
            layout.V = layoutParams.J;
            layout.U = layoutParams.I;
            layout.k0 = layoutParams.V;
            layout.l0 = layoutParams.W;
            layout.W = layoutParams.K;
            layout.X = layoutParams.L;
            layout.Y = layoutParams.O;
            layout.Z = layoutParams.P;
            layout.a0 = layoutParams.M;
            layout.b0 = layoutParams.N;
            layout.c0 = layoutParams.Q;
            layout.d0 = layoutParams.R;
            layout.j0 = layoutParams.X;
            layout.M = layoutParams.w;
            layout.O = layoutParams.y;
            layout.L = layoutParams.v;
            layout.N = layoutParams.x;
            layout.Q = layoutParams.z;
            layout.P = layoutParams.A;
            layout.R = layoutParams.B;
            layout.n0 = layoutParams.Y;
            layout.I = layoutParams.getMarginEnd();
            layout.J = layoutParams.getMarginStart();
        }

        public final void c(int i, Constraints.LayoutParams layoutParams) {
            b(i, layoutParams);
            this.b.f601c = layoutParams.q0;
            float f = layoutParams.t0;
            Transform transform = this.e;
            transform.f602a = f;
            transform.b = layoutParams.u0;
            transform.f603c = layoutParams.v0;
            transform.d = layoutParams.w0;
            transform.e = layoutParams.x0;
            transform.f = layoutParams.y0;
            transform.g = layoutParams.z0;
            transform.i = layoutParams.A0;
            transform.j = layoutParams.B0;
            transform.k = layoutParams.C0;
            transform.m = layoutParams.s0;
            transform.l = layoutParams.r0;
        }

        public final Object clone() {
            Constraint constraint = new Constraint();
            Layout layout = constraint.d;
            layout.getClass();
            Layout layout2 = this.d;
            layout.f596a = layout2.f596a;
            layout.b = layout2.b;
            layout.f597c = layout2.f597c;
            layout.d = layout2.d;
            layout.e = layout2.e;
            layout.f = layout2.f;
            layout.g = layout2.g;
            layout.h = layout2.h;
            layout.i = layout2.i;
            layout.j = layout2.j;
            layout.k = layout2.k;
            layout.l = layout2.l;
            layout.m = layout2.m;
            layout.n = layout2.n;
            layout.o = layout2.o;
            layout.p = layout2.p;
            layout.q = layout2.q;
            layout.r = layout2.r;
            layout.s = layout2.s;
            layout.t = layout2.t;
            layout.u = layout2.u;
            layout.v = layout2.v;
            layout.w = layout2.w;
            layout.x = layout2.x;
            layout.y = layout2.y;
            layout.z = layout2.z;
            layout.A = layout2.A;
            layout.B = layout2.B;
            layout.C = layout2.C;
            layout.D = layout2.D;
            layout.E = layout2.E;
            layout.F = layout2.F;
            layout.G = layout2.G;
            layout.H = layout2.H;
            layout.I = layout2.I;
            layout.J = layout2.J;
            layout.K = layout2.K;
            layout.L = layout2.L;
            layout.M = layout2.M;
            layout.N = layout2.N;
            layout.O = layout2.O;
            layout.P = layout2.P;
            layout.Q = layout2.Q;
            layout.R = layout2.R;
            layout.S = layout2.S;
            layout.T = layout2.T;
            layout.U = layout2.U;
            layout.V = layout2.V;
            layout.W = layout2.W;
            layout.X = layout2.X;
            layout.Y = layout2.Y;
            layout.Z = layout2.Z;
            layout.a0 = layout2.a0;
            layout.b0 = layout2.b0;
            layout.c0 = layout2.c0;
            layout.d0 = layout2.d0;
            layout.e0 = layout2.e0;
            layout.f0 = layout2.f0;
            layout.g0 = layout2.g0;
            layout.j0 = layout2.j0;
            int[] iArr = layout2.h0;
            if (iArr != null) {
                layout.h0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                layout.h0 = null;
            }
            layout.i0 = layout2.i0;
            layout.k0 = layout2.k0;
            layout.l0 = layout2.l0;
            layout.m0 = layout2.m0;
            layout.n0 = layout2.n0;
            Motion motion = constraint.f593c;
            motion.getClass();
            Motion motion2 = this.f593c;
            motion2.getClass();
            motion.f598a = motion2.f598a;
            motion.f599c = motion2.f599c;
            motion.d = motion2.d;
            motion.e = motion2.e;
            motion.g = motion2.g;
            motion.f = motion2.f;
            PropertySet propertySet = this.b;
            int i = propertySet.f600a;
            PropertySet propertySet2 = constraint.b;
            propertySet2.f600a = i;
            propertySet2.f601c = propertySet.f601c;
            propertySet2.d = propertySet.d;
            propertySet2.b = propertySet.b;
            Transform transform = constraint.e;
            transform.getClass();
            Transform transform2 = this.e;
            transform2.getClass();
            transform.f602a = transform2.f602a;
            transform.b = transform2.b;
            transform.f603c = transform2.f603c;
            transform.d = transform2.d;
            transform.e = transform2.e;
            transform.f = transform2.f;
            transform.g = transform2.g;
            transform.h = transform2.h;
            transform.i = transform2.i;
            transform.j = transform2.j;
            transform.k = transform2.k;
            transform.l = transform2.l;
            transform.m = transform2.m;
            constraint.f592a = this.f592a;
            return constraint;
        }
    }

    /* loaded from: classes.dex */
    public static class Layout {
        public static final SparseIntArray o0;
        public float A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public float S;
        public float T;
        public int U;
        public int V;
        public int W;
        public int X;
        public int Y;
        public int Z;

        /* renamed from: a, reason: collision with root package name */
        public boolean f596a;
        public int a0;
        public int b;
        public int b0;

        /* renamed from: c, reason: collision with root package name */
        public int f597c;
        public float c0;
        public int d;
        public float d0;
        public int e;
        public int e0;
        public float f;
        public int f0;
        public int g;
        public int g0;
        public int h;
        public int[] h0;
        public int i;
        public String i0;
        public int j;
        public String j0;
        public int k;
        public boolean k0;
        public int l;
        public boolean l0;
        public int m;
        public boolean m0;
        public int n;
        public int n0;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public float v;
        public float w;
        public String x;
        public int y;
        public int z;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            o0 = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            sparseIntArray.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            sparseIntArray.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            sparseIntArray.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            sparseIntArray.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            sparseIntArray.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            sparseIntArray.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            sparseIntArray.append(R.styleable.Layout_android_orientation, 26);
            sparseIntArray.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            sparseIntArray.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            sparseIntArray.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            sparseIntArray.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginTop, 16);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginRight, 14);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginStart, 15);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            sparseIntArray.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintTop_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintRight_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBaseline_creator, 76);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginLeft, 23);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginRight, 27);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginStart, 30);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginEnd, 8);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginTop, 33);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginBottom, 2);
            sparseIntArray.append(R.styleable.Layout_android_layout_width, 22);
            sparseIntArray.append(R.styleable.Layout_android_layout_height, 21);
            sparseIntArray.append(R.styleable.Layout_layout_constraintWidth, 41);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHeight, 42);
            sparseIntArray.append(R.styleable.Layout_layout_constrainedWidth, 41);
            sparseIntArray.append(R.styleable.Layout_layout_constrainedHeight, 42);
            sparseIntArray.append(R.styleable.Layout_layout_wrapBehaviorInParent, 97);
            sparseIntArray.append(R.styleable.Layout_layout_constraintCircle, 61);
            sparseIntArray.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            sparseIntArray.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            sparseIntArray.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            sparseIntArray.append(R.styleable.Layout_chainUseRtl, 71);
            sparseIntArray.append(R.styleable.Layout_barrierDirection, 72);
            sparseIntArray.append(R.styleable.Layout_barrierMargin, 73);
            sparseIntArray.append(R.styleable.Layout_constraint_referenced_ids, 74);
            sparseIntArray.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                SparseIntArray sparseIntArray = o0;
                int i2 = sparseIntArray.get(index);
                if (i2 != 80) {
                    if (i2 != 81) {
                        if (i2 != 97) {
                            switch (i2) {
                                case 1:
                                    this.o = ConstraintSet.f(obtainStyledAttributes, index, this.o);
                                    break;
                                case 2:
                                    this.H = obtainStyledAttributes.getDimensionPixelSize(index, this.H);
                                    break;
                                case 3:
                                    this.n = ConstraintSet.f(obtainStyledAttributes, index, this.n);
                                    break;
                                case 4:
                                    this.m = ConstraintSet.f(obtainStyledAttributes, index, this.m);
                                    break;
                                case 5:
                                    this.x = obtainStyledAttributes.getString(index);
                                    break;
                                case 6:
                                    this.B = obtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                                    break;
                                case 7:
                                    this.C = obtainStyledAttributes.getDimensionPixelOffset(index, this.C);
                                    break;
                                case 8:
                                    this.I = obtainStyledAttributes.getDimensionPixelSize(index, this.I);
                                    break;
                                case 9:
                                    this.u = ConstraintSet.f(obtainStyledAttributes, index, this.u);
                                    break;
                                case 10:
                                    this.t = ConstraintSet.f(obtainStyledAttributes, index, this.t);
                                    break;
                                case 11:
                                    this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                                    break;
                                case 12:
                                    this.P = obtainStyledAttributes.getDimensionPixelSize(index, this.P);
                                    break;
                                case 13:
                                    this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                                    break;
                                case 14:
                                    this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                                    break;
                                case 15:
                                    this.Q = obtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                                    break;
                                case 16:
                                    this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                                    break;
                                case 17:
                                    this.d = obtainStyledAttributes.getDimensionPixelOffset(index, this.d);
                                    break;
                                case 18:
                                    this.e = obtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                                    break;
                                case 19:
                                    this.f = obtainStyledAttributes.getFloat(index, this.f);
                                    break;
                                case 20:
                                    this.v = obtainStyledAttributes.getFloat(index, this.v);
                                    break;
                                case 21:
                                    this.f597c = obtainStyledAttributes.getLayoutDimension(index, this.f597c);
                                    break;
                                case 22:
                                    this.b = obtainStyledAttributes.getLayoutDimension(index, this.b);
                                    break;
                                case ConnectionResult.API_DISABLED /* 23 */:
                                    this.E = obtainStyledAttributes.getDimensionPixelSize(index, this.E);
                                    break;
                                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                                    this.g = ConstraintSet.f(obtainStyledAttributes, index, this.g);
                                    break;
                                case 25:
                                    this.h = ConstraintSet.f(obtainStyledAttributes, index, this.h);
                                    break;
                                case 26:
                                    this.D = obtainStyledAttributes.getInt(index, this.D);
                                    break;
                                case 27:
                                    this.F = obtainStyledAttributes.getDimensionPixelSize(index, this.F);
                                    break;
                                case 28:
                                    this.i = ConstraintSet.f(obtainStyledAttributes, index, this.i);
                                    break;
                                case 29:
                                    this.j = ConstraintSet.f(obtainStyledAttributes, index, this.j);
                                    break;
                                case 30:
                                    this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                                    break;
                                case 31:
                                    this.r = ConstraintSet.f(obtainStyledAttributes, index, this.r);
                                    break;
                                case 32:
                                    this.s = ConstraintSet.f(obtainStyledAttributes, index, this.s);
                                    break;
                                case 33:
                                    this.G = obtainStyledAttributes.getDimensionPixelSize(index, this.G);
                                    break;
                                case 34:
                                    this.l = ConstraintSet.f(obtainStyledAttributes, index, this.l);
                                    break;
                                case 35:
                                    this.k = ConstraintSet.f(obtainStyledAttributes, index, this.k);
                                    break;
                                case 36:
                                    this.w = obtainStyledAttributes.getFloat(index, this.w);
                                    break;
                                case 37:
                                    this.T = obtainStyledAttributes.getFloat(index, this.T);
                                    break;
                                case 38:
                                    this.S = obtainStyledAttributes.getFloat(index, this.S);
                                    break;
                                case 39:
                                    this.U = obtainStyledAttributes.getInt(index, this.U);
                                    break;
                                case 40:
                                    this.V = obtainStyledAttributes.getInt(index, this.V);
                                    break;
                                case 41:
                                    ConstraintSet.g(this, obtainStyledAttributes, index, 0);
                                    break;
                                case 42:
                                    ConstraintSet.g(this, obtainStyledAttributes, index, 1);
                                    break;
                                default:
                                    switch (i2) {
                                        case 54:
                                            this.W = obtainStyledAttributes.getInt(index, this.W);
                                            break;
                                        case 55:
                                            this.X = obtainStyledAttributes.getInt(index, this.X);
                                            break;
                                        case 56:
                                            this.Y = obtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                            break;
                                        case 57:
                                            this.Z = obtainStyledAttributes.getDimensionPixelSize(index, this.Z);
                                            break;
                                        case 58:
                                            this.a0 = obtainStyledAttributes.getDimensionPixelSize(index, this.a0);
                                            break;
                                        case 59:
                                            this.b0 = obtainStyledAttributes.getDimensionPixelSize(index, this.b0);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 61:
                                                    this.y = ConstraintSet.f(obtainStyledAttributes, index, this.y);
                                                    break;
                                                case 62:
                                                    this.z = obtainStyledAttributes.getDimensionPixelSize(index, this.z);
                                                    break;
                                                case 63:
                                                    this.A = obtainStyledAttributes.getFloat(index, this.A);
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 69:
                                                            this.c0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                            break;
                                                        case 70:
                                                            this.d0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                            break;
                                                        case 71:
                                                            Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                            break;
                                                        case 72:
                                                            this.e0 = obtainStyledAttributes.getInt(index, this.e0);
                                                            break;
                                                        case 73:
                                                            this.f0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f0);
                                                            break;
                                                        case 74:
                                                            this.i0 = obtainStyledAttributes.getString(index);
                                                            break;
                                                        case 75:
                                                            this.m0 = obtainStyledAttributes.getBoolean(index, this.m0);
                                                            break;
                                                        case 76:
                                                            Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                            break;
                                                        case 77:
                                                            this.j0 = obtainStyledAttributes.getString(index);
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 91:
                                                                    this.p = ConstraintSet.f(obtainStyledAttributes, index, this.p);
                                                                    break;
                                                                case 92:
                                                                    this.q = ConstraintSet.f(obtainStyledAttributes, index, this.q);
                                                                    break;
                                                                case 93:
                                                                    this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                                                                    break;
                                                                case 94:
                                                                    this.R = obtainStyledAttributes.getDimensionPixelSize(index, this.R);
                                                                    break;
                                                                default:
                                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                                    break;
                                                            }
                                                    }
                                            }
                                    }
                            }
                        } else {
                            this.n0 = obtainStyledAttributes.getInt(index, this.n0);
                        }
                    } else {
                        this.l0 = obtainStyledAttributes.getBoolean(index, this.l0);
                    }
                } else {
                    this.k0 = obtainStyledAttributes.getBoolean(index, this.k0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public static class Motion {
        public static final SparseIntArray l;

        /* renamed from: a, reason: collision with root package name */
        public int f598a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public String f599c;
        public int d;
        public int e;
        public float f;
        public float g;
        public float h;
        public int i;
        public String j;
        public int k;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            l = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            sparseIntArray.append(R.styleable.Motion_pathMotionArc, 2);
            sparseIntArray.append(R.styleable.Motion_transitionEasing, 3);
            sparseIntArray.append(R.styleable.Motion_drawPath, 4);
            sparseIntArray.append(R.styleable.Motion_animateRelativeTo, 5);
            sparseIntArray.append(R.styleable.Motion_animateCircleAngleTo, 6);
            sparseIntArray.append(R.styleable.Motion_motionStagger, 7);
            sparseIntArray.append(R.styleable.Motion_quantizeMotionSteps, 8);
            sparseIntArray.append(R.styleable.Motion_quantizeMotionPhase, 9);
            sparseIntArray.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (l.get(index)) {
                    case 1:
                        this.g = obtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 2:
                        this.d = obtainStyledAttributes.getInt(index, this.d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f599c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f599c = Easing.b[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f598a = ConstraintSet.f(obtainStyledAttributes, index, this.f598a);
                        break;
                    case 6:
                        this.b = obtainStyledAttributes.getInteger(index, this.b);
                        break;
                    case 7:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 8:
                        this.i = obtainStyledAttributes.getInteger(index, this.i);
                        break;
                    case 9:
                        this.h = obtainStyledAttributes.getFloat(index, this.h);
                        break;
                    case 10:
                        int i2 = obtainStyledAttributes.peekValue(index).type;
                        if (i2 == 1) {
                            this.k = obtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else if (i2 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            this.j = string;
                            if (string.indexOf("/") > 0) {
                                this.k = obtainStyledAttributes.getResourceId(index, -1);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index, this.k);
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public static class PropertySet {

        /* renamed from: a, reason: collision with root package name */
        public int f600a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public float f601c;
        public float d;

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.f601c = obtainStyledAttributes.getFloat(index, this.f601c);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    int i2 = obtainStyledAttributes.getInt(index, this.f600a);
                    this.f600a = i2;
                    this.f600a = ConstraintSet.d[i2];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.b = obtainStyledAttributes.getInt(index, this.b);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.d = obtainStyledAttributes.getFloat(index, this.d);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public static class Transform {
        public static final SparseIntArray n;

        /* renamed from: a, reason: collision with root package name */
        public float f602a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f603c;
        public float d;
        public float e;
        public float f;
        public float g;
        public int h;
        public float i;
        public float j;
        public float k;
        public boolean l;
        public float m;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            n = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            sparseIntArray.append(R.styleable.Transform_android_rotationX, 2);
            sparseIntArray.append(R.styleable.Transform_android_rotationY, 3);
            sparseIntArray.append(R.styleable.Transform_android_scaleX, 4);
            sparseIntArray.append(R.styleable.Transform_android_scaleY, 5);
            sparseIntArray.append(R.styleable.Transform_android_transformPivotX, 6);
            sparseIntArray.append(R.styleable.Transform_android_transformPivotY, 7);
            sparseIntArray.append(R.styleable.Transform_android_translationX, 8);
            sparseIntArray.append(R.styleable.Transform_android_translationY, 9);
            sparseIntArray.append(R.styleable.Transform_android_translationZ, 10);
            sparseIntArray.append(R.styleable.Transform_android_elevation, 11);
            sparseIntArray.append(R.styleable.Transform_transformPivotTarget, 12);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (n.get(index)) {
                    case 1:
                        this.f602a = obtainStyledAttributes.getFloat(index, this.f602a);
                        break;
                    case 2:
                        this.b = obtainStyledAttributes.getFloat(index, this.b);
                        break;
                    case 3:
                        this.f603c = obtainStyledAttributes.getFloat(index, this.f603c);
                        break;
                    case 4:
                        this.d = obtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case 5:
                        this.e = obtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case 6:
                        this.f = obtainStyledAttributes.getDimension(index, this.f);
                        break;
                    case 7:
                        this.g = obtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 8:
                        this.i = obtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case 9:
                        this.j = obtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 10:
                        this.k = obtainStyledAttributes.getDimension(index, this.k);
                        break;
                    case 11:
                        this.l = true;
                        this.m = obtainStyledAttributes.getDimension(index, this.m);
                        break;
                    case 12:
                        this.h = ConstraintSet.f(obtainStyledAttributes, index, this.h);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public class WriteJsonEngine {
    }

    /* loaded from: classes.dex */
    public class WriteXmlEngine {
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f = sparseIntArray2;
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        sparseIntArray.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        sparseIntArray.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        sparseIntArray.append(R.styleable.Constraint_android_orientation, 27);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginRight, 28);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginStart, 31);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginTop, 34);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        sparseIntArray.append(R.styleable.Constraint_android_layout_width, 23);
        sparseIntArray.append(R.styleable.Constraint_android_layout_height, 21);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth, 95);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight, 96);
        sparseIntArray.append(R.styleable.Constraint_android_visibility, 22);
        sparseIntArray.append(R.styleable.Constraint_android_alpha, 43);
        sparseIntArray.append(R.styleable.Constraint_android_elevation, 44);
        sparseIntArray.append(R.styleable.Constraint_android_rotationX, 45);
        sparseIntArray.append(R.styleable.Constraint_android_rotationY, 46);
        sparseIntArray.append(R.styleable.Constraint_android_rotation, 60);
        sparseIntArray.append(R.styleable.Constraint_android_scaleX, 47);
        sparseIntArray.append(R.styleable.Constraint_android_scaleY, 48);
        sparseIntArray.append(R.styleable.Constraint_android_transformPivotX, 49);
        sparseIntArray.append(R.styleable.Constraint_android_transformPivotY, 50);
        sparseIntArray.append(R.styleable.Constraint_android_translationX, 51);
        sparseIntArray.append(R.styleable.Constraint_android_translationY, 52);
        sparseIntArray.append(R.styleable.Constraint_android_translationZ, 53);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircle, 61);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        sparseIntArray.append(R.styleable.Constraint_animateRelativeTo, 64);
        sparseIntArray.append(R.styleable.Constraint_transitionEasing, 65);
        sparseIntArray.append(R.styleable.Constraint_drawPath, 66);
        sparseIntArray.append(R.styleable.Constraint_transitionPathRotate, 67);
        sparseIntArray.append(R.styleable.Constraint_motionStagger, 79);
        sparseIntArray.append(R.styleable.Constraint_android_id, 38);
        sparseIntArray.append(R.styleable.Constraint_motionProgress, 68);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        sparseIntArray.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        sparseIntArray.append(R.styleable.Constraint_chainUseRtl, 71);
        sparseIntArray.append(R.styleable.Constraint_barrierDirection, 72);
        sparseIntArray.append(R.styleable.Constraint_barrierMargin, 73);
        sparseIntArray.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        sparseIntArray.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        sparseIntArray.append(R.styleable.Constraint_pathMotionArc, 76);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTag, 77);
        sparseIntArray.append(R.styleable.Constraint_visibilityMode, 78);
        sparseIntArray.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        sparseIntArray.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        sparseIntArray.append(R.styleable.Constraint_polarRelativeTo, 82);
        sparseIntArray.append(R.styleable.Constraint_transformPivotTarget, 83);
        sparseIntArray.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        sparseIntArray.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        sparseIntArray.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_orientation, 27);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_visibility, 22);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_alpha, 43);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_elevation, 44);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_rotation, 60);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_translationX, 51);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_translationY, 52);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        sparseIntArray2.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        sparseIntArray2.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        sparseIntArray2.append(R.styleable.ConstraintOverride_drawPath, 66);
        sparseIntArray2.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        sparseIntArray2.append(R.styleable.ConstraintOverride_motionStagger, 79);
        sparseIntArray2.append(R.styleable.ConstraintOverride_android_id, 38);
        sparseIntArray2.append(R.styleable.ConstraintOverride_motionTarget, 98);
        sparseIntArray2.append(R.styleable.ConstraintOverride_motionProgress, 68);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        sparseIntArray2.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        sparseIntArray2.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        sparseIntArray2.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        sparseIntArray2.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        sparseIntArray2.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        sparseIntArray2.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        sparseIntArray2.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        sparseIntArray2.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        sparseIntArray2.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        sparseIntArray2.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        sparseIntArray2.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        sparseIntArray2.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        sparseIntArray2.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    public static int[] c(Barrier barrier, String str) {
        int i;
        String[] split2 = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[split2.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split2.length) {
            String trim = split2[i2].trim();
            Object obj = null;
            try {
                i = R.id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                if (a.A(trim)) {
                    HashMap hashMap = constraintLayout.q;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.q.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        if (i3 != split2.length) {
            return Arrays.copyOf(iArr, i3);
        }
        return iArr;
    }

    /* JADX WARN: Type inference failed for: r6v189, types: [androidx.constraintlayout.widget.ConstraintSet$Constraint$Delta, java.lang.Object] */
    public static Constraint d(Context context, AttributeSet attributeSet, boolean z) {
        int[] iArr;
        int i;
        int i2;
        Constraint constraint = new Constraint();
        if (z) {
            iArr = R.styleable.ConstraintOverride;
        } else {
            iArr = R.styleable.Constraint;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        PropertySet propertySet = constraint.b;
        Transform transform = constraint.e;
        Motion motion = constraint.f593c;
        Layout layout = constraint.d;
        int[] iArr2 = d;
        String[] strArr = Easing.b;
        SparseIntArray sparseIntArray = e;
        if (z) {
            ?? obj = new Object();
            obj.f594a = new int[10];
            obj.b = new int[10];
            obj.f595c = 0;
            obj.d = new int[10];
            obj.e = new float[10];
            obj.f = 0;
            obj.g = new int[5];
            obj.h = new String[5];
            obj.i = 0;
            obj.j = new int[4];
            obj.k = new boolean[4];
            obj.l = 0;
            motion.getClass();
            layout.getClass();
            transform.getClass();
            int i3 = 0;
            for (int indexCount = obtainStyledAttributes.getIndexCount(); i3 < indexCount; indexCount = i2) {
                int index = obtainStyledAttributes.getIndex(i3);
                int i4 = i3;
                switch (f.get(index)) {
                    case 2:
                        i2 = indexCount;
                        obj.b(2, obtainStyledAttributes.getDimensionPixelSize(index, layout.H));
                        continue;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb = new StringBuilder("Unknown attribute 0x");
                        i2 = indexCount;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        break;
                    case 5:
                        i2 = indexCount;
                        obj.c(5, obtainStyledAttributes.getString(index));
                        continue;
                    case 6:
                        i2 = indexCount;
                        obj.b(6, obtainStyledAttributes.getDimensionPixelOffset(index, layout.B));
                        break;
                    case 7:
                        i2 = indexCount;
                        obj.b(7, obtainStyledAttributes.getDimensionPixelOffset(index, layout.C));
                        break;
                    case 8:
                        i2 = indexCount;
                        obj.b(8, obtainStyledAttributes.getDimensionPixelSize(index, layout.I));
                        break;
                    case 11:
                        i2 = indexCount;
                        obj.b(11, obtainStyledAttributes.getDimensionPixelSize(index, layout.O));
                        break;
                    case 12:
                        i2 = indexCount;
                        obj.b(12, obtainStyledAttributes.getDimensionPixelSize(index, layout.P));
                        break;
                    case 13:
                        i2 = indexCount;
                        obj.b(13, obtainStyledAttributes.getDimensionPixelSize(index, layout.L));
                        break;
                    case 14:
                        i2 = indexCount;
                        obj.b(14, obtainStyledAttributes.getDimensionPixelSize(index, layout.N));
                        break;
                    case 15:
                        i2 = indexCount;
                        obj.b(15, obtainStyledAttributes.getDimensionPixelSize(index, layout.Q));
                        break;
                    case 16:
                        i2 = indexCount;
                        obj.b(16, obtainStyledAttributes.getDimensionPixelSize(index, layout.M));
                        break;
                    case 17:
                        i2 = indexCount;
                        obj.b(17, obtainStyledAttributes.getDimensionPixelOffset(index, layout.d));
                        break;
                    case 18:
                        i2 = indexCount;
                        obj.b(18, obtainStyledAttributes.getDimensionPixelOffset(index, layout.e));
                        break;
                    case 19:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, layout.f), 19);
                        break;
                    case 20:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, layout.v), 20);
                        break;
                    case 21:
                        i2 = indexCount;
                        obj.b(21, obtainStyledAttributes.getLayoutDimension(index, layout.f597c));
                        break;
                    case 22:
                        i2 = indexCount;
                        obj.b(22, iArr2[obtainStyledAttributes.getInt(index, propertySet.f600a)]);
                        break;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        i2 = indexCount;
                        obj.b(23, obtainStyledAttributes.getLayoutDimension(index, layout.b));
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        i2 = indexCount;
                        obj.b(24, obtainStyledAttributes.getDimensionPixelSize(index, layout.E));
                        break;
                    case 27:
                        i2 = indexCount;
                        obj.b(27, obtainStyledAttributes.getInt(index, layout.D));
                        break;
                    case 28:
                        i2 = indexCount;
                        obj.b(28, obtainStyledAttributes.getDimensionPixelSize(index, layout.F));
                        break;
                    case 31:
                        i2 = indexCount;
                        obj.b(31, obtainStyledAttributes.getDimensionPixelSize(index, layout.J));
                        break;
                    case 34:
                        i2 = indexCount;
                        obj.b(34, obtainStyledAttributes.getDimensionPixelSize(index, layout.G));
                        break;
                    case 37:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, layout.w), 37);
                        break;
                    case 38:
                        i2 = indexCount;
                        int resourceId = obtainStyledAttributes.getResourceId(index, constraint.f592a);
                        constraint.f592a = resourceId;
                        obj.b(38, resourceId);
                        break;
                    case 39:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, layout.T), 39);
                        break;
                    case 40:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, layout.S), 40);
                        break;
                    case 41:
                        i2 = indexCount;
                        obj.b(41, obtainStyledAttributes.getInt(index, layout.U));
                        break;
                    case 42:
                        i2 = indexCount;
                        obj.b(42, obtainStyledAttributes.getInt(index, layout.V));
                        break;
                    case 43:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, propertySet.f601c), 43);
                        break;
                    case 44:
                        i2 = indexCount;
                        obj.d(44, true);
                        obj.a(obtainStyledAttributes.getDimension(index, transform.m), 44);
                        break;
                    case 45:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, transform.b), 45);
                        break;
                    case 46:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, transform.f603c), 46);
                        break;
                    case 47:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, transform.d), 47);
                        break;
                    case 48:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, transform.e), 48);
                        break;
                    case 49:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getDimension(index, transform.f), 49);
                        break;
                    case 50:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getDimension(index, transform.g), 50);
                        break;
                    case 51:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getDimension(index, transform.i), 51);
                        break;
                    case 52:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getDimension(index, transform.j), 52);
                        break;
                    case 53:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getDimension(index, transform.k), 53);
                        break;
                    case 54:
                        i2 = indexCount;
                        obj.b(54, obtainStyledAttributes.getInt(index, layout.W));
                        break;
                    case 55:
                        i2 = indexCount;
                        obj.b(55, obtainStyledAttributes.getInt(index, layout.X));
                        break;
                    case 56:
                        i2 = indexCount;
                        obj.b(56, obtainStyledAttributes.getDimensionPixelSize(index, layout.Y));
                        break;
                    case 57:
                        i2 = indexCount;
                        obj.b(57, obtainStyledAttributes.getDimensionPixelSize(index, layout.Z));
                        break;
                    case 58:
                        i2 = indexCount;
                        obj.b(58, obtainStyledAttributes.getDimensionPixelSize(index, layout.a0));
                        break;
                    case 59:
                        i2 = indexCount;
                        obj.b(59, obtainStyledAttributes.getDimensionPixelSize(index, layout.b0));
                        break;
                    case 60:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, transform.f602a), 60);
                        break;
                    case 62:
                        i2 = indexCount;
                        obj.b(62, obtainStyledAttributes.getDimensionPixelSize(index, layout.z));
                        break;
                    case 63:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, layout.A), 63);
                        break;
                    case 64:
                        i2 = indexCount;
                        obj.b(64, f(obtainStyledAttributes, index, motion.f598a));
                        break;
                    case 65:
                        i2 = indexCount;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obj.c(65, obtainStyledAttributes.getString(index));
                            break;
                        } else {
                            obj.c(65, strArr[obtainStyledAttributes.getInteger(index, 0)]);
                            break;
                        }
                    case 66:
                        i2 = indexCount;
                        obj.b(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, motion.g), 67);
                        break;
                    case 68:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, propertySet.d), 68);
                        break;
                    case 69:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, 1.0f), 69);
                        break;
                    case 70:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, 1.0f), 70);
                        break;
                    case 71:
                        i2 = indexCount;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        i2 = indexCount;
                        obj.b(72, obtainStyledAttributes.getInt(index, layout.e0));
                        break;
                    case 73:
                        i2 = indexCount;
                        obj.b(73, obtainStyledAttributes.getDimensionPixelSize(index, layout.f0));
                        break;
                    case 74:
                        i2 = indexCount;
                        obj.c(74, obtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        i2 = indexCount;
                        obj.d(75, obtainStyledAttributes.getBoolean(index, layout.m0));
                        break;
                    case 76:
                        i2 = indexCount;
                        obj.b(76, obtainStyledAttributes.getInt(index, motion.d));
                        break;
                    case 77:
                        i2 = indexCount;
                        obj.c(77, obtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        i2 = indexCount;
                        obj.b(78, obtainStyledAttributes.getInt(index, propertySet.b));
                        break;
                    case 79:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, motion.f), 79);
                        break;
                    case 80:
                        i2 = indexCount;
                        obj.d(80, obtainStyledAttributes.getBoolean(index, layout.k0));
                        break;
                    case 81:
                        i2 = indexCount;
                        obj.d(81, obtainStyledAttributes.getBoolean(index, layout.l0));
                        break;
                    case 82:
                        i2 = indexCount;
                        obj.b(82, obtainStyledAttributes.getInteger(index, motion.b));
                        break;
                    case 83:
                        i2 = indexCount;
                        obj.b(83, f(obtainStyledAttributes, index, transform.h));
                        break;
                    case 84:
                        i2 = indexCount;
                        obj.b(84, obtainStyledAttributes.getInteger(index, motion.i));
                        break;
                    case 85:
                        i2 = indexCount;
                        obj.a(obtainStyledAttributes.getFloat(index, motion.h), 85);
                        break;
                    case 86:
                        i2 = indexCount;
                        int i5 = obtainStyledAttributes.peekValue(index).type;
                        if (i5 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            motion.k = resourceId2;
                            obj.b(89, resourceId2);
                            if (motion.k != -1) {
                                obj.b(88, -2);
                                break;
                            }
                        } else if (i5 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            motion.j = string;
                            obj.c(90, string);
                            if (motion.j.indexOf("/") > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                                motion.k = resourceId3;
                                obj.b(89, resourceId3);
                                obj.b(88, -2);
                                break;
                            } else {
                                obj.b(88, -1);
                                break;
                            }
                        } else {
                            obj.b(88, obtainStyledAttributes.getInteger(index, motion.k));
                            break;
                        }
                        break;
                    case 87:
                        i2 = indexCount;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 93:
                        i2 = indexCount;
                        obj.b(93, obtainStyledAttributes.getDimensionPixelSize(index, layout.K));
                        break;
                    case 94:
                        i2 = indexCount;
                        obj.b(94, obtainStyledAttributes.getDimensionPixelSize(index, layout.R));
                        break;
                    case 95:
                        i2 = indexCount;
                        g(obj, obtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        i2 = indexCount;
                        g(obj, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        i2 = indexCount;
                        obj.b(97, obtainStyledAttributes.getInt(index, layout.n0));
                        break;
                    case 98:
                        i2 = indexCount;
                        int i6 = MotionLayout.i0;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            constraint.f592a = obtainStyledAttributes.getResourceId(index, constraint.f592a);
                            break;
                        }
                }
                i3 = i4 + 1;
            }
        } else {
            int i7 = 0;
            for (int indexCount2 = obtainStyledAttributes.getIndexCount(); i7 < indexCount2; indexCount2 = i) {
                int index2 = obtainStyledAttributes.getIndex(i7);
                if (index2 != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index2 && R.styleable.Constraint_android_layout_marginEnd != index2) {
                    motion.getClass();
                    layout.getClass();
                    transform.getClass();
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        i = indexCount2;
                        layout.o = f(obtainStyledAttributes, index2, layout.o);
                        continue;
                    case 2:
                        i = indexCount2;
                        layout.H = obtainStyledAttributes.getDimensionPixelSize(index2, layout.H);
                        continue;
                    case 3:
                        i = indexCount2;
                        layout.n = f(obtainStyledAttributes, index2, layout.n);
                        continue;
                    case 4:
                        i = indexCount2;
                        layout.m = f(obtainStyledAttributes, index2, layout.m);
                        continue;
                    case 5:
                        i = indexCount2;
                        layout.x = obtainStyledAttributes.getString(index2);
                        continue;
                    case 6:
                        i = indexCount2;
                        layout.B = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.B);
                        continue;
                    case 7:
                        i = indexCount2;
                        layout.C = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.C);
                        continue;
                    case 8:
                        i = indexCount2;
                        layout.I = obtainStyledAttributes.getDimensionPixelSize(index2, layout.I);
                        continue;
                    case 9:
                        i = indexCount2;
                        layout.u = f(obtainStyledAttributes, index2, layout.u);
                        continue;
                    case 10:
                        i = indexCount2;
                        layout.t = f(obtainStyledAttributes, index2, layout.t);
                        continue;
                    case 11:
                        i = indexCount2;
                        layout.O = obtainStyledAttributes.getDimensionPixelSize(index2, layout.O);
                        continue;
                    case 12:
                        i = indexCount2;
                        layout.P = obtainStyledAttributes.getDimensionPixelSize(index2, layout.P);
                        continue;
                    case 13:
                        i = indexCount2;
                        layout.L = obtainStyledAttributes.getDimensionPixelSize(index2, layout.L);
                        continue;
                    case 14:
                        i = indexCount2;
                        layout.N = obtainStyledAttributes.getDimensionPixelSize(index2, layout.N);
                        continue;
                    case 15:
                        i = indexCount2;
                        layout.Q = obtainStyledAttributes.getDimensionPixelSize(index2, layout.Q);
                        continue;
                    case 16:
                        i = indexCount2;
                        layout.M = obtainStyledAttributes.getDimensionPixelSize(index2, layout.M);
                        continue;
                    case 17:
                        i = indexCount2;
                        layout.d = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.d);
                        continue;
                    case 18:
                        i = indexCount2;
                        layout.e = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.e);
                        continue;
                    case 19:
                        i = indexCount2;
                        layout.f = obtainStyledAttributes.getFloat(index2, layout.f);
                        continue;
                    case 20:
                        i = indexCount2;
                        layout.v = obtainStyledAttributes.getFloat(index2, layout.v);
                        continue;
                    case 21:
                        i = indexCount2;
                        layout.f597c = obtainStyledAttributes.getLayoutDimension(index2, layout.f597c);
                        continue;
                    case 22:
                        i = indexCount2;
                        int i8 = obtainStyledAttributes.getInt(index2, propertySet.f600a);
                        propertySet.f600a = i8;
                        propertySet.f600a = iArr2[i8];
                        continue;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        i = indexCount2;
                        layout.b = obtainStyledAttributes.getLayoutDimension(index2, layout.b);
                        continue;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        i = indexCount2;
                        layout.E = obtainStyledAttributes.getDimensionPixelSize(index2, layout.E);
                        continue;
                    case 25:
                        i = indexCount2;
                        layout.g = f(obtainStyledAttributes, index2, layout.g);
                        continue;
                    case 26:
                        i = indexCount2;
                        layout.h = f(obtainStyledAttributes, index2, layout.h);
                        continue;
                    case 27:
                        i = indexCount2;
                        layout.D = obtainStyledAttributes.getInt(index2, layout.D);
                        continue;
                    case 28:
                        i = indexCount2;
                        layout.F = obtainStyledAttributes.getDimensionPixelSize(index2, layout.F);
                        continue;
                    case 29:
                        i = indexCount2;
                        layout.i = f(obtainStyledAttributes, index2, layout.i);
                        continue;
                    case 30:
                        i = indexCount2;
                        layout.j = f(obtainStyledAttributes, index2, layout.j);
                        continue;
                    case 31:
                        i = indexCount2;
                        layout.J = obtainStyledAttributes.getDimensionPixelSize(index2, layout.J);
                        continue;
                    case 32:
                        i = indexCount2;
                        layout.r = f(obtainStyledAttributes, index2, layout.r);
                        continue;
                    case 33:
                        i = indexCount2;
                        layout.s = f(obtainStyledAttributes, index2, layout.s);
                        continue;
                    case 34:
                        i = indexCount2;
                        layout.G = obtainStyledAttributes.getDimensionPixelSize(index2, layout.G);
                        continue;
                    case 35:
                        i = indexCount2;
                        layout.l = f(obtainStyledAttributes, index2, layout.l);
                        continue;
                    case 36:
                        i = indexCount2;
                        layout.k = f(obtainStyledAttributes, index2, layout.k);
                        continue;
                    case 37:
                        i = indexCount2;
                        layout.w = obtainStyledAttributes.getFloat(index2, layout.w);
                        continue;
                    case 38:
                        i = indexCount2;
                        constraint.f592a = obtainStyledAttributes.getResourceId(index2, constraint.f592a);
                        continue;
                    case 39:
                        i = indexCount2;
                        layout.T = obtainStyledAttributes.getFloat(index2, layout.T);
                        continue;
                    case 40:
                        i = indexCount2;
                        layout.S = obtainStyledAttributes.getFloat(index2, layout.S);
                        continue;
                    case 41:
                        i = indexCount2;
                        layout.U = obtainStyledAttributes.getInt(index2, layout.U);
                        continue;
                    case 42:
                        i = indexCount2;
                        layout.V = obtainStyledAttributes.getInt(index2, layout.V);
                        continue;
                    case 43:
                        i = indexCount2;
                        propertySet.f601c = obtainStyledAttributes.getFloat(index2, propertySet.f601c);
                        continue;
                    case 44:
                        i = indexCount2;
                        transform.l = true;
                        transform.m = obtainStyledAttributes.getDimension(index2, transform.m);
                        continue;
                    case 45:
                        i = indexCount2;
                        transform.b = obtainStyledAttributes.getFloat(index2, transform.b);
                        continue;
                    case 46:
                        i = indexCount2;
                        transform.f603c = obtainStyledAttributes.getFloat(index2, transform.f603c);
                        continue;
                    case 47:
                        i = indexCount2;
                        transform.d = obtainStyledAttributes.getFloat(index2, transform.d);
                        continue;
                    case 48:
                        i = indexCount2;
                        transform.e = obtainStyledAttributes.getFloat(index2, transform.e);
                        continue;
                    case 49:
                        i = indexCount2;
                        transform.f = obtainStyledAttributes.getDimension(index2, transform.f);
                        continue;
                    case 50:
                        i = indexCount2;
                        transform.g = obtainStyledAttributes.getDimension(index2, transform.g);
                        continue;
                    case 51:
                        i = indexCount2;
                        transform.i = obtainStyledAttributes.getDimension(index2, transform.i);
                        continue;
                    case 52:
                        i = indexCount2;
                        transform.j = obtainStyledAttributes.getDimension(index2, transform.j);
                        continue;
                    case 53:
                        i = indexCount2;
                        transform.k = obtainStyledAttributes.getDimension(index2, transform.k);
                        continue;
                    case 54:
                        i = indexCount2;
                        layout.W = obtainStyledAttributes.getInt(index2, layout.W);
                        continue;
                    case 55:
                        i = indexCount2;
                        layout.X = obtainStyledAttributes.getInt(index2, layout.X);
                        continue;
                    case 56:
                        i = indexCount2;
                        layout.Y = obtainStyledAttributes.getDimensionPixelSize(index2, layout.Y);
                        continue;
                    case 57:
                        i = indexCount2;
                        layout.Z = obtainStyledAttributes.getDimensionPixelSize(index2, layout.Z);
                        continue;
                    case 58:
                        i = indexCount2;
                        layout.a0 = obtainStyledAttributes.getDimensionPixelSize(index2, layout.a0);
                        continue;
                    case 59:
                        i = indexCount2;
                        layout.b0 = obtainStyledAttributes.getDimensionPixelSize(index2, layout.b0);
                        continue;
                    case 60:
                        i = indexCount2;
                        transform.f602a = obtainStyledAttributes.getFloat(index2, transform.f602a);
                        continue;
                    case 61:
                        i = indexCount2;
                        layout.y = f(obtainStyledAttributes, index2, layout.y);
                        continue;
                    case 62:
                        i = indexCount2;
                        layout.z = obtainStyledAttributes.getDimensionPixelSize(index2, layout.z);
                        continue;
                    case 63:
                        i = indexCount2;
                        layout.A = obtainStyledAttributes.getFloat(index2, layout.A);
                        continue;
                    case 64:
                        i = indexCount2;
                        motion.f598a = f(obtainStyledAttributes, index2, motion.f598a);
                        continue;
                    case 65:
                        i = indexCount2;
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            motion.f599c = obtainStyledAttributes.getString(index2);
                            break;
                        } else {
                            motion.f599c = strArr[obtainStyledAttributes.getInteger(index2, 0)];
                            break;
                        }
                    case 66:
                        i = indexCount2;
                        motion.e = obtainStyledAttributes.getInt(index2, 0);
                        continue;
                    case 67:
                        i = indexCount2;
                        motion.g = obtainStyledAttributes.getFloat(index2, motion.g);
                        break;
                    case 68:
                        i = indexCount2;
                        propertySet.d = obtainStyledAttributes.getFloat(index2, propertySet.d);
                        break;
                    case 69:
                        i = indexCount2;
                        layout.c0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        i = indexCount2;
                        layout.d0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        i = indexCount2;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        i = indexCount2;
                        layout.e0 = obtainStyledAttributes.getInt(index2, layout.e0);
                        break;
                    case 73:
                        i = indexCount2;
                        layout.f0 = obtainStyledAttributes.getDimensionPixelSize(index2, layout.f0);
                        break;
                    case 74:
                        i = indexCount2;
                        layout.i0 = obtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        i = indexCount2;
                        layout.m0 = obtainStyledAttributes.getBoolean(index2, layout.m0);
                        break;
                    case 76:
                        i = indexCount2;
                        motion.d = obtainStyledAttributes.getInt(index2, motion.d);
                        break;
                    case 77:
                        i = indexCount2;
                        layout.j0 = obtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        i = indexCount2;
                        propertySet.b = obtainStyledAttributes.getInt(index2, propertySet.b);
                        break;
                    case 79:
                        i = indexCount2;
                        motion.f = obtainStyledAttributes.getFloat(index2, motion.f);
                        break;
                    case 80:
                        i = indexCount2;
                        layout.k0 = obtainStyledAttributes.getBoolean(index2, layout.k0);
                        break;
                    case 81:
                        i = indexCount2;
                        layout.l0 = obtainStyledAttributes.getBoolean(index2, layout.l0);
                        break;
                    case 82:
                        i = indexCount2;
                        motion.b = obtainStyledAttributes.getInteger(index2, motion.b);
                        break;
                    case 83:
                        i = indexCount2;
                        transform.h = f(obtainStyledAttributes, index2, transform.h);
                        break;
                    case 84:
                        i = indexCount2;
                        motion.i = obtainStyledAttributes.getInteger(index2, motion.i);
                        break;
                    case 85:
                        i = indexCount2;
                        motion.h = obtainStyledAttributes.getFloat(index2, motion.h);
                        break;
                    case 86:
                        i = indexCount2;
                        int i9 = obtainStyledAttributes.peekValue(index2).type;
                        if (i9 == 1) {
                            motion.k = obtainStyledAttributes.getResourceId(index2, -1);
                            break;
                        } else if (i9 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            motion.j = string2;
                            if (string2.indexOf("/") > 0) {
                                motion.k = obtainStyledAttributes.getResourceId(index2, -1);
                                break;
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index2, motion.k);
                            break;
                        }
                        break;
                    case 87:
                        i = indexCount2;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        StringBuilder sb2 = new StringBuilder("Unknown attribute 0x");
                        i = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        break;
                    case 91:
                        i = indexCount2;
                        layout.p = f(obtainStyledAttributes, index2, layout.p);
                        break;
                    case 92:
                        i = indexCount2;
                        layout.q = f(obtainStyledAttributes, index2, layout.q);
                        break;
                    case 93:
                        i = indexCount2;
                        layout.K = obtainStyledAttributes.getDimensionPixelSize(index2, layout.K);
                        break;
                    case 94:
                        i = indexCount2;
                        layout.R = obtainStyledAttributes.getDimensionPixelSize(index2, layout.R);
                        break;
                    case 95:
                        i = indexCount2;
                        g(layout, obtainStyledAttributes, index2, 0);
                        continue;
                    case 96:
                        i = indexCount2;
                        g(layout, obtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        i = indexCount2;
                        layout.n0 = obtainStyledAttributes.getInt(index2, layout.n0);
                        break;
                }
                i7++;
            }
        }
        obtainStyledAttributes.recycle();
        return constraint;
    }

    public static int f(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        if (resourceId == -1) {
            return typedArray.getInt(i, -1);
        }
        return resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void g(java.lang.Object r7, android.content.res.TypedArray r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.g(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void h(ConstraintLayout.LayoutParams layoutParams, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i = 0;
            int i2 = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (!substring.equalsIgnoreCase("W")) {
                    if (substring.equalsIgnoreCase("H")) {
                        i = 1;
                    } else {
                        i = -1;
                    }
                }
                i2 = i;
                i = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 >= 0 && indexOf2 < length - 1) {
                    String substring2 = str.substring(i, indexOf2);
                    String substring3 = str.substring(indexOf2 + 1);
                    if (substring2.length() > 0 && substring3.length() > 0) {
                        float parseFloat = Float.parseFloat(substring2);
                        float parseFloat2 = Float.parseFloat(substring3);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i2 == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                } else {
                    String substring4 = str.substring(i);
                    if (substring4.length() > 0) {
                        Float.parseFloat(substring4);
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        layoutParams.F = str;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x010f. Please report as an issue. */
    public final void a(ConstraintLayout constraintLayout) {
        HashSet hashSet;
        int i;
        String str;
        HashMap hashMap;
        String str2;
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = constraintSet.f591c;
        HashSet hashSet2 = new HashSet(hashMap2.keySet());
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str2 = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str2 = "UNKNOWN";
                }
                sb.append(str2);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (constraintSet.b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (hashMap2.containsKey(Integer.valueOf(id))) {
                        hashSet2.remove(Integer.valueOf(id));
                        Constraint constraint = (Constraint) hashMap2.get(Integer.valueOf(id));
                        if (constraint != null) {
                            PropertySet propertySet = constraint.b;
                            Layout layout = constraint.d;
                            Transform transform = constraint.e;
                            if (childAt instanceof Barrier) {
                                layout.g0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(layout.e0);
                                barrier.setMargin(layout.f0);
                                barrier.setAllowsGoneWidget(layout.m0);
                                int[] iArr = layout.h0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str3 = layout.i0;
                                    if (str3 != null) {
                                        int[] c2 = c(barrier, str3);
                                        layout.h0 = c2;
                                        barrier.setReferencedIds(c2);
                                    }
                                }
                            }
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.a();
                            constraint.a(layoutParams);
                            HashMap hashMap3 = constraint.f;
                            Class<?> cls = childAt.getClass();
                            for (String str4 : hashMap3.keySet()) {
                                ConstraintAttribute constraintAttribute = (ConstraintAttribute) hashMap3.get(str4);
                                HashSet hashSet3 = hashSet2;
                                if (!constraintAttribute.f572a) {
                                    str = a.C("set", str4);
                                } else {
                                    str = str4;
                                }
                                int i3 = i2;
                                try {
                                    int ordinal = constraintAttribute.f573c.ordinal();
                                    Class<?> cls2 = Float.TYPE;
                                    Class<?> cls3 = Integer.TYPE;
                                    switch (ordinal) {
                                        case 0:
                                            hashMap = hashMap3;
                                            cls.getMethod(str, cls3).invoke(childAt, Integer.valueOf(constraintAttribute.d));
                                            break;
                                        case 1:
                                            hashMap = hashMap3;
                                            cls.getMethod(str, cls2).invoke(childAt, Float.valueOf(constraintAttribute.e));
                                            break;
                                        case 2:
                                            hashMap = hashMap3;
                                            cls.getMethod(str, cls3).invoke(childAt, Integer.valueOf(constraintAttribute.h));
                                            break;
                                        case 3:
                                            hashMap = hashMap3;
                                            Method method = cls.getMethod(str, Drawable.class);
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(constraintAttribute.h);
                                            method.invoke(childAt, colorDrawable);
                                            break;
                                        case 4:
                                            hashMap = hashMap3;
                                            cls.getMethod(str, CharSequence.class).invoke(childAt, constraintAttribute.f);
                                            break;
                                        case 5:
                                            hashMap = hashMap3;
                                            cls.getMethod(str, Boolean.TYPE).invoke(childAt, Boolean.valueOf(constraintAttribute.g));
                                            break;
                                        case 6:
                                            hashMap = hashMap3;
                                            cls.getMethod(str, cls2).invoke(childAt, Float.valueOf(constraintAttribute.e));
                                            break;
                                        case 7:
                                            hashMap = hashMap3;
                                            try {
                                                cls.getMethod(str, cls3).invoke(childAt, Integer.valueOf(constraintAttribute.d));
                                            } catch (IllegalAccessException e2) {
                                                e = e2;
                                                StringBuilder w = a.w(" Custom Attribute \"", str4, "\" not found on ");
                                                w.append(cls.getName());
                                                Log.e("TransitionLayout", w.toString());
                                                e.printStackTrace();
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            } catch (NoSuchMethodException e3) {
                                                e = e3;
                                                Log.e("TransitionLayout", e.getMessage());
                                                Log.e("TransitionLayout", " Custom Attribute \"" + str4 + "\" not found on " + cls.getName());
                                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str);
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            } catch (InvocationTargetException e4) {
                                                e = e4;
                                                StringBuilder w2 = a.w(" Custom Attribute \"", str4, "\" not found on ");
                                                w2.append(cls.getName());
                                                Log.e("TransitionLayout", w2.toString());
                                                e.printStackTrace();
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            }
                                        default:
                                            hashMap = hashMap3;
                                            break;
                                    }
                                } catch (IllegalAccessException e5) {
                                    e = e5;
                                    hashMap = hashMap3;
                                } catch (NoSuchMethodException e6) {
                                    e = e6;
                                    hashMap = hashMap3;
                                } catch (InvocationTargetException e7) {
                                    e = e7;
                                    hashMap = hashMap3;
                                }
                                hashSet2 = hashSet3;
                                i2 = i3;
                                hashMap3 = hashMap;
                            }
                            hashSet = hashSet2;
                            i = i2;
                            childAt.setLayoutParams(layoutParams);
                            if (propertySet.b == 0) {
                                childAt.setVisibility(propertySet.f600a);
                            }
                            childAt.setAlpha(propertySet.f601c);
                            childAt.setRotation(transform.f602a);
                            childAt.setRotationX(transform.b);
                            childAt.setRotationY(transform.f603c);
                            childAt.setScaleX(transform.d);
                            childAt.setScaleY(transform.e);
                            if (transform.h != -1) {
                                if (((View) childAt.getParent()).findViewById(transform.h) != null) {
                                    float bottom = (r0.getBottom() + r0.getTop()) / 2.0f;
                                    float right = (r0.getRight() + r0.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(transform.f)) {
                                    childAt.setPivotX(transform.f);
                                }
                                if (!Float.isNaN(transform.g)) {
                                    childAt.setPivotY(transform.g);
                                }
                            }
                            childAt.setTranslationX(transform.i);
                            childAt.setTranslationY(transform.j);
                            childAt.setTranslationZ(transform.k);
                            if (transform.l) {
                                childAt.setElevation(transform.m);
                            }
                        }
                    } else {
                        hashSet = hashSet2;
                        i = i2;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                    i2 = i + 1;
                    constraintSet = this;
                    hashSet2 = hashSet;
                }
            }
            hashSet = hashSet2;
            i = i2;
            i2 = i + 1;
            constraintSet = this;
            hashSet2 = hashSet;
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = (Constraint) hashMap2.get(num);
            if (constraint2 != null) {
                Layout layout2 = constraint2.d;
                if (layout2.g0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    int[] iArr2 = layout2.h0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str5 = layout2.i0;
                        if (str5 != null) {
                            int[] c3 = c(barrier2, str5);
                            layout2.h0 = c3;
                            barrier2.setReferencedIds(c3);
                        }
                    }
                    barrier2.setType(layout2.e0);
                    barrier2.setMargin(layout2.f0);
                    SharedValues sharedValues = ConstraintLayout.v;
                    ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-2, -2);
                    barrier2.m();
                    constraint2.a(layoutParams2);
                    constraintLayout.addView(barrier2, layoutParams2);
                }
                if (layout2.f596a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    SharedValues sharedValues2 = ConstraintLayout.v;
                    ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(-2, -2);
                    constraint2.a(layoutParams3);
                    constraintLayout.addView(guideline, layoutParams3);
                }
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = constraintLayout.getChildAt(i4);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).f(constraintLayout);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        HashMap hashMap2;
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap3 = constraintSet.f591c;
        hashMap3.clear();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (constraintSet.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap3.containsKey(Integer.valueOf(id))) {
                hashMap3.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) hashMap3.get(Integer.valueOf(id));
            if (constraint == null) {
                i = childCount;
                hashMap = hashMap3;
            } else {
                PropertySet propertySet = constraint.b;
                Layout layout = constraint.d;
                Transform transform = constraint.e;
                HashMap hashMap4 = new HashMap();
                Class<?> cls = childAt.getClass();
                HashMap hashMap5 = constraintSet.f590a;
                for (String str : hashMap5.keySet()) {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) hashMap5.get(str);
                    int i3 = childCount;
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap2 = hashMap3;
                            try {
                                hashMap4.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                            } catch (IllegalAccessException e2) {
                                e = e2;
                                e.printStackTrace();
                                childCount = i3;
                                hashMap3 = hashMap2;
                            } catch (NoSuchMethodException e3) {
                                e = e3;
                                e.printStackTrace();
                                childCount = i3;
                                hashMap3 = hashMap2;
                            } catch (InvocationTargetException e4) {
                                e = e4;
                                e.printStackTrace();
                                childCount = i3;
                                hashMap3 = hashMap2;
                            }
                        } else {
                            hashMap2 = hashMap3;
                            hashMap4.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e5) {
                        e = e5;
                        hashMap2 = hashMap3;
                    } catch (NoSuchMethodException e6) {
                        e = e6;
                        hashMap2 = hashMap3;
                    } catch (InvocationTargetException e7) {
                        e = e7;
                        hashMap2 = hashMap3;
                    }
                    childCount = i3;
                    hashMap3 = hashMap2;
                }
                i = childCount;
                hashMap = hashMap3;
                constraint.f = hashMap4;
                constraint.b(id, layoutParams);
                propertySet.f600a = childAt.getVisibility();
                propertySet.f601c = childAt.getAlpha();
                transform.f602a = childAt.getRotation();
                transform.b = childAt.getRotationX();
                transform.f603c = childAt.getRotationY();
                transform.d = childAt.getScaleX();
                transform.e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    transform.f = pivotX;
                    transform.g = pivotY;
                }
                transform.i = childAt.getTranslationX();
                transform.j = childAt.getTranslationY();
                transform.k = childAt.getTranslationZ();
                if (transform.l) {
                    transform.m = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    layout.m0 = barrier.getAllowsGoneWidget();
                    layout.h0 = barrier.getReferencedIds();
                    layout.e0 = barrier.getType();
                    layout.f0 = barrier.getMargin();
                }
            }
            i2++;
            constraintSet = this;
            childCount = i;
            hashMap3 = hashMap;
        }
    }

    public final void e(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        Constraint d2 = d(context, Xml.asAttributeSet(xml), false);
                        if (name.equalsIgnoreCase("Guideline")) {
                            d2.d.f596a = true;
                        }
                        this.f591c.put(Integer.valueOf(d2.f592a), d2);
                    }
                } else {
                    xml.getName();
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
