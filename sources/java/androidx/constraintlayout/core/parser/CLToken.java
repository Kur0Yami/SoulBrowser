package androidx.constraintlayout.core.parser;

/* loaded from: classes.dex */
public class CLToken extends CLElement {

    /* renamed from: androidx.constraintlayout.core.parser.CLToken$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f514a;

        static {
            int[] iArr = new int[Type.values().length];
            f514a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f514a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f514a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f514a[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Type[] f515c = {new Enum("UNKNOWN", 0), new Enum("TRUE", 1), new Enum("FALSE", 2), new Enum("NULL", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        Type EF5;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f515c.clone();
        }
    }
}
