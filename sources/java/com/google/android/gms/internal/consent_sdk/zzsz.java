package com.google.android.gms.internal.consent_sdk;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'g' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class zzsz {
    public static final zzsz g;
    public static final zzsz h;
    public static final zzsz i;
    public static final /* synthetic */ zzsz[] j;

    /* renamed from: c, reason: collision with root package name */
    public final zzta f10119c;
    public final int f;

    /* JADX INFO: Fake field, exist only in values array */
    zzsz EF0;

    /* JADX INFO: Fake field, exist only in values array */
    zzsz EF1;

    static {
        zzsz zzszVar = new zzsz("DOUBLE", 0, zzta.h, 1);
        zzsz zzszVar2 = new zzsz("FLOAT", 1, zzta.g, 5);
        zzta zztaVar = zzta.f;
        zzsz zzszVar3 = new zzsz("INT64", 2, zztaVar, 0);
        g = zzszVar3;
        zzsz zzszVar4 = new zzsz("UINT64", 3, zztaVar, 0);
        zzta zztaVar2 = zzta.f10121c;
        zzsz zzszVar5 = new zzsz("INT32", 4, zztaVar2, 0);
        zzsz zzszVar6 = new zzsz("FIXED64", 5, zztaVar, 1);
        zzsz zzszVar7 = new zzsz("FIXED32", 6, zztaVar2, 5);
        zzsz zzszVar8 = new zzsz("BOOL", 7, zzta.i, 0);
        zzsz zzszVar9 = new zzsz("STRING", 8, zzta.j, 2);
        h = zzszVar9;
        zzta zztaVar3 = zzta.m;
        zzsz zzszVar10 = new zzsz("GROUP", 9, zztaVar3, 3);
        i = zzszVar10;
        j = new zzsz[]{zzszVar, zzszVar2, zzszVar3, zzszVar4, zzszVar5, zzszVar6, zzszVar7, zzszVar8, zzszVar9, zzszVar10, new zzsz("MESSAGE", 10, zztaVar3, 2), new zzsz("BYTES", 11, zzta.k, 2), new zzsz("UINT32", 12, zztaVar2, 0), new zzsz("ENUM", 13, zzta.l, 0), new zzsz("SFIXED32", 14, zztaVar2, 5), new zzsz("SFIXED64", 15, zztaVar, 1), new zzsz("SINT32", 16, zztaVar2, 0), new zzsz("SINT64", 17, zztaVar, 0)};
    }

    public zzsz(String str, int i2, zzta zztaVar, int i3) {
        this.f10119c = zztaVar;
        this.f = i3;
    }

    public static zzsz[] values() {
        return (zzsz[]) j.clone();
    }
}
