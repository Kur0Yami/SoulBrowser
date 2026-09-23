package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcelable;

/* loaded from: classes.dex */
public final class RemoteActionCompat implements VersionedParcelable {

    /* renamed from: a, reason: collision with root package name */
    public IconCompat f644a;
    public CharSequence b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f645c;
    public PendingIntent d;
    public boolean e;
    public boolean f;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RestrictTo
    public RemoteActionCompat() {
    }
}
