package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.core.app.RemoteInput;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {

    /* renamed from: a, reason: collision with root package name */
    public final Context f639a;
    public final Notification.Builder b;

    /* renamed from: c, reason: collision with root package name */
    public final NotificationCompat.Builder f640c;
    public final Bundle d;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api20Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        public static void a(Notification.Action.Builder builder, boolean z) {
            builder.setAllowGeneratedReplies(z);
        }

        public static void b(Notification.Builder builder) {
            builder.setRemoteInputHistory(null);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        public static Notification.Builder a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        public static void b(Notification.Builder builder) {
            builder.setBadgeIconType(0);
        }

        public static void c(Notification.Builder builder) {
            builder.setGroupAlertBehavior(0);
        }

        public static void d(Notification.Builder builder) {
            builder.setSettingsText(null);
        }

        public static void e(Notification.Builder builder) {
            builder.setShortcutId(null);
        }

        public static void f(Notification.Builder builder) {
            builder.setTimeoutAfter(0L);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        public static void a(Notification.Builder builder, android.app.Person person) {
            builder.addPerson(person);
        }

        public static void b(Notification.Action.Builder builder) {
            builder.setSemanticAction(0);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static void a(Notification.Builder builder, boolean z) {
            builder.setAllowSystemGeneratedContextualActions(z);
        }

        public static void b(Notification.Builder builder) {
            builder.setBubbleMetadata(null);
        }

        public static void c(Notification.Action.Builder builder) {
            builder.setContextual(false);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api31Impl {
        public static void a(Notification.Action.Builder builder) {
            builder.setAuthenticationRequired(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NotificationCompatBuilder(androidx.core.app.NotificationCompat.Builder r22) {
        /*
            Method dump skipped, instructions count: 981
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompatBuilder.<init>(androidx.core.app.NotificationCompat$Builder):void");
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public final Notification.Builder a() {
        return this.b;
    }

    public final void b(NotificationCompat.Action action) {
        Icon icon;
        Bundle bundle;
        IconCompat a2 = action.a();
        boolean z = action.d;
        Bundle bundle2 = action.f630a;
        if (a2 != null) {
            icon = a2.g(null);
        } else {
            icon = null;
        }
        Notification.Action.Builder builder = new Notification.Action.Builder(icon, action.g, action.h);
        RemoteInput[] remoteInputArr = action.f631c;
        if (remoteInputArr != null) {
            android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
            for (int i = 0; i < remoteInputArr.length; i++) {
                remoteInputArr[i].getClass();
                RemoteInput.Builder addExtras = new RemoteInput.Builder(null).setLabel(null).setChoices(null).setAllowFreeFormInput(false).addExtras(null);
                if (Build.VERSION.SDK_INT >= 29) {
                    RemoteInput.Api29Impl.a(addExtras);
                }
                remoteInputArr2[i] = addExtras.build();
            }
            for (android.app.RemoteInput remoteInput : remoteInputArr2) {
                builder.addRemoteInput(remoteInput);
            }
        }
        if (bundle2 != null) {
            bundle = new Bundle(bundle2);
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", z);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            Api24Impl.a(builder, z);
        }
        bundle.putInt("android.support.action.semanticAction", 0);
        if (i2 >= 28) {
            Api28Impl.b(builder);
        }
        if (i2 >= 29) {
            Api29Impl.c(builder);
        }
        if (i2 >= 31) {
            Api31Impl.a(builder);
        }
        bundle.putBoolean("android.support.action.showsUserInterface", action.e);
        builder.addExtras(bundle);
        this.b.addAction(builder.build());
    }
}
