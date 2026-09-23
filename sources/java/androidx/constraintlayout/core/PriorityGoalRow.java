package androidx.constraintlayout.core;

import android.support.v4.media.a;
import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    public SolverVariable[] f;
    public SolverVariable[] g;
    public int h;
    public GoalVariableAccessor i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.PriorityGoalRow$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Comparator<SolverVariable> {
        @Override // java.util.Comparator
        public final int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.f - solverVariable2.f;
        }
    }

    /* loaded from: classes.dex */
    public class GoalVariableAccessor {

        /* renamed from: a, reason: collision with root package name */
        public SolverVariable f502a;

        public GoalVariableAccessor() {
        }

        public final String toString() {
            String str = "[ ";
            if (this.f502a != null) {
                for (int i = 0; i < 9; i++) {
                    StringBuilder t = a.t(str);
                    t.append(this.f502a.l[i]);
                    t.append(" ");
                    str = t.toString();
                }
            }
            StringBuilder v = a.v(str, "] ");
            v.append(this.f502a);
            return v.toString();
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public final SolverVariable a(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.h; i2++) {
            SolverVariable[] solverVariableArr = this.f;
            SolverVariable solverVariable = solverVariableArr[i2];
            if (!zArr[solverVariable.f]) {
                GoalVariableAccessor goalVariableAccessor = this.i;
                goalVariableAccessor.f502a = solverVariable;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f = goalVariableAccessor.f502a.l[i3];
                        if (f <= 0.0f) {
                            if (f < 0.0f) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    SolverVariable solverVariable2 = solverVariableArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f2 = solverVariable2.l[i3];
                            float f3 = goalVariableAccessor.f502a.l[i3];
                            if (f3 == f2) {
                                i3--;
                            } else if (f3 >= f2) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f[i];
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final boolean e() {
        if (this.h == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final void i(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.f495a;
        if (solverVariable == null) {
            return;
        }
        float[] fArr = solverVariable.l;
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.d;
        int a2 = arrayRowVariables.a();
        for (int i = 0; i < a2; i++) {
            SolverVariable e = arrayRowVariables.e(i);
            float h = arrayRowVariables.h(i);
            GoalVariableAccessor goalVariableAccessor = this.i;
            goalVariableAccessor.f502a = e;
            if (e.f503c) {
                boolean z2 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = goalVariableAccessor.f502a.l;
                    float f = (fArr[i2] * h) + fArr2[i2];
                    fArr2[i2] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        goalVariableAccessor.f502a.l[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    PriorityGoalRow.this.k(goalVariableAccessor.f502a);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f2 = fArr[i3];
                    if (f2 != 0.0f) {
                        float f3 = f2 * h;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        goalVariableAccessor.f502a.l[i3] = f3;
                    } else {
                        goalVariableAccessor.f502a.l[i3] = 0.0f;
                    }
                }
                j(e);
            }
            this.b = (arrayRow.b * h) + this.b;
        }
        k(solverVariable);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, java.util.Comparator] */
    public final void j(SolverVariable solverVariable) {
        int i;
        int i2 = this.h + 1;
        SolverVariable[] solverVariableArr = this.f;
        if (i2 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f = solverVariableArr2;
            this.g = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f;
        int i3 = this.h;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.h = i4;
        if (i4 > 1 && solverVariableArr3[i3].f > solverVariable.f) {
            int i5 = 0;
            while (true) {
                i = this.h;
                if (i5 >= i) {
                    break;
                }
                this.g[i5] = this.f[i5];
                i5++;
            }
            Arrays.sort(this.g, 0, i, new Object());
            for (int i6 = 0; i6 < this.h; i6++) {
                this.f[i6] = this.g[i6];
            }
        }
        solverVariable.f503c = true;
        solverVariable.a(this);
    }

    public final void k(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.h) {
            if (this.f[i] == solverVariable) {
                while (true) {
                    int i2 = this.h;
                    if (i < i2 - 1) {
                        SolverVariable[] solverVariableArr = this.f;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    } else {
                        this.h = i2 - 1;
                        solverVariable.f503c = false;
                        return;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final String toString() {
        GoalVariableAccessor goalVariableAccessor = this.i;
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.h; i++) {
            goalVariableAccessor.f502a = this.f[i];
            str = str + goalVariableAccessor + " ";
        }
        return str;
    }
}
