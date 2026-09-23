package com.google.android.gms.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class zzn {

    /* renamed from: c, reason: collision with root package name */
    public static final zzn f3423c;
    public static final zzn f;
    public static final /* synthetic */ zzn[] g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.auth.zzn, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.auth.zzn, java.lang.Enum] */
    static {
        ?? r0 = new Enum("LEGACY", 0);
        f3423c = r0;
        ?? r1 = new Enum("AUTH_INSTANTIATION", 1);
        f = r1;
        g = new zzn[]{r0, r1, new Enum("CALLER_INSTANTIATION", 2)};
    }

    public static zzn[] values() {
        return (zzn[]) g.clone();
    }
}
