package com.google.android.gms.appset;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class AppSetIdInfo {

    /* renamed from: a, reason: collision with root package name */
    public final String f3330a;
    public final int b;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Scope {
    }

    public AppSetIdInfo(String str, int i) {
        this.f3330a = str;
        this.b = i;
    }
}
