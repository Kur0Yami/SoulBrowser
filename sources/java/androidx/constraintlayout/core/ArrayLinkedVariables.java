package androidx.constraintlayout.core;

import android.support.v4.media.a;
import androidx.constraintlayout.core.ArrayRow;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {
    public final ArrayRow b;

    /* renamed from: c, reason: collision with root package name */
    public final Cache f494c;

    /* renamed from: a, reason: collision with root package name */
    public int f493a = 0;
    public int d = 8;
    public int[] e = new int[8];
    public int[] f = new int[8];
    public float[] g = new float[8];
    public int h = -1;
    public int i = -1;
    public boolean j = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.b = arrayRow;
        this.f494c = cache;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final int a() {
        return this.f493a;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final boolean b(SolverVariable solverVariable) {
        int i = this.h;
        if (i != -1) {
            for (int i2 = 0; i != -1 && i2 < this.f493a; i2++) {
                if (this.e[i] == solverVariable.f) {
                    return true;
                }
                i = this.f[i];
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float c(ArrayRow arrayRow, boolean z) {
        float j = j(arrayRow.f495a);
        i(arrayRow.f495a, z);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.d;
        int a2 = arrayRowVariables.a();
        for (int i = 0; i < a2; i++) {
            SolverVariable e = arrayRowVariables.e(i);
            f(e, arrayRowVariables.j(e) * j, z);
        }
        return j;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.f493a; i2++) {
            SolverVariable solverVariable = this.f494c.f498c[this.e[i]];
            if (solverVariable != null) {
                solverVariable.b(this.b);
            }
            i = this.f[i];
        }
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.f493a = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void d(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            i(solverVariable, true);
            return;
        }
        int i = this.h;
        ArrayRow arrayRow = this.b;
        if (i == -1) {
            this.h = 0;
            this.g[0] = f;
            this.e[0] = solverVariable.f;
            this.f[0] = -1;
            solverVariable.p++;
            solverVariable.a(arrayRow);
            this.f493a++;
            if (!this.j) {
                int i2 = this.i + 1;
                this.i = i2;
                int[] iArr = this.e;
                if (i2 >= iArr.length) {
                    this.j = true;
                    this.i = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f493a; i4++) {
            int i5 = this.e[i];
            int i6 = solverVariable.f;
            if (i5 == i6) {
                this.g[i] = f;
                return;
            }
            if (i5 < i6) {
                i3 = i;
            }
            i = this.f[i];
        }
        int i7 = this.i;
        int i8 = i7 + 1;
        if (this.j) {
            int[] iArr2 = this.e;
            if (iArr2[i7] != -1) {
                i7 = iArr2.length;
            }
        } else {
            i7 = i8;
        }
        int[] iArr3 = this.e;
        if (i7 >= iArr3.length && this.f493a < iArr3.length) {
            int i9 = 0;
            while (true) {
                int[] iArr4 = this.e;
                if (i9 >= iArr4.length) {
                    break;
                }
                if (iArr4[i9] == -1) {
                    i7 = i9;
                    break;
                }
                i9++;
            }
        }
        int[] iArr5 = this.e;
        if (i7 >= iArr5.length) {
            i7 = iArr5.length;
            int i10 = this.d * 2;
            this.d = i10;
            this.j = false;
            this.i = i7 - 1;
            this.g = Arrays.copyOf(this.g, i10);
            this.e = Arrays.copyOf(this.e, this.d);
            this.f = Arrays.copyOf(this.f, this.d);
        }
        this.e[i7] = solverVariable.f;
        this.g[i7] = f;
        if (i3 != -1) {
            int[] iArr6 = this.f;
            iArr6[i7] = iArr6[i3];
            iArr6[i3] = i7;
        } else {
            this.f[i7] = this.h;
            this.h = i7;
        }
        solverVariable.p++;
        solverVariable.a(arrayRow);
        int i11 = this.f493a + 1;
        this.f493a = i11;
        if (!this.j) {
            this.i++;
        }
        int[] iArr7 = this.e;
        if (i11 >= iArr7.length) {
            this.j = true;
        }
        if (this.i >= iArr7.length) {
            this.j = true;
            this.i = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final SolverVariable e(int i) {
        int i2 = this.h;
        for (int i3 = 0; i2 != -1 && i3 < this.f493a; i3++) {
            if (i3 == i) {
                return this.f494c.f498c[this.e[i2]];
            }
            i2 = this.f[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void f(SolverVariable solverVariable, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.h;
            ArrayRow arrayRow = this.b;
            if (i == -1) {
                this.h = 0;
                this.g[0] = f;
                this.e[0] = solverVariable.f;
                this.f[0] = -1;
                solverVariable.p++;
                solverVariable.a(arrayRow);
                this.f493a++;
                if (!this.j) {
                    int i2 = this.i + 1;
                    this.i = i2;
                    int[] iArr = this.e;
                    if (i2 >= iArr.length) {
                        this.j = true;
                        this.i = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f493a; i4++) {
                int i5 = this.e[i];
                int i6 = solverVariable.f;
                if (i5 == i6) {
                    float[] fArr = this.g;
                    float f2 = fArr[i] + f;
                    if (f2 > -0.001f && f2 < 0.001f) {
                        f2 = 0.0f;
                    }
                    fArr[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.h) {
                            this.h = this.f[i];
                        } else {
                            int[] iArr2 = this.f;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            solverVariable.b(arrayRow);
                        }
                        if (this.j) {
                            this.i = i;
                        }
                        solverVariable.p--;
                        this.f493a--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.f[i];
            }
            int i7 = this.i;
            int i8 = i7 + 1;
            if (this.j) {
                int[] iArr3 = this.e;
                if (iArr3[i7] != -1) {
                    i7 = iArr3.length;
                }
            } else {
                i7 = i8;
            }
            int[] iArr4 = this.e;
            if (i7 >= iArr4.length && this.f493a < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.e;
                    if (i9 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i9] == -1) {
                        i7 = i9;
                        break;
                    }
                    i9++;
                }
            }
            int[] iArr6 = this.e;
            if (i7 >= iArr6.length) {
                i7 = iArr6.length;
                int i10 = this.d * 2;
                this.d = i10;
                this.j = false;
                this.i = i7 - 1;
                this.g = Arrays.copyOf(this.g, i10);
                this.e = Arrays.copyOf(this.e, this.d);
                this.f = Arrays.copyOf(this.f, this.d);
            }
            this.e[i7] = solverVariable.f;
            this.g[i7] = f;
            if (i3 != -1) {
                int[] iArr7 = this.f;
                iArr7[i7] = iArr7[i3];
                iArr7[i3] = i7;
            } else {
                this.f[i7] = this.h;
                this.h = i7;
            }
            solverVariable.p++;
            solverVariable.a(arrayRow);
            this.f493a++;
            if (!this.j) {
                this.i++;
            }
            int i11 = this.i;
            int[] iArr8 = this.e;
            if (i11 >= iArr8.length) {
                this.j = true;
                this.i = iArr8.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void g() {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.f493a; i2++) {
            float[] fArr = this.g;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f[i];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float h(int i) {
        int i2 = this.h;
        for (int i3 = 0; i2 != -1 && i3 < this.f493a; i3++) {
            if (i3 == i) {
                return this.g[i2];
            }
            i2 = this.f[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float i(SolverVariable solverVariable, boolean z) {
        int i = this.h;
        if (i != -1) {
            int i2 = 0;
            int i3 = -1;
            while (i != -1 && i2 < this.f493a) {
                if (this.e[i] == solverVariable.f) {
                    if (i == this.h) {
                        this.h = this.f[i];
                    } else {
                        int[] iArr = this.f;
                        iArr[i3] = iArr[i];
                    }
                    if (z) {
                        solverVariable.b(this.b);
                    }
                    solverVariable.p--;
                    this.f493a--;
                    this.e[i] = -1;
                    if (this.j) {
                        this.i = i;
                    }
                    return this.g[i];
                }
                i2++;
                i3 = i;
                i = this.f[i];
            }
            return 0.0f;
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float j(SolverVariable solverVariable) {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.f493a; i2++) {
            if (this.e[i] == solverVariable.f) {
                return this.g[i];
            }
            i = this.f[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void k(float f) {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.f493a; i2++) {
            float[] fArr = this.g;
            fArr[i] = fArr[i] / f;
            i = this.f[i];
        }
    }

    public final String toString() {
        int i = this.h;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        for (int i2 = 0; i != -1 && i2 < this.f493a; i2++) {
            StringBuilder t = a.t(a.k(str, " -> "));
            t.append(this.g[i]);
            t.append(" : ");
            StringBuilder t2 = a.t(t.toString());
            t2.append(this.f494c.f498c[this.e[i]]);
            str = t2.toString();
            i = this.f[i];
        }
        return str;
    }
}
