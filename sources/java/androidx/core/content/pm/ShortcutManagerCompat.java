package androidx.core.content.pm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class ShortcutManagerCompat {

    /* renamed from: androidx.core.content.pm.ShortcutManagerCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            throw null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api25Impl {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ShortcutMatchFlags {
    }
}
