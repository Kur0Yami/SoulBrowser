package androidx.constraintlayout.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {

    /* renamed from: c, reason: collision with root package name */
    public boolean f503c;
    public float i;
    public Type m;
    public int f = -1;
    public int g = -1;
    public int h = 0;
    public boolean j = false;
    public final float[] k = new float[9];
    public final float[] l = new float[9];
    public ArrayRow[] n = new ArrayRow[16];
    public int o = 0;
    public int p = 0;

    /* renamed from: androidx.constraintlayout.core.SolverVariable$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f504a;

        static {
            int[] iArr = new int[Type.values().length];
            f504a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f504a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f504a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f504a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f504a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final Type f505c;
        public static final Type f;
        public static final Type g;
        public static final Type h;
        public static final /* synthetic */ Type[] i;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.core.SolverVariable$Type, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [androidx.constraintlayout.core.SolverVariable$Type, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [androidx.constraintlayout.core.SolverVariable$Type, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [androidx.constraintlayout.core.SolverVariable$Type, java.lang.Enum] */
        static {
            ?? r0 = new Enum("UNRESTRICTED", 0);
            f505c = r0;
            Enum r1 = new Enum("CONSTANT", 1);
            ?? r3 = new Enum("SLACK", 2);
            f = r3;
            ?? r5 = new Enum("ERROR", 3);
            g = r5;
            ?? r7 = new Enum("UNKNOWN", 4);
            h = r7;
            i = new Type[]{r0, r1, r3, r5, r7};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) i.clone();
        }
    }

    public SolverVariable(Type type) {
        this.m = type;
    }

    public final void a(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.o;
            if (i < i2) {
                if (this.n[i] == arrayRow) {
                    return;
                } else {
                    i++;
                }
            } else {
                ArrayRow[] arrayRowArr = this.n;
                if (i2 >= arrayRowArr.length) {
                    this.n = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.n;
                int i3 = this.o;
                arrayRowArr2[i3] = arrayRow;
                this.o = i3 + 1;
                return;
            }
        }
    }

    public final void b(ArrayRow arrayRow) {
        int i = this.o;
        int i2 = 0;
        while (i2 < i) {
            if (this.n[i2] == arrayRow) {
                while (i2 < i - 1) {
                    ArrayRow[] arrayRowArr = this.n;
                    int i3 = i2 + 1;
                    arrayRowArr[i2] = arrayRowArr[i3];
                    i2 = i3;
                }
                this.o--;
                return;
            }
            i2++;
        }
    }

    public final void c() {
        this.m = Type.h;
        this.h = 0;
        this.f = -1;
        this.g = -1;
        this.i = 0.0f;
        this.j = false;
        int i = this.o;
        for (int i2 = 0; i2 < i; i2++) {
            this.n[i2] = null;
        }
        this.o = 0;
        this.p = 0;
        this.f503c = false;
        Arrays.fill(this.l, 0.0f);
    }

    @Override // java.lang.Comparable
    public final int compareTo(SolverVariable solverVariable) {
        return this.f - solverVariable.f;
    }

    public final void d(LinearSystem linearSystem, float f) {
        this.i = f;
        this.j = true;
        int i = this.o;
        this.g = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.n[i2].h(linearSystem, this, false);
        }
        this.o = 0;
    }

    public final void e(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i = this.o;
        for (int i2 = 0; i2 < i; i2++) {
            this.n[i2].i(linearSystem, arrayRow, false);
        }
        this.o = 0;
    }

    public final String toString() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + this.f;
    }
}
