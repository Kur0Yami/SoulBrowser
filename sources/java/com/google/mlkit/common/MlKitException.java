package com.google.mlkit.common;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class MlKitException extends Exception {

    /* renamed from: c, reason: collision with root package name */
    public final int f12762c;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface ErrorCode {
    }

    public MlKitException(String str, int i) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."));
        this.f12762c = i;
    }

    public MlKitException(Exception exc, String str) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."), exc);
        this.f12762c = 13;
    }
}
