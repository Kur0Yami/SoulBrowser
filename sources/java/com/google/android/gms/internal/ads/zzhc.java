package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
public class zzhc extends IOException {

    /* renamed from: c, reason: collision with root package name */
    public final int f8370c;

    public zzhc() {
        this.f8370c = 2008;
    }

    public zzhc(String str, int i) {
        super(str);
        this.f8370c = i;
    }

    public zzhc(String str, Exception exc, int i) {
        super(str, exc);
        this.f8370c = i;
    }

    public zzhc(int i, Exception exc) {
        super(exc);
        this.f8370c = i;
    }
}
