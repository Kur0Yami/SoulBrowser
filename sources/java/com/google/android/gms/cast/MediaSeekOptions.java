package com.google.android.gms.cast;

import com.google.android.gms.common.internal.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class MediaSeekOptions {

    /* renamed from: a, reason: collision with root package name */
    public final long f3453a;
    public final boolean b;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public long f3454a;
        public boolean b;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ResumeState {
    }

    public /* synthetic */ MediaSeekOptions(long j, boolean z) {
        this.f3453a = j;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaSeekOptions) {
                MediaSeekOptions mediaSeekOptions = (MediaSeekOptions) obj;
                if (this.f3453a == mediaSeekOptions.f3453a && this.b == mediaSeekOptions.b && Objects.equal(null, null)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f3453a), 0, Boolean.valueOf(this.b), null);
    }
}
