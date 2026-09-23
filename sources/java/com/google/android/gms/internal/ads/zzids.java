package com.google.android.gms.internal.ads;

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
/* loaded from: classes.dex */
public final class zzids {
    public static final zzids g;
    public static final zzids h;
    public static final zzids i;
    public static final /* synthetic */ zzids[] j;

    /* renamed from: c, reason: collision with root package name */
    public final zzidt f8956c;
    public final int f;

    /* JADX INFO: Fake field, exist only in values array */
    zzids EF0;

    /* JADX INFO: Fake field, exist only in values array */
    zzids EF1;

    /* JADX INFO: Fake field, exist only in values array */
    zzids EF2;

    static {
        zzids zzidsVar = new zzids("DOUBLE", 0, zzidt.h, 1);
        zzids zzidsVar2 = new zzids("FLOAT", 1, zzidt.g, 5);
        zzidt zzidtVar = zzidt.f;
        zzids zzidsVar3 = new zzids("INT64", 2, zzidtVar, 0);
        zzids zzidsVar4 = new zzids("UINT64", 3, zzidtVar, 0);
        zzidt zzidtVar2 = zzidt.f8957c;
        zzids zzidsVar5 = new zzids("INT32", 4, zzidtVar2, 0);
        zzids zzidsVar6 = new zzids("FIXED64", 5, zzidtVar, 1);
        zzids zzidsVar7 = new zzids("FIXED32", 6, zzidtVar2, 5);
        zzids zzidsVar8 = new zzids("BOOL", 7, zzidt.i, 0);
        zzids zzidsVar9 = new zzids("STRING", 8, zzidt.j, 2);
        g = zzidsVar9;
        zzidt zzidtVar3 = zzidt.m;
        zzids zzidsVar10 = new zzids("GROUP", 9, zzidtVar3, 3);
        h = zzidsVar10;
        zzids zzidsVar11 = new zzids("MESSAGE", 10, zzidtVar3, 2);
        i = zzidsVar11;
        j = new zzids[]{zzidsVar, zzidsVar2, zzidsVar3, zzidsVar4, zzidsVar5, zzidsVar6, zzidsVar7, zzidsVar8, zzidsVar9, zzidsVar10, zzidsVar11, new zzids("BYTES", 11, zzidt.k, 2), new zzids("UINT32", 12, zzidtVar2, 0), new zzids("ENUM", 13, zzidt.l, 0), new zzids("SFIXED32", 14, zzidtVar2, 5), new zzids("SFIXED64", 15, zzidtVar, 1), new zzids("SINT32", 16, zzidtVar2, 0), new zzids("SINT64", 17, zzidtVar, 0)};
    }

    public zzids(String str, int i2, zzidt zzidtVar, int i3) {
        this.f8956c = zzidtVar;
        this.f = i3;
    }

    public static zzids[] values() {
        return (zzids[]) j.clone();
    }
}
