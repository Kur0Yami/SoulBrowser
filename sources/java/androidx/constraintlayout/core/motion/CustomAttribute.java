package androidx.constraintlayout.core.motion;

/* loaded from: classes.dex */
public class CustomAttribute {

    /* renamed from: androidx.constraintlayout.core.motion.CustomAttribute$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f508a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f508a = iArr;
            try {
                iArr[7] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f508a[5] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f508a[4] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f508a[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f508a[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f508a[0] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f508a[1] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f508a[6] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class AttributeType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ AttributeType[] f509c = {new Enum("INT_TYPE", 0), new Enum("FLOAT_TYPE", 1), new Enum("COLOR_TYPE", 2), new Enum("COLOR_DRAWABLE_TYPE", 3), new Enum("STRING_TYPE", 4), new Enum("BOOLEAN_TYPE", 5), new Enum("DIMENSION_TYPE", 6), new Enum("REFERENCE_TYPE", 7)};

        /* JADX INFO: Fake field, exist only in values array */
        AttributeType EF5;

        public static AttributeType valueOf(String str) {
            return (AttributeType) Enum.valueOf(AttributeType.class, str);
        }

        public static AttributeType[] values() {
            return (AttributeType[]) f509c.clone();
        }
    }
}
