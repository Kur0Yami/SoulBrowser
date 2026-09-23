package androidx.mediarouter.media;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class MediaRouterParams {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1390a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1391c;
    public final boolean d;
    public final Bundle e = Bundle.EMPTY;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1392a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1393c;
        public boolean d;
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface DialogType {
    }

    public MediaRouterParams(Builder builder) {
        this.f1390a = builder.f1392a;
        this.b = builder.b;
        this.f1391c = builder.f1393c;
        this.d = builder.d;
    }
}
