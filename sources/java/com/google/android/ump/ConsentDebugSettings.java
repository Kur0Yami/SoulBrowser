package com.google.android.ump;

import android.content.Context;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ConsentDebugSettings {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f12064a;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f12065a = new ArrayList();
        public final Context b;

        public Builder(Context context) {
            this.b = context.getApplicationContext();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface DebugGeography {
    }
}
