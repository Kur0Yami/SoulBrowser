package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.State;

/* loaded from: classes.dex */
public class ConstraintReference implements Reference {

    /* renamed from: androidx.constraintlayout.core.state.ConstraintReference$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f516a;

        static {
            int[] iArr = new int[State.Constraint.values().length];
            f516a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f516a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f516a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f516a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f516a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f516a[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f516a[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f516a[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f516a[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f516a[9] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f516a[10] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f516a[11] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f516a[12] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f516a[15] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f516a[13] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f516a[14] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ConstraintReferenceFactory {
    }

    /* loaded from: classes.dex */
    public static class IncorrectConstraintException extends Exception {
        @Override // java.lang.Throwable
        public final String toString() {
            throw null;
        }
    }
}
