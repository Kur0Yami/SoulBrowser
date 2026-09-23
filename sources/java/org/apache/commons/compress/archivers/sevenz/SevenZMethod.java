package org.apache.commons.compress.archivers.sevenz;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class SevenZMethod {

    /* renamed from: c, reason: collision with root package name */
    public static final SevenZMethod f22270c;
    public static final SevenZMethod f;
    public static final SevenZMethod g;
    public static final SevenZMethod h;
    public static final SevenZMethod i;
    public static final SevenZMethod j;
    public static final SevenZMethod k;
    public static final SevenZMethod l;
    public static final SevenZMethod m;
    public static final SevenZMethod n;
    public static final SevenZMethod o;
    public static final SevenZMethod p;
    public static final SevenZMethod q;
    public static final /* synthetic */ SevenZMethod[] r;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.sevenz.SevenZMethod] */
    static {
        ?? r0 = new Enum("COPY", 0);
        f22270c = r0;
        ?? r1 = new Enum("LZMA", 1);
        f = r1;
        ?? r3 = new Enum("LZMA2", 2);
        g = r3;
        ?? r5 = new Enum("DEFLATE", 3);
        h = r5;
        ?? r7 = new Enum("BZIP2", 4);
        i = r7;
        ?? r9 = new Enum("AES256SHA256", 5);
        j = r9;
        ?? r11 = new Enum("BCJ_X86_FILTER", 6);
        k = r11;
        ?? r13 = new Enum("BCJ_PPC_FILTER", 7);
        l = r13;
        ?? r15 = new Enum("BCJ_IA64_FILTER", 8);
        m = r15;
        ?? r2 = new Enum("BCJ_ARM_FILTER", 9);
        n = r2;
        ?? r4 = new Enum("BCJ_ARM_THUMB_FILTER", 10);
        o = r4;
        ?? r6 = new Enum("BCJ_SPARC_FILTER", 11);
        p = r6;
        ?? r8 = new Enum("DELTA_FILTER", 12);
        q = r8;
        r = new SevenZMethod[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6, r8};
    }

    public static SevenZMethod valueOf(String str) {
        return (SevenZMethod) Enum.valueOf(SevenZMethod.class, str);
    }

    public static SevenZMethod[] values() {
        return (SevenZMethod[]) r.clone();
    }
}
