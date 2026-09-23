package com.google.android.gms.internal.measurement;

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
/* loaded from: classes3.dex */
public final class zzju {
    public static final zzju[] f;
    public static final /* synthetic */ zzju[] g;

    /* renamed from: c, reason: collision with root package name */
    public final int f10383c;

    /* JADX INFO: Fake field, exist only in values array */
    zzju EF0;

    static {
        zzkn zzknVar = zzkn.DOUBLE;
        zzju zzjuVar = new zzju("DOUBLE", 0, 0, 1, zzknVar);
        zzkn zzknVar2 = zzkn.FLOAT;
        zzju zzjuVar2 = new zzju("FLOAT", 1, 1, 1, zzknVar2);
        zzkn zzknVar3 = zzkn.LONG;
        zzju zzjuVar3 = new zzju("INT64", 2, 2, 1, zzknVar3);
        zzju zzjuVar4 = new zzju("UINT64", 3, 3, 1, zzknVar3);
        zzkn zzknVar4 = zzkn.INT;
        zzju zzjuVar5 = new zzju("INT32", 4, 4, 1, zzknVar4);
        zzju zzjuVar6 = new zzju("FIXED64", 5, 5, 1, zzknVar3);
        zzju zzjuVar7 = new zzju("FIXED32", 6, 6, 1, zzknVar4);
        zzkn zzknVar5 = zzkn.BOOLEAN;
        zzju zzjuVar8 = new zzju("BOOL", 7, 7, 1, zzknVar5);
        zzkn zzknVar6 = zzkn.STRING;
        zzju zzjuVar9 = new zzju("STRING", 8, 8, 1, zzknVar6);
        zzkn zzknVar7 = zzkn.MESSAGE;
        zzju zzjuVar10 = new zzju("MESSAGE", 9, 9, 1, zzknVar7);
        zzkn zzknVar8 = zzkn.BYTE_STRING;
        zzju zzjuVar11 = new zzju("BYTES", 10, 10, 1, zzknVar8);
        zzju zzjuVar12 = new zzju("UINT32", 11, 11, 1, zzknVar4);
        zzkn zzknVar9 = zzkn.ENUM;
        g = new zzju[]{zzjuVar, zzjuVar2, zzjuVar3, zzjuVar4, zzjuVar5, zzjuVar6, zzjuVar7, zzjuVar8, zzjuVar9, zzjuVar10, zzjuVar11, zzjuVar12, new zzju("ENUM", 12, 12, 1, zzknVar9), new zzju("SFIXED32", 13, 13, 1, zzknVar4), new zzju("SFIXED64", 14, 14, 1, zzknVar3), new zzju("SINT32", 15, 15, 1, zzknVar4), new zzju("SINT64", 16, 16, 1, zzknVar3), new zzju("GROUP", 17, 17, 1, zzknVar7), new zzju("DOUBLE_LIST", 18, 18, 2, zzknVar), new zzju("FLOAT_LIST", 19, 19, 2, zzknVar2), new zzju("INT64_LIST", 20, 20, 2, zzknVar3), new zzju("UINT64_LIST", 21, 21, 2, zzknVar3), new zzju("INT32_LIST", 22, 22, 2, zzknVar4), new zzju("FIXED64_LIST", 23, 23, 2, zzknVar3), new zzju("FIXED32_LIST", 24, 24, 2, zzknVar4), new zzju("BOOL_LIST", 25, 25, 2, zzknVar5), new zzju("STRING_LIST", 26, 26, 2, zzknVar6), new zzju("MESSAGE_LIST", 27, 27, 2, zzknVar7), new zzju("BYTES_LIST", 28, 28, 2, zzknVar8), new zzju("UINT32_LIST", 29, 29, 2, zzknVar4), new zzju("ENUM_LIST", 30, 30, 2, zzknVar9), new zzju("SFIXED32_LIST", 31, 31, 2, zzknVar4), new zzju("SFIXED64_LIST", 32, 32, 2, zzknVar3), new zzju("SINT32_LIST", 33, 33, 2, zzknVar4), new zzju("SINT64_LIST", 34, 34, 2, zzknVar3), new zzju("DOUBLE_LIST_PACKED", 35, 35, 3, zzknVar), new zzju("FLOAT_LIST_PACKED", 36, 36, 3, zzknVar2), new zzju("INT64_LIST_PACKED", 37, 37, 3, zzknVar3), new zzju("UINT64_LIST_PACKED", 38, 38, 3, zzknVar3), new zzju("INT32_LIST_PACKED", 39, 39, 3, zzknVar4), new zzju("FIXED64_LIST_PACKED", 40, 40, 3, zzknVar3), new zzju("FIXED32_LIST_PACKED", 41, 41, 3, zzknVar4), new zzju("BOOL_LIST_PACKED", 42, 42, 3, zzknVar5), new zzju("UINT32_LIST_PACKED", 43, 43, 3, zzknVar4), new zzju("ENUM_LIST_PACKED", 44, 44, 3, zzknVar9), new zzju("SFIXED32_LIST_PACKED", 45, 45, 3, zzknVar4), new zzju("SFIXED64_LIST_PACKED", 46, 46, 3, zzknVar3), new zzju("SINT32_LIST_PACKED", 47, 47, 3, zzknVar4), new zzju("SINT64_LIST_PACKED", 48, 48, 3, zzknVar3), new zzju("GROUP_LIST", 49, 49, 2, zzknVar7), new zzju("MAP", 50, 50, 4, zzkn.VOID)};
        zzju[] values = values();
        f = new zzju[values.length];
        for (zzju zzjuVar13 : values) {
            f[zzjuVar13.f10383c] = zzjuVar13;
        }
    }

    public zzju(String str, int i, int i2, int i3, zzkn zzknVar) {
        this.f10383c = i2;
        zzkn zzknVar2 = zzkn.VOID;
        int i4 = i3 - 1;
        if (i4 != 1) {
            if (i4 == 3) {
                zzknVar.getClass();
            }
        } else {
            zzknVar.getClass();
        }
        if (i3 == 1) {
            zzknVar.ordinal();
        }
    }

    public static zzju[] values() {
        return (zzju[]) g.clone();
    }
}
