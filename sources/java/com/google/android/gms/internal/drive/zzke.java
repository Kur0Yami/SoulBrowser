package com.google.android.gms.internal.drive;

import java.lang.reflect.Type;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class zzke {
    public static final zzke f;
    public static final zzke g;
    public static final zzke[] h;
    public static final Type[] i;
    public static final /* synthetic */ zzke[] j;

    /* renamed from: c, reason: collision with root package name */
    public final int f10216c;

    /* JADX INFO: Fake field, exist only in values array */
    zzke EF0;

    static {
        zzks zzksVar = zzks.DOUBLE;
        zzkg zzkgVar = zzkg.f10218c;
        zzke zzkeVar = new zzke("DOUBLE", 0, 0, zzkgVar, zzksVar);
        zzks zzksVar2 = zzks.FLOAT;
        zzke zzkeVar2 = new zzke("FLOAT", 1, 1, zzkgVar, zzksVar2);
        zzks zzksVar3 = zzks.LONG;
        zzke zzkeVar3 = new zzke("INT64", 2, 2, zzkgVar, zzksVar3);
        zzke zzkeVar4 = new zzke("UINT64", 3, 3, zzkgVar, zzksVar3);
        zzks zzksVar4 = zzks.INT;
        zzke zzkeVar5 = new zzke("INT32", 4, 4, zzkgVar, zzksVar4);
        zzke zzkeVar6 = new zzke("FIXED64", 5, 5, zzkgVar, zzksVar3);
        zzke zzkeVar7 = new zzke("FIXED32", 6, 6, zzkgVar, zzksVar4);
        zzks zzksVar5 = zzks.BOOLEAN;
        zzke zzkeVar8 = new zzke("BOOL", 7, 7, zzkgVar, zzksVar5);
        zzks zzksVar6 = zzks.STRING;
        zzke zzkeVar9 = new zzke("STRING", 8, 8, zzkgVar, zzksVar6);
        zzks zzksVar7 = zzks.MESSAGE;
        zzke zzkeVar10 = new zzke("MESSAGE", 9, 9, zzkgVar, zzksVar7);
        zzks zzksVar8 = zzks.BYTE_STRING;
        zzke zzkeVar11 = new zzke("BYTES", 10, 10, zzkgVar, zzksVar8);
        zzke zzkeVar12 = new zzke("UINT32", 11, 11, zzkgVar, zzksVar4);
        zzks zzksVar9 = zzks.ENUM;
        zzke zzkeVar13 = new zzke("ENUM", 12, 12, zzkgVar, zzksVar9);
        zzke zzkeVar14 = new zzke("SFIXED32", 13, 13, zzkgVar, zzksVar4);
        zzke zzkeVar15 = new zzke("SFIXED64", 14, 14, zzkgVar, zzksVar3);
        zzke zzkeVar16 = new zzke("SINT32", 15, 15, zzkgVar, zzksVar4);
        zzke zzkeVar17 = new zzke("SINT64", 16, 16, zzkgVar, zzksVar3);
        zzke zzkeVar18 = new zzke("GROUP", 17, 17, zzkgVar, zzksVar7);
        zzkg zzkgVar2 = zzkg.f;
        zzke zzkeVar19 = new zzke("DOUBLE_LIST", 18, 18, zzkgVar2, zzksVar);
        zzke zzkeVar20 = new zzke("FLOAT_LIST", 19, 19, zzkgVar2, zzksVar2);
        zzke zzkeVar21 = new zzke("INT64_LIST", 20, 20, zzkgVar2, zzksVar3);
        zzke zzkeVar22 = new zzke("UINT64_LIST", 21, 21, zzkgVar2, zzksVar3);
        zzke zzkeVar23 = new zzke("INT32_LIST", 22, 22, zzkgVar2, zzksVar4);
        zzke zzkeVar24 = new zzke("FIXED64_LIST", 23, 23, zzkgVar2, zzksVar3);
        zzke zzkeVar25 = new zzke("FIXED32_LIST", 24, 24, zzkgVar2, zzksVar4);
        zzke zzkeVar26 = new zzke("BOOL_LIST", 25, 25, zzkgVar2, zzksVar5);
        zzke zzkeVar27 = new zzke("STRING_LIST", 26, 26, zzkgVar2, zzksVar6);
        zzke zzkeVar28 = new zzke("MESSAGE_LIST", 27, 27, zzkgVar2, zzksVar7);
        zzke zzkeVar29 = new zzke("BYTES_LIST", 28, 28, zzkgVar2, zzksVar8);
        zzke zzkeVar30 = new zzke("UINT32_LIST", 29, 29, zzkgVar2, zzksVar4);
        zzke zzkeVar31 = new zzke("ENUM_LIST", 30, 30, zzkgVar2, zzksVar9);
        zzke zzkeVar32 = new zzke("SFIXED32_LIST", 31, 31, zzkgVar2, zzksVar4);
        zzke zzkeVar33 = new zzke("SFIXED64_LIST", 32, 32, zzkgVar2, zzksVar3);
        zzke zzkeVar34 = new zzke("SINT32_LIST", 33, 33, zzkgVar2, zzksVar4);
        zzke zzkeVar35 = new zzke("SINT64_LIST", 34, 34, zzkgVar2, zzksVar3);
        zzkg zzkgVar3 = zzkg.g;
        zzke zzkeVar36 = new zzke("DOUBLE_LIST_PACKED", 35, 35, zzkgVar3, zzksVar);
        f = zzkeVar36;
        zzke zzkeVar37 = new zzke("FLOAT_LIST_PACKED", 36, 36, zzkgVar3, zzksVar2);
        zzke zzkeVar38 = new zzke("INT64_LIST_PACKED", 37, 37, zzkgVar3, zzksVar3);
        zzke zzkeVar39 = new zzke("UINT64_LIST_PACKED", 38, 38, zzkgVar3, zzksVar3);
        zzke zzkeVar40 = new zzke("INT32_LIST_PACKED", 39, 39, zzkgVar3, zzksVar4);
        zzke zzkeVar41 = new zzke("FIXED64_LIST_PACKED", 40, 40, zzkgVar3, zzksVar3);
        zzke zzkeVar42 = new zzke("FIXED32_LIST_PACKED", 41, 41, zzkgVar3, zzksVar4);
        zzke zzkeVar43 = new zzke("BOOL_LIST_PACKED", 42, 42, zzkgVar3, zzksVar5);
        zzke zzkeVar44 = new zzke("UINT32_LIST_PACKED", 43, 43, zzkgVar3, zzksVar4);
        zzke zzkeVar45 = new zzke("ENUM_LIST_PACKED", 44, 44, zzkgVar3, zzksVar9);
        zzke zzkeVar46 = new zzke("SFIXED32_LIST_PACKED", 45, 45, zzkgVar3, zzksVar4);
        zzke zzkeVar47 = new zzke("SFIXED64_LIST_PACKED", 46, 46, zzkgVar3, zzksVar3);
        zzke zzkeVar48 = new zzke("SINT32_LIST_PACKED", 47, 47, zzkgVar3, zzksVar4);
        zzke zzkeVar49 = new zzke("SINT64_LIST_PACKED", 48, 48, zzkgVar3, zzksVar3);
        g = zzkeVar49;
        j = new zzke[]{zzkeVar, zzkeVar2, zzkeVar3, zzkeVar4, zzkeVar5, zzkeVar6, zzkeVar7, zzkeVar8, zzkeVar9, zzkeVar10, zzkeVar11, zzkeVar12, zzkeVar13, zzkeVar14, zzkeVar15, zzkeVar16, zzkeVar17, zzkeVar18, zzkeVar19, zzkeVar20, zzkeVar21, zzkeVar22, zzkeVar23, zzkeVar24, zzkeVar25, zzkeVar26, zzkeVar27, zzkeVar28, zzkeVar29, zzkeVar30, zzkeVar31, zzkeVar32, zzkeVar33, zzkeVar34, zzkeVar35, zzkeVar36, zzkeVar37, zzkeVar38, zzkeVar39, zzkeVar40, zzkeVar41, zzkeVar42, zzkeVar43, zzkeVar44, zzkeVar45, zzkeVar46, zzkeVar47, zzkeVar48, zzkeVar49, new zzke("GROUP_LIST", 49, 49, zzkgVar2, zzksVar7), new zzke("MAP", 50, 50, zzkg.h, zzks.VOID)};
        i = new Type[0];
        zzke[] values = values();
        h = new zzke[values.length];
        for (zzke zzkeVar50 : values) {
            h[zzkeVar50.f10216c] = zzkeVar50;
        }
    }

    public zzke(String str, int i2, int i3, zzkg zzkgVar, zzks zzksVar) {
        this.f10216c = i3;
        int i4 = zzkf.f10217a[zzkgVar.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                zzksVar.getClass();
            }
        } else {
            zzksVar.getClass();
        }
        if (zzkgVar == zzkg.f10218c) {
            int i5 = zzkf.b[zzksVar.ordinal()];
        }
    }

    public static zzke[] values() {
        return (zzke[]) j.clone();
    }
}
