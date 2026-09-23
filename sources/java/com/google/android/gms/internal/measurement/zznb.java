package com.google.android.gms.internal.measurement;

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
public final class zznb {
    public static final /* synthetic */ zznb[] f;

    /* renamed from: c, reason: collision with root package name */
    public final zznc f10413c;

    /* JADX INFO: Fake field, exist only in values array */
    zznb EF0;

    /* JADX INFO: Fake field, exist only in values array */
    zznb EF1;

    /* JADX INFO: Fake field, exist only in values array */
    zznb EF2;

    static {
        zznb zznbVar = new zznb("DOUBLE", 0, zznc.DOUBLE);
        zznb zznbVar2 = new zznb("FLOAT", 1, zznc.FLOAT);
        zznc zzncVar = zznc.LONG;
        zznb zznbVar3 = new zznb("INT64", 2, zzncVar);
        zznb zznbVar4 = new zznb("UINT64", 3, zzncVar);
        zznc zzncVar2 = zznc.INT;
        zznb zznbVar5 = new zznb("INT32", 4, zzncVar2);
        zznb zznbVar6 = new zznb("FIXED64", 5, zzncVar);
        zznb zznbVar7 = new zznb("FIXED32", 6, zzncVar2);
        zznb zznbVar8 = new zznb("BOOL", 7, zznc.BOOLEAN);
        zznb zznbVar9 = new zznb("STRING", 8, zznc.STRING);
        zznc zzncVar3 = zznc.MESSAGE;
        f = new zznb[]{zznbVar, zznbVar2, zznbVar3, zznbVar4, zznbVar5, zznbVar6, zznbVar7, zznbVar8, zznbVar9, new zznb("GROUP", 9, zzncVar3), new zznb("MESSAGE", 10, zzncVar3), new zznb("BYTES", 11, zznc.BYTE_STRING), new zznb("UINT32", 12, zzncVar2), new zznb("ENUM", 13, zznc.ENUM), new zznb("SFIXED32", 14, zzncVar2), new zznb("SFIXED64", 15, zzncVar), new zznb("SINT32", 16, zzncVar2), new zznb("SINT64", 17, zzncVar)};
    }

    public zznb(String str, int i, zznc zzncVar) {
        this.f10413c = zzncVar;
    }

    public static zznb[] values() {
        return (zznb[]) f.clone();
    }
}
