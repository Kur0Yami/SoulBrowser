package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaki implements zzafv {
    public static final zzaki b = new zzaki(true);

    /* renamed from: c, reason: collision with root package name */
    public static final zzaki f4126c = new zzaki(false);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4127a;

    public zzaki(boolean z) {
        this.f4127a = z;
    }

    public final String toString() {
        boolean z = !this.f4127a;
        StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 33);
        sb.append("IncorrectFragmentation{expected=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
