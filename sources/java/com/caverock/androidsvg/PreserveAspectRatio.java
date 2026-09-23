package com.caverock.androidsvg;

/* loaded from: classes.dex */
public class PreserveAspectRatio {

    /* renamed from: c, reason: collision with root package name */
    public static final PreserveAspectRatio f2529c = new PreserveAspectRatio(Alignment.f2531c, null);
    public static final PreserveAspectRatio d = new PreserveAspectRatio(Alignment.j, Scale.f2532c);

    /* renamed from: a, reason: collision with root package name */
    public final Alignment f2530a;
    public final Scale b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Alignment {

        /* renamed from: c, reason: collision with root package name */
        public static final Alignment f2531c;
        public static final Alignment f;
        public static final Alignment g;
        public static final Alignment h;
        public static final Alignment i;
        public static final Alignment j;
        public static final Alignment k;
        public static final Alignment l;
        public static final Alignment m;
        public static final Alignment n;
        public static final /* synthetic */ Alignment[] o;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Alignment] */
        static {
            ?? r0 = new Enum("none", 0);
            f2531c = r0;
            ?? r1 = new Enum("xMinYMin", 1);
            f = r1;
            ?? r3 = new Enum("xMidYMin", 2);
            g = r3;
            ?? r5 = new Enum("xMaxYMin", 3);
            h = r5;
            ?? r7 = new Enum("xMinYMid", 4);
            i = r7;
            ?? r9 = new Enum("xMidYMid", 5);
            j = r9;
            ?? r11 = new Enum("xMaxYMid", 6);
            k = r11;
            ?? r13 = new Enum("xMinYMax", 7);
            l = r13;
            ?? r15 = new Enum("xMidYMax", 8);
            m = r15;
            ?? r2 = new Enum("xMaxYMax", 9);
            n = r2;
            o = new Alignment[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2};
        }

        public static Alignment valueOf(String str) {
            return (Alignment) Enum.valueOf(Alignment.class, str);
        }

        public static Alignment[] values() {
            return (Alignment[]) o.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Scale {

        /* renamed from: c, reason: collision with root package name */
        public static final Scale f2532c;
        public static final Scale f;
        public static final /* synthetic */ Scale[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Scale] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.PreserveAspectRatio$Scale] */
        static {
            ?? r0 = new Enum("meet", 0);
            f2532c = r0;
            ?? r1 = new Enum("slice", 1);
            f = r1;
            g = new Scale[]{r0, r1};
        }

        public static Scale valueOf(String str) {
            return (Scale) Enum.valueOf(Scale.class, str);
        }

        public static Scale[] values() {
            return (Scale[]) g.clone();
        }
    }

    public PreserveAspectRatio(Alignment alignment, Scale scale) {
        this.f2530a = alignment;
        this.b = scale;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PreserveAspectRatio preserveAspectRatio = (PreserveAspectRatio) obj;
        if (this.f2530a == preserveAspectRatio.f2530a && this.b == preserveAspectRatio.b) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return this.f2530a + " " + this.b;
    }
}
