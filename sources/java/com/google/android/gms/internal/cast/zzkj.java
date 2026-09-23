package com.google.android.gms.internal.cast;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class zzkj {

    /* renamed from: c, reason: collision with root package name */
    public static final zzkj f9747c;
    public static final zzkj f;
    public static final zzkj g;
    public static final zzkj h;
    public static final /* synthetic */ zzkj[] i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzkj, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.cast.zzkj, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.cast.zzkj, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.cast.zzkj, java.lang.Enum] */
    static {
        ?? r0 = new Enum("BOOLEAN", 0);
        f9747c = r0;
        ?? r1 = new Enum("STRING", 1);
        f = r1;
        ?? r3 = new Enum("LONG", 2);
        g = r3;
        ?? r5 = new Enum("DOUBLE", 3);
        h = r5;
        i = new zzkj[]{r0, r1, r3, r5};
    }

    public static /* synthetic */ zzkj a(Object obj) {
        if (obj instanceof String) {
            return f;
        }
        if (obj instanceof Boolean) {
            return f9747c;
        }
        if (obj instanceof Long) {
            return g;
        }
        if (obj instanceof Double) {
            return h;
        }
        throw new AssertionError("invalid tag type: ".concat(String.valueOf(obj.getClass())));
    }

    public static zzkj[] values() {
        return (zzkj[]) i.clone();
    }
}
