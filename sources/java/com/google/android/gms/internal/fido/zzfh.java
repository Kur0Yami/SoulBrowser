package com.google.android.gms.internal.fido;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
final class zzfh {

    /* renamed from: c, reason: collision with root package name */
    public static final zzfh f10305c;
    public static final zzfh f;
    public static final zzfh g;
    public static final zzfh h;
    public static final /* synthetic */ zzfh[] i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.fido.zzfh] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.gms.internal.fido.zzfh] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.gms.internal.fido.zzfh] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.google.android.gms.internal.fido.zzfh] */
    static {
        ?? r0 = new Enum("BOOLEAN", 0);
        f10305c = r0;
        ?? r1 = new Enum("STRING", 1);
        f = r1;
        ?? r3 = new Enum("LONG", 2);
        g = r3;
        ?? r5 = new Enum("DOUBLE", 3);
        h = r5;
        i = new zzfh[]{r0, r1, r3, r5};
    }

    public static /* bridge */ /* synthetic */ zzfh a(Object obj) {
        if (obj instanceof String) {
            return f;
        }
        if (obj instanceof Boolean) {
            return f10305c;
        }
        if (obj instanceof Long) {
            return g;
        }
        if (obj instanceof Double) {
            return h;
        }
        throw new AssertionError("invalid tag type: ".concat(String.valueOf(obj.getClass())));
    }

    public static zzfh[] values() {
        return (zzfh[]) i.clone();
    }
}
