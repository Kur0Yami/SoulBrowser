package androidx.constraintlayout.core;

import androidx.constraintlayout.core.Pools;
import androidx.constraintlayout.core.PriorityGoalRow;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import java.util.Arrays;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public class LinearSystem {
    public static boolean p = false;
    public static int q = 1000;

    /* renamed from: c, reason: collision with root package name */
    public final PriorityGoalRow f500c;
    public ArrayRow[] f;
    public final Cache l;
    public ArrayRow o;

    /* renamed from: a, reason: collision with root package name */
    public boolean f499a = false;
    public int b = 0;
    public int d = 32;
    public int e = 32;
    public boolean g = false;
    public boolean[] h = new boolean[32];
    public int i = 1;
    public int j = 0;
    public int k = 32;
    public SolverVariable[] m = new SolverVariable[q];
    public int n = 0;

    /* loaded from: classes.dex */
    public interface Row {
        SolverVariable a(boolean[] zArr);

        SolverVariable getKey();
    }

    /* loaded from: classes.dex */
    public class ValuesRow extends ArrayRow {
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.PriorityGoalRow] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.constraintlayout.core.Cache, java.lang.Object] */
    public LinearSystem() {
        this.f = null;
        this.f = new ArrayRow[32];
        s();
        ?? obj = new Object();
        new Pools.SimplePool();
        obj.f497a = new Pools.SimplePool();
        obj.b = new Pools.SimplePool();
        obj.f498c = new SolverVariable[32];
        this.l = obj;
        ?? arrayRow = new ArrayRow(obj);
        arrayRow.f = new SolverVariable[Uuid.SIZE_BITS];
        arrayRow.g = new SolverVariable[Uuid.SIZE_BITS];
        arrayRow.h = 0;
        arrayRow.i = new PriorityGoalRow.GoalVariableAccessor();
        this.f500c = arrayRow;
        this.o = new ArrayRow(obj);
    }

    public static int n(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).i;
        if (solverVariable != null) {
            return (int) (solverVariable.i + 0.5f);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final SolverVariable a(SolverVariable.Type type) {
        Pools.SimplePool simplePool = this.l.b;
        int i = simplePool.b;
        SolverVariable solverVariable = null;
        if (i > 0) {
            int i2 = i - 1;
            ?? r3 = simplePool.f501a;
            ?? r4 = r3[i2];
            r3[i2] = 0;
            simplePool.b = i2;
            solverVariable = r4;
        }
        SolverVariable solverVariable2 = solverVariable;
        if (solverVariable2 == null) {
            solverVariable2 = new SolverVariable(type);
            solverVariable2.m = type;
        } else {
            solverVariable2.c();
            solverVariable2.m = type;
        }
        int i3 = this.n;
        int i4 = q;
        if (i3 >= i4) {
            int i5 = i4 * 2;
            q = i5;
            this.m = (SolverVariable[]) Arrays.copyOf(this.m, i5);
        }
        SolverVariable[] solverVariableArr = this.m;
        int i6 = this.n;
        this.n = i6 + 1;
        solverVariableArr[i6] = solverVariable2;
        return solverVariable2;
    }

    public final void b(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow l = l();
        if (solverVariable2 == solverVariable3) {
            l.d.d(solverVariable, 1.0f);
            l.d.d(solverVariable4, 1.0f);
            l.d.d(solverVariable2, -2.0f);
        } else if (f == 0.5f) {
            l.d.d(solverVariable, 1.0f);
            l.d.d(solverVariable2, -1.0f);
            l.d.d(solverVariable3, -1.0f);
            l.d.d(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                l.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            l.d.d(solverVariable, -1.0f);
            l.d.d(solverVariable2, 1.0f);
            l.b = i;
        } else if (f >= 1.0f) {
            l.d.d(solverVariable4, -1.0f);
            l.d.d(solverVariable3, 1.0f);
            l.b = -i2;
        } else {
            float f2 = 1.0f - f;
            l.d.d(solverVariable, f2 * 1.0f);
            l.d.d(solverVariable2, f2 * (-1.0f));
            l.d.d(solverVariable3, (-1.0f) * f);
            l.d.d(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                l.b = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            l.b(this, i3);
        }
        c(l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00be, code lost:
    
        if (r5.p <= 1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c1, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00cb, code lost:
    
        if (r5.p <= 1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00e0, code lost:
    
        if (r5.p <= 1) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e3, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00ed, code lost:
    
        if (r5.p <= 1) goto L82;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:139:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(androidx.constraintlayout.core.ArrayRow r18) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.c(androidx.constraintlayout.core.ArrayRow):void");
    }

    public final void d(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.g;
        if (i2 == -1) {
            solverVariable.d(this, i);
            for (int i3 = 0; i3 < this.b + 1; i3++) {
                SolverVariable solverVariable2 = this.l.f498c[i3];
            }
            return;
        }
        if (i2 != -1) {
            ArrayRow arrayRow = this.f[i2];
            if (arrayRow.e) {
                arrayRow.b = i;
                return;
            }
            if (arrayRow.d.a() == 0) {
                arrayRow.e = true;
                arrayRow.b = i;
                return;
            }
            ArrayRow l = l();
            if (i < 0) {
                l.b = i * (-1);
                l.d.d(solverVariable, 1.0f);
            } else {
                l.b = i;
                l.d.d(solverVariable, -1.0f);
            }
            c(l);
            return;
        }
        ArrayRow l2 = l();
        l2.f495a = solverVariable;
        float f = i;
        solverVariable.i = f;
        l2.b = f;
        l2.e = true;
        c(l2);
    }

    public final void e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (i2 == 8 && solverVariable2.j && solverVariable.g == -1) {
            solverVariable.d(this, solverVariable2.i + i);
            return;
        }
        ArrayRow l = l();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            l.b = i;
        }
        if (!z) {
            l.d.d(solverVariable, -1.0f);
            l.d.d(solverVariable2, 1.0f);
        } else {
            l.d.d(solverVariable, 1.0f);
            l.d.d(solverVariable2, -1.0f);
        }
        if (i2 != 8) {
            l.b(this, i2);
        }
        c(l);
    }

    public final void f(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow l = l();
        SolverVariable m = m();
        m.h = 0;
        l.c(solverVariable, solverVariable2, m, i);
        if (i2 != 8) {
            l.d.d(j(i2), (int) (l.d.j(m) * (-1.0f)));
        }
        c(l);
    }

    public final void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow l = l();
        SolverVariable m = m();
        m.h = 0;
        l.d(solverVariable, solverVariable2, m, i);
        if (i2 != 8) {
            l.d.d(j(i2), (int) (l.d.j(m) * (-1.0f)));
        }
        c(l);
    }

    public final void h(ArrayRow arrayRow) {
        int i;
        if (arrayRow.e) {
            arrayRow.f495a.d(this, arrayRow.b);
        } else {
            ArrayRow[] arrayRowArr = this.f;
            int i2 = this.j;
            arrayRowArr[i2] = arrayRow;
            SolverVariable solverVariable = arrayRow.f495a;
            solverVariable.g = i2;
            this.j = i2 + 1;
            solverVariable.e(this, arrayRow);
        }
        if (this.f499a) {
            int i3 = 0;
            while (i3 < this.j) {
                if (this.f[i3] == null) {
                    System.out.println("WTF");
                }
                ArrayRow arrayRow2 = this.f[i3];
                if (arrayRow2 != null && arrayRow2.e) {
                    arrayRow2.f495a.d(this, arrayRow2.b);
                    this.l.f497a.a(arrayRow2);
                    this.f[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.j;
                        if (i4 >= i) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.f;
                        int i6 = i4 - 1;
                        ArrayRow arrayRow3 = arrayRowArr2[i4];
                        arrayRowArr2[i6] = arrayRow3;
                        SolverVariable solverVariable2 = arrayRow3.f495a;
                        if (solverVariable2.g == i4) {
                            solverVariable2.g = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.f[i5] = null;
                    }
                    this.j = i - 1;
                    i3--;
                }
                i3++;
            }
            this.f499a = false;
        }
    }

    public final void i() {
        for (int i = 0; i < this.j; i++) {
            ArrayRow arrayRow = this.f[i];
            arrayRow.f495a.i = arrayRow.b;
        }
    }

    public final SolverVariable j(int i) {
        if (this.i + 1 >= this.e) {
            o();
        }
        SolverVariable a2 = a(SolverVariable.Type.g);
        float[] fArr = a2.l;
        int i2 = this.b + 1;
        this.b = i2;
        this.i++;
        a2.f = i2;
        a2.h = i;
        this.l.f498c[i2] = a2;
        PriorityGoalRow priorityGoalRow = this.f500c;
        priorityGoalRow.i.f502a = a2;
        Arrays.fill(fArr, 0.0f);
        fArr[a2.h] = 1.0f;
        priorityGoalRow.j(a2);
        return a2;
    }

    public final SolverVariable k(Object obj) {
        if (obj != null) {
            if (this.i + 1 >= this.e) {
                o();
            }
            if (obj instanceof ConstraintAnchor) {
                ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
                SolverVariable solverVariable = constraintAnchor.i;
                if (solverVariable == null) {
                    constraintAnchor.k();
                    solverVariable = constraintAnchor.i;
                }
                int i = solverVariable.f;
                Cache cache = this.l;
                if (i != -1 && i <= this.b && cache.f498c[i] != null) {
                    return solverVariable;
                }
                if (i != -1) {
                    solverVariable.c();
                }
                int i2 = this.b + 1;
                this.b = i2;
                this.i++;
                solverVariable.f = i2;
                solverVariable.m = SolverVariable.Type.f505c;
                cache.f498c[i2] = solverVariable;
                return solverVariable;
            }
            return null;
        }
        return null;
    }

    public final ArrayRow l() {
        Object obj;
        Cache cache = this.l;
        Pools.SimplePool simplePool = cache.f497a;
        int i = simplePool.b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = simplePool.f501a;
            obj = objArr[i2];
            objArr[i2] = null;
            simplePool.b = i2;
        } else {
            obj = null;
        }
        ArrayRow arrayRow = (ArrayRow) obj;
        if (arrayRow == null) {
            return new ArrayRow(cache);
        }
        arrayRow.f495a = null;
        arrayRow.d.clear();
        arrayRow.b = 0.0f;
        arrayRow.e = false;
        return arrayRow;
    }

    public final SolverVariable m() {
        if (this.i + 1 >= this.e) {
            o();
        }
        SolverVariable a2 = a(SolverVariable.Type.f);
        int i = this.b + 1;
        this.b = i;
        this.i++;
        a2.f = i;
        this.l.f498c[i] = a2;
        return a2;
    }

    public final void o() {
        int i = this.d * 2;
        this.d = i;
        this.f = (ArrayRow[]) Arrays.copyOf(this.f, i);
        Cache cache = this.l;
        cache.f498c = (SolverVariable[]) Arrays.copyOf(cache.f498c, this.d);
        int i2 = this.d;
        this.h = new boolean[i2];
        this.e = i2;
        this.k = i2;
    }

    public final void p() {
        PriorityGoalRow priorityGoalRow = this.f500c;
        if (priorityGoalRow.e()) {
            i();
            return;
        }
        if (this.g) {
            for (int i = 0; i < this.j; i++) {
                if (!this.f[i].e) {
                    q(priorityGoalRow);
                    return;
                }
            }
            i();
            return;
        }
        q(priorityGoalRow);
    }

    public final void q(PriorityGoalRow priorityGoalRow) {
        int i = 0;
        while (true) {
            if (i >= this.j) {
                break;
            }
            ArrayRow arrayRow = this.f[i];
            SolverVariable.Type type = arrayRow.f495a.m;
            SolverVariable.Type type2 = SolverVariable.Type.f505c;
            if (type != type2) {
                float f = 0.0f;
                if (arrayRow.b < 0.0f) {
                    boolean z = false;
                    int i2 = 0;
                    while (!z) {
                        i2++;
                        float f2 = Float.MAX_VALUE;
                        int i3 = 0;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        while (i3 < this.j) {
                            ArrayRow arrayRow2 = this.f[i3];
                            if (arrayRow2.f495a.m != type2 && !arrayRow2.e && arrayRow2.b < f) {
                                int a2 = arrayRow2.d.a();
                                int i7 = 0;
                                while (i7 < a2) {
                                    SolverVariable e = arrayRow2.d.e(i7);
                                    float f3 = f;
                                    float j = arrayRow2.d.j(e);
                                    if (j > f3) {
                                        for (int i8 = 0; i8 < 9; i8++) {
                                            float f4 = e.k[i8] / j;
                                            if ((f4 < f2 && i8 == i6) || i8 > i6) {
                                                i6 = i8;
                                                i5 = e.f;
                                                i4 = i3;
                                                f2 = f4;
                                            }
                                        }
                                    }
                                    i7++;
                                    f = f3;
                                }
                            }
                            i3++;
                            f = f;
                        }
                        float f5 = f;
                        if (i4 != -1) {
                            ArrayRow arrayRow3 = this.f[i4];
                            arrayRow3.f495a.g = -1;
                            arrayRow3.g(this.l.f498c[i5]);
                            SolverVariable solverVariable = arrayRow3.f495a;
                            solverVariable.g = i4;
                            solverVariable.e(this, arrayRow3);
                        } else {
                            z = true;
                        }
                        if (i2 > this.i / 2) {
                            z = true;
                        }
                        f = f5;
                    }
                }
            }
            i++;
        }
        r(priorityGoalRow);
        i();
    }

    public final void r(Row row) {
        for (int i = 0; i < this.i; i++) {
            this.h[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            i2++;
            if (i2 < this.i * 2) {
                if (row.getKey() != null) {
                    this.h[row.getKey().f] = true;
                }
                SolverVariable a2 = row.a(this.h);
                if (a2 != null) {
                    boolean[] zArr = this.h;
                    int i3 = a2.f;
                    if (!zArr[i3]) {
                        zArr[i3] = true;
                    } else {
                        return;
                    }
                }
                if (a2 != null) {
                    float f = Float.MAX_VALUE;
                    int i4 = -1;
                    for (int i5 = 0; i5 < this.j; i5++) {
                        ArrayRow arrayRow = this.f[i5];
                        if (arrayRow.f495a.m != SolverVariable.Type.f505c && !arrayRow.e && arrayRow.d.b(a2)) {
                            float j = arrayRow.d.j(a2);
                            if (j < 0.0f) {
                                float f2 = (-arrayRow.b) / j;
                                if (f2 < f) {
                                    i4 = i5;
                                    f = f2;
                                }
                            }
                        }
                    }
                    if (i4 > -1) {
                        ArrayRow arrayRow2 = this.f[i4];
                        arrayRow2.f495a.g = -1;
                        arrayRow2.g(a2);
                        SolverVariable solverVariable = arrayRow2.f495a;
                        solverVariable.g = i4;
                        solverVariable.e(this, arrayRow2);
                    }
                } else {
                    z = true;
                }
            } else {
                return;
            }
        }
    }

    public final void s() {
        for (int i = 0; i < this.j; i++) {
            ArrayRow arrayRow = this.f[i];
            if (arrayRow != null) {
                this.l.f497a.a(arrayRow);
            }
            this.f[i] = null;
        }
    }

    public final void t() {
        Cache cache;
        int i = 0;
        while (true) {
            cache = this.l;
            SolverVariable[] solverVariableArr = cache.f498c;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.c();
            }
            i++;
        }
        Pools.SimplePool simplePool = cache.b;
        SolverVariable[] solverVariableArr2 = this.m;
        int i2 = this.n;
        simplePool.getClass();
        if (i2 > solverVariableArr2.length) {
            i2 = solverVariableArr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            SolverVariable solverVariable2 = solverVariableArr2[i3];
            int i4 = simplePool.b;
            Object[] objArr = simplePool.f501a;
            if (i4 < objArr.length) {
                objArr[i4] = solverVariable2;
                simplePool.b = i4 + 1;
            }
        }
        this.n = 0;
        Arrays.fill(cache.f498c, (Object) null);
        this.b = 0;
        PriorityGoalRow priorityGoalRow = this.f500c;
        priorityGoalRow.h = 0;
        priorityGoalRow.b = 0.0f;
        this.i = 1;
        for (int i5 = 0; i5 < this.j; i5++) {
            ArrayRow arrayRow = this.f[i5];
        }
        s();
        this.j = 0;
        this.o = new ArrayRow(cache);
    }
}
