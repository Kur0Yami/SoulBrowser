package com.google.android.gms.internal.drive;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'h' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class zznm {
    public static final zznm f;
    public static final zznm g;
    public static final zznm h;
    public static final zznm i;
    public static final zznm j;
    public static final zznm k;
    public static final zznm l;
    public static final zznm m;
    public static final zznm n;
    public static final zznm o;
    public static final zznm p;
    public static final zznm q;
    public static final zznm r;
    public static final zznm s;
    public static final zznm t;
    public static final zznm u;
    public static final zznm v;
    public static final zznm w;
    public static final /* synthetic */ zznm[] x;

    /* renamed from: c, reason: collision with root package name */
    public final zznr f10264c;

    static {
        zznm zznmVar = new zznm("DOUBLE", 0, zznr.DOUBLE, 1);
        f = zznmVar;
        zznm zznmVar2 = new zznm("FLOAT", 1, zznr.FLOAT, 5);
        g = zznmVar2;
        zznr zznrVar = zznr.LONG;
        zznm zznmVar3 = new zznm("INT64", 2, zznrVar, 0);
        h = zznmVar3;
        zznm zznmVar4 = new zznm("UINT64", 3, zznrVar, 0);
        i = zznmVar4;
        zznr zznrVar2 = zznr.INT;
        zznm zznmVar5 = new zznm("INT32", 4, zznrVar2, 0);
        j = zznmVar5;
        zznm zznmVar6 = new zznm("FIXED64", 5, zznrVar, 1);
        k = zznmVar6;
        zznm zznmVar7 = new zznm("FIXED32", 6, zznrVar2, 5);
        l = zznmVar7;
        zznm zznmVar8 = new zznm("BOOL", 7, zznr.BOOLEAN, 0);
        m = zznmVar8;
        zznm zznmVar9 = new zznm("STRING", 8, zznr.STRING, 2);
        n = zznmVar9;
        zznr zznrVar3 = zznr.MESSAGE;
        zznm zznmVar10 = new zznm("GROUP", 9, zznrVar3, 3);
        o = zznmVar10;
        zznm zznmVar11 = new zznm("MESSAGE", 10, zznrVar3, 2);
        p = zznmVar11;
        zznm zznmVar12 = new zznm("BYTES", 11, zznr.BYTE_STRING, 2);
        q = zznmVar12;
        zznm zznmVar13 = new zznm("UINT32", 12, zznrVar2, 0);
        r = zznmVar13;
        zznm zznmVar14 = new zznm("ENUM", 13, zznr.ENUM, 0);
        s = zznmVar14;
        zznm zznmVar15 = new zznm("SFIXED32", 14, zznrVar2, 5);
        t = zznmVar15;
        zznm zznmVar16 = new zznm("SFIXED64", 15, zznrVar, 1);
        u = zznmVar16;
        zznm zznmVar17 = new zznm("SINT32", 16, zznrVar2, 0);
        v = zznmVar17;
        zznm zznmVar18 = new zznm("SINT64", 17, zznrVar, 0);
        w = zznmVar18;
        x = new zznm[]{zznmVar, zznmVar2, zznmVar3, zznmVar4, zznmVar5, zznmVar6, zznmVar7, zznmVar8, zznmVar9, zznmVar10, zznmVar11, zznmVar12, zznmVar13, zznmVar14, zznmVar15, zznmVar16, zznmVar17, zznmVar18};
    }

    public zznm(String str, int i2, zznr zznrVar, int i3) {
        this.f10264c = zznrVar;
    }

    public static zznm[] values() {
        return (zznm[]) x.clone();
    }
}
