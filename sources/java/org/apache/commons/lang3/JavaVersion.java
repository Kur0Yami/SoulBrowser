package org.apache.commons.lang3;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'G' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes4.dex */
public final class JavaVersion {
    public static final JavaVersion A;
    public static final JavaVersion B;
    public static final JavaVersion C;
    public static final JavaVersion D;
    public static final JavaVersion E;
    public static final JavaVersion F;
    public static final JavaVersion G;
    public static final /* synthetic */ JavaVersion[] H;
    public static final JavaVersion g;
    public static final JavaVersion h;
    public static final JavaVersion i;
    public static final JavaVersion j;
    public static final JavaVersion k;
    public static final JavaVersion l;
    public static final JavaVersion m;
    public static final JavaVersion n;
    public static final JavaVersion o;
    public static final JavaVersion p;
    public static final JavaVersion q;
    public static final JavaVersion r;
    public static final JavaVersion s;
    public static final JavaVersion t;
    public static final JavaVersion u;
    public static final JavaVersion v;
    public static final JavaVersion w;
    public static final JavaVersion x;
    public static final JavaVersion y;
    public static final JavaVersion z;

    /* renamed from: c, reason: collision with root package name */
    public final float f22346c;
    public final String f;

    /* JADX INFO: Fake field, exist only in values array */
    JavaVersion EF9;

    /* JADX INFO: Fake field, exist only in values array */
    JavaVersion EF0;

    static {
        JavaVersion javaVersion = new JavaVersion("JAVA_0_9", 0, 1.5f, "0.9");
        g = javaVersion;
        JavaVersion javaVersion2 = new JavaVersion("JAVA_1_1", 1, 1.1f, "1.1");
        h = javaVersion2;
        JavaVersion javaVersion3 = new JavaVersion("JAVA_1_2", 2, 1.2f, "1.2");
        i = javaVersion3;
        JavaVersion javaVersion4 = new JavaVersion("JAVA_1_3", 3, 1.3f, "1.3");
        j = javaVersion4;
        JavaVersion javaVersion5 = new JavaVersion("JAVA_1_4", 4, 1.4f, "1.4");
        k = javaVersion5;
        JavaVersion javaVersion6 = new JavaVersion("JAVA_1_5", 5, 1.5f, "1.5");
        l = javaVersion6;
        JavaVersion javaVersion7 = new JavaVersion("JAVA_1_6", 6, 1.6f, "1.6");
        m = javaVersion7;
        JavaVersion javaVersion8 = new JavaVersion("JAVA_1_7", 7, 1.7f, "1.7");
        n = javaVersion8;
        JavaVersion javaVersion9 = new JavaVersion("JAVA_1_8", 8, 1.8f, "1.8");
        o = javaVersion9;
        JavaVersion javaVersion10 = new JavaVersion("JAVA_1_9", 9, 9.0f, "9");
        JavaVersion javaVersion11 = new JavaVersion("JAVA_9", 10, 9.0f, "9");
        p = javaVersion11;
        JavaVersion javaVersion12 = new JavaVersion("JAVA_10", 11, 10.0f, "10");
        q = javaVersion12;
        JavaVersion javaVersion13 = new JavaVersion("JAVA_11", 12, 11.0f, "11");
        r = javaVersion13;
        JavaVersion javaVersion14 = new JavaVersion("JAVA_12", 13, 12.0f, "12");
        s = javaVersion14;
        JavaVersion javaVersion15 = new JavaVersion("JAVA_13", 14, 13.0f, "13");
        t = javaVersion15;
        JavaVersion javaVersion16 = new JavaVersion("JAVA_14", 15, 14.0f, "14");
        u = javaVersion16;
        JavaVersion javaVersion17 = new JavaVersion("JAVA_15", 16, 15.0f, "15");
        v = javaVersion17;
        JavaVersion javaVersion18 = new JavaVersion("JAVA_16", 17, 16.0f, "16");
        w = javaVersion18;
        JavaVersion javaVersion19 = new JavaVersion("JAVA_17", 18, 17.0f, "17");
        x = javaVersion19;
        JavaVersion javaVersion20 = new JavaVersion("JAVA_18", 19, 18.0f, "18");
        y = javaVersion20;
        JavaVersion javaVersion21 = new JavaVersion("JAVA_19", 20, 19.0f, "19");
        z = javaVersion21;
        JavaVersion javaVersion22 = new JavaVersion("JAVA_20", 21, 20.0f, "20");
        A = javaVersion22;
        JavaVersion javaVersion23 = new JavaVersion("JAVA_21", 22, 21.0f, "21");
        B = javaVersion23;
        JavaVersion javaVersion24 = new JavaVersion("JAVA_22", 23, 22.0f, "22");
        C = javaVersion24;
        JavaVersion javaVersion25 = new JavaVersion("JAVA_23", 24, 23.0f, "23");
        D = javaVersion25;
        JavaVersion javaVersion26 = new JavaVersion("JAVA_24", 25, 24.0f, "24");
        E = javaVersion26;
        JavaVersion javaVersion27 = new JavaVersion("JAVA_25", 26, 25.0f, "25");
        F = javaVersion27;
        JavaVersion javaVersion28 = new JavaVersion("JAVA_26", 27, 26.0f, "26");
        float a2 = a(SystemProperties.a("java.specification.version", new g(6)));
        a2 = a2 <= 0.0f ? 99.0f : a2;
        float a3 = a(SystemProperties.a("java.specification.version", new g(6)));
        JavaVersion javaVersion29 = new JavaVersion("JAVA_RECENT", 28, a2, Float.toString(a3 > 0.0f ? a3 : 99.0f));
        G = javaVersion29;
        H = new JavaVersion[]{javaVersion, javaVersion2, javaVersion3, javaVersion4, javaVersion5, javaVersion6, javaVersion7, javaVersion8, javaVersion9, javaVersion10, javaVersion11, javaVersion12, javaVersion13, javaVersion14, javaVersion15, javaVersion16, javaVersion17, javaVersion18, javaVersion19, javaVersion20, javaVersion21, javaVersion22, javaVersion23, javaVersion24, javaVersion25, javaVersion26, javaVersion27, javaVersion28, javaVersion29};
    }

    public JavaVersion(String str, int i2, float f, String str2) {
        this.f22346c = f;
        this.f = str2;
    }

    public static float a(String str) {
        if (!str.contains(".")) {
            try {
                return Float.parseFloat(str);
            } catch (RuntimeException unused) {
                return -1.0f;
            }
        }
        String[] split2 = RegExUtils.f22353a.split(str);
        if (split2.length >= 2) {
            try {
                return Float.parseFloat(split2[0] + '.' + split2[1]);
            } catch (RuntimeException unused2) {
            }
        }
        return -1.0f;
    }

    public static JavaVersion valueOf(String str) {
        return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
    }

    public static JavaVersion[] values() {
        return (JavaVersion[]) H.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f;
    }
}
