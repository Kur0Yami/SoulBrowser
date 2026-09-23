package androidx.constraintlayout.core.parser;

/* loaded from: classes.dex */
public class CLParser {

    /* renamed from: androidx.constraintlayout.core.parser.CLParser$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f512a;

        static {
            int[] iArr = new int[TYPE.values().length];
            f512a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f512a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f512a[4] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f512a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f512a[5] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f512a[6] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class TYPE {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ TYPE[] f513c = {new Enum("UNKNOWN", 0), new Enum("OBJECT", 1), new Enum("ARRAY", 2), new Enum("NUMBER", 3), new Enum("STRING", 4), new Enum("KEY", 5), new Enum("TOKEN", 6)};

        /* JADX INFO: Fake field, exist only in values array */
        TYPE EF5;

        public static TYPE valueOf(String str) {
            return (TYPE) Enum.valueOf(TYPE.class, str);
        }

        public static TYPE[] values() {
            return (TYPE[]) f513c.clone();
        }
    }
}
