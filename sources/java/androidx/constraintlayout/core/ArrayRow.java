package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    public final ArrayRowVariables d;

    /* renamed from: a, reason: collision with root package name */
    public SolverVariable f495a = null;
    public float b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f496c = new ArrayList();
    public boolean e = false;

    /* loaded from: classes.dex */
    public interface ArrayRowVariables {
        int a();

        boolean b(SolverVariable solverVariable);

        float c(ArrayRow arrayRow, boolean z);

        void clear();

        void d(SolverVariable solverVariable, float f);

        SolverVariable e(int i);

        void f(SolverVariable solverVariable, float f, boolean z);

        void g();

        float h(int i);

        float i(SolverVariable solverVariable, boolean z);

        float j(SolverVariable solverVariable);

        void k(float f);
    }

    public ArrayRow(Cache cache) {
        this.d = new ArrayLinkedVariables(this, cache);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable a(boolean[] zArr) {
        return f(zArr, null);
    }

    public final void b(LinearSystem linearSystem, int i) {
        this.d.d(linearSystem.j(i), 1.0f);
        this.d.d(linearSystem.j(i), -1.0f);
    }

    public final void c(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.d.d(solverVariable, -1.0f);
            this.d.d(solverVariable2, 1.0f);
            this.d.d(solverVariable3, 1.0f);
        } else {
            this.d.d(solverVariable, 1.0f);
            this.d.d(solverVariable2, -1.0f);
            this.d.d(solverVariable3, -1.0f);
        }
    }

    public final void d(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.d.d(solverVariable, -1.0f);
            this.d.d(solverVariable2, 1.0f);
            this.d.d(solverVariable3, -1.0f);
        } else {
            this.d.d(solverVariable, 1.0f);
            this.d.d(solverVariable2, -1.0f);
            this.d.d(solverVariable3, 1.0f);
        }
    }

    public boolean e() {
        if (this.f495a == null && this.b == 0.0f && this.d.a() == 0) {
            return true;
        }
        return false;
    }

    public final SolverVariable f(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int a2 = this.d.a();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i = 0; i < a2; i++) {
            float h = this.d.h(i);
            if (h < 0.0f) {
                SolverVariable e = this.d.e(i);
                if ((zArr == null || !zArr[e.f]) && e != solverVariable && (((type = e.m) == SolverVariable.Type.f || type == SolverVariable.Type.g) && h < f)) {
                    f = h;
                    solverVariable2 = e;
                }
            }
        }
        return solverVariable2;
    }

    public final void g(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f495a;
        if (solverVariable2 != null) {
            this.d.d(solverVariable2, -1.0f);
            this.f495a.g = -1;
            this.f495a = null;
        }
        float i = this.d.i(solverVariable, true) * (-1.0f);
        this.f495a = solverVariable;
        if (i == 1.0f) {
            return;
        }
        this.b /= i;
        this.d.k(i);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public final SolverVariable getKey() {
        return this.f495a;
    }

    public final void h(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable.j) {
            float j = this.d.j(solverVariable);
            this.b = (solverVariable.i * j) + this.b;
            this.d.i(solverVariable, z);
            if (z) {
                solverVariable.b(this);
            }
            if (this.d.a() == 0) {
                this.e = true;
                linearSystem.f499a = true;
            }
        }
    }

    public void i(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        float c2 = this.d.c(arrayRow, z);
        this.b = (arrayRow.b * c2) + this.b;
        if (z) {
            arrayRow.f495a.b(this);
        }
        if (this.f495a != null && this.d.a() == 0) {
            this.e = true;
            linearSystem.f499a = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            androidx.constraintlayout.core.SolverVariable r0 = r10.f495a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            androidx.constraintlayout.core.SolverVariable r1 = r10.f495a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = android.support.v4.media.a.k(r0, r1)
            float r1 = r10.b
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L35
            java.lang.StringBuilder r0 = android.support.v4.media.a.t(r0)
            float r1 = r10.b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = r4
            goto L36
        L35:
            r1 = r3
        L36:
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r5 = r10.d
            int r5 = r5.a()
        L3c:
            if (r3 >= r5) goto L9c
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r6 = r10.d
            androidx.constraintlayout.core.SolverVariable r6 = r6.e(r3)
            if (r6 != 0) goto L47
            goto L99
        L47:
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r7 = r10.d
            float r7 = r7.h(r3)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L52
            goto L99
        L52:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L66
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L76
            java.lang.String r1 = "- "
            java.lang.String r0 = android.support.v4.media.a.k(r0, r1)
        L64:
            float r7 = r7 * r9
            goto L76
        L66:
            if (r8 <= 0) goto L6f
            java.lang.String r1 = " + "
            java.lang.String r0 = android.support.v4.media.a.k(r0, r1)
            goto L76
        L6f:
            java.lang.String r1 = " - "
            java.lang.String r0 = android.support.v4.media.a.k(r0, r1)
            goto L64
        L76:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L81
            java.lang.String r0 = android.support.v4.media.a.k(r0, r6)
            goto L98
        L81:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L98:
            r1 = r4
        L99:
            int r3 = r3 + 1
            goto L3c
        L9c:
            if (r1 != 0) goto La4
            java.lang.String r1 = "0.0"
            java.lang.String r0 = android.support.v4.media.a.k(r0, r1)
        La4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.toString():java.lang.String");
    }
}
