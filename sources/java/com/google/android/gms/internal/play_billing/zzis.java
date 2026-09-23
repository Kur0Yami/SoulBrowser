package com.google.android.gms.internal.play_billing;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes3.dex */
public final class zzis {
    public static final zzis g;
    public static final zzis h;
    public static final zzis i;
    public static final /* synthetic */ zzis[] j;

    /* renamed from: c, reason: collision with root package name */
    public final zzit f11543c;
    public final int f;

    /* JADX INFO: Fake field, exist only in values array */
    zzis EF0;

    /* JADX INFO: Fake field, exist only in values array */
    zzis EF1;

    /* JADX INFO: Fake field, exist only in values array */
    zzis EF2;

    static {
        zzis zzisVar = new zzis("DOUBLE", 0, zzit.h, 1);
        zzis zzisVar2 = new zzis("FLOAT", 1, zzit.g, 5);
        zzit zzitVar = zzit.f;
        zzis zzisVar3 = new zzis("INT64", 2, zzitVar, 0);
        zzis zzisVar4 = new zzis("UINT64", 3, zzitVar, 0);
        zzit zzitVar2 = zzit.f11544c;
        zzis zzisVar5 = new zzis("INT32", 4, zzitVar2, 0);
        zzis zzisVar6 = new zzis("FIXED64", 5, zzitVar, 1);
        zzis zzisVar7 = new zzis("FIXED32", 6, zzitVar2, 5);
        zzis zzisVar8 = new zzis("BOOL", 7, zzit.i, 0);
        zzis zzisVar9 = new zzis("STRING", 8, zzit.j, 2);
        g = zzisVar9;
        zzit zzitVar3 = zzit.m;
        zzis zzisVar10 = new zzis("GROUP", 9, zzitVar3, 3);
        h = zzisVar10;
        zzis zzisVar11 = new zzis("MESSAGE", 10, zzitVar3, 2);
        i = zzisVar11;
        j = new zzis[]{zzisVar, zzisVar2, zzisVar3, zzisVar4, zzisVar5, zzisVar6, zzisVar7, zzisVar8, zzisVar9, zzisVar10, zzisVar11, new zzis("BYTES", 11, zzit.k, 2), new zzis("UINT32", 12, zzitVar2, 0), new zzis("ENUM", 13, zzit.l, 0), new zzis("SFIXED32", 14, zzitVar2, 5), new zzis("SFIXED64", 15, zzitVar, 1), new zzis("SINT32", 16, zzitVar2, 0), new zzis("SINT64", 17, zzitVar, 0)};
    }

    public zzis(String str, int i2, zzit zzitVar, int i3) {
        this.f11543c = zzitVar;
        this.f = i3;
    }

    public static zzis[] values() {
        return (zzis[]) j.clone();
    }
}
