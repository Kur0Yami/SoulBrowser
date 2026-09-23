package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import java.util.Locale;

/* loaded from: classes.dex */
public class VersionInfo {

    /* renamed from: a, reason: collision with root package name */
    public final int f2950a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2951c;

    public VersionInfo(int i, int i2, int i3) {
        this.f2950a = i;
        this.b = i2;
        this.f2951c = i3;
    }

    public int getMajorVersion() {
        return this.f2950a;
    }

    public int getMicroVersion() {
        return this.f2951c;
    }

    public int getMinorVersion() {
        return this.b;
    }

    @NonNull
    public String toString() {
        Locale locale = Locale.US;
        return this.f2950a + "." + this.b + "." + this.f2951c;
    }
}
