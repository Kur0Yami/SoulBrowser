package com.google.android.ump;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class FormError {

    /* renamed from: a, reason: collision with root package name */
    public final String f12067a;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ErrorCode {
    }

    public FormError(String str) {
        this.f12067a = str;
    }
}
