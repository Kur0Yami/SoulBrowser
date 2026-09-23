package androidx.media.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;

/* loaded from: classes.dex */
public class NotificationCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api15Impl {
        @DoNotInline
        public static void a(RemoteViews remoteViews, int i, CharSequence charSequence) {
            remoteViews.setContentDescription(i, charSequence);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static Notification.MediaStyle a() {
            return new Notification.MediaStyle();
        }

        @DoNotInline
        public static Notification.MediaStyle b(Notification.MediaStyle mediaStyle, int[] iArr, MediaSessionCompat.Token token) {
            if (iArr != null) {
                e(mediaStyle, iArr);
            }
            if (token != null) {
                c(mediaStyle, (MediaSession.Token) token.getToken());
            }
            return mediaStyle;
        }

        @DoNotInline
        public static void c(Notification.MediaStyle mediaStyle, MediaSession.Token token) {
            mediaStyle.setMediaSession(token);
        }

        @DoNotInline
        public static void d(Notification.Builder builder, Notification.MediaStyle mediaStyle) {
            builder.setStyle(mediaStyle);
        }

        @DoNotInline
        public static void e(Notification.MediaStyle mediaStyle, int... iArr) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        @DoNotInline
        public static Notification.MediaStyle a() {
            return new Notification.DecoratedMediaCustomViewStyle();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        @DoNotInline
        @SuppressLint({"MissingPermission"})
        public static Notification.MediaStyle a(Notification.MediaStyle mediaStyle, @NonNull CharSequence charSequence, @DrawableRes int i, @Nullable PendingIntent pendingIntent, Boolean bool) {
            if (bool.booleanValue()) {
                mediaStyle.setRemotePlaybackInfo(charSequence, i, pendingIntent);
            }
            return mediaStyle;
        }
    }

    /* loaded from: classes.dex */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                Api21Impl.d(notificationBuilderWithBuilderAccessor.a(), Api21Impl.b(Api34Impl.a(Api24Impl.a(), null, 0, null, Boolean.FALSE), this.b, this.f1276c));
            } else if (i >= 24) {
                Api21Impl.d(notificationBuilderWithBuilderAccessor.a(), Api21Impl.b(Api24Impl.a(), this.b, this.f1276c));
            } else {
                super.b(notificationBuilderWithBuilderAccessor);
            }
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        public final void d() {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            this.f637a.getClass();
            this.f637a.getClass();
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        public final void e() {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            this.f637a.getClass();
            this.f637a.getClass();
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void f() {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            this.f637a.getClass();
            this.f637a.getClass();
        }
    }

    /* loaded from: classes.dex */
    public static class MediaStyle extends NotificationCompat.Style {
        public int[] b = null;

        /* renamed from: c, reason: collision with root package name */
        public MediaSessionCompat.Token f1276c;

        @Override // androidx.core.app.NotificationCompat.Style
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 34) {
                Api21Impl.d(notificationBuilderWithBuilderAccessor.a(), Api21Impl.b(Api34Impl.a(Api21Impl.a(), null, 0, null, Boolean.FALSE), this.b, this.f1276c));
            } else {
                Api21Impl.d(notificationBuilderWithBuilderAccessor.a(), Api21Impl.b(Api21Impl.a(), this.b, this.f1276c));
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void d() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void e() {
        }
    }
}
