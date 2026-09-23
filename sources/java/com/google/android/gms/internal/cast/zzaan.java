package com.google.android.gms.internal.cast;

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
public final class zzaan {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzaan[] f9610c;

    /* JADX INFO: Fake field, exist only in values array */
    zzaan EF0;

    /* JADX INFO: Fake field, exist only in values array */
    zzaan EF1;

    /* JADX INFO: Fake field, exist only in values array */
    zzaan EF2;

    static {
        zzaan zzaanVar = new zzaan("DOUBLE", 0, zzaao.h);
        zzaan zzaanVar2 = new zzaan("FLOAT", 1, zzaao.g);
        zzaao zzaaoVar = zzaao.f;
        zzaan zzaanVar3 = new zzaan("INT64", 2, zzaaoVar);
        zzaan zzaanVar4 = new zzaan("UINT64", 3, zzaaoVar);
        zzaao zzaaoVar2 = zzaao.f9611c;
        zzaan zzaanVar5 = new zzaan("INT32", 4, zzaaoVar2);
        zzaan zzaanVar6 = new zzaan("FIXED64", 5, zzaaoVar);
        zzaan zzaanVar7 = new zzaan("FIXED32", 6, zzaaoVar2);
        zzaan zzaanVar8 = new zzaan("BOOL", 7, zzaao.i);
        zzaan zzaanVar9 = new zzaan("STRING", 8, zzaao.j);
        zzaao zzaaoVar3 = zzaao.m;
        f9610c = new zzaan[]{zzaanVar, zzaanVar2, zzaanVar3, zzaanVar4, zzaanVar5, zzaanVar6, zzaanVar7, zzaanVar8, zzaanVar9, new zzaan("GROUP", 9, zzaaoVar3), new zzaan("MESSAGE", 10, zzaaoVar3), new zzaan("BYTES", 11, zzaao.k), new zzaan("UINT32", 12, zzaaoVar2), new zzaan("ENUM", 13, zzaao.l), new zzaan("SFIXED32", 14, zzaaoVar2), new zzaan("SFIXED64", 15, zzaaoVar), new zzaan("SINT32", 16, zzaaoVar2), new zzaan("SINT64", 17, zzaaoVar)};
    }

    public zzaan(String str, int i, zzaao zzaaoVar) {
    }

    public static zzaan[] values() {
        return (zzaan[]) f9610c.clone();
    }
}
