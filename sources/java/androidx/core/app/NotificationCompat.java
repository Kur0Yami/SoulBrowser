package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NotificationCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api20Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api31Impl {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface BadgeIconType {
    }

    /* loaded from: classes.dex */
    public static class BigPictureStyle extends Style {
        public IconCompat b;

        /* renamed from: c, reason: collision with root package name */
        public IconCompat f634c;
        public boolean d;

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api23Impl {
            @RequiresApi
            public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api31Impl {
            @RequiresApi
            public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }

            @RequiresApi
            public static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            @RequiresApi
            public static void c(Notification.BigPictureStyle bigPictureStyle, boolean z) {
                bigPictureStyle.showBigPictureWhenCollapsed(z);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Bitmap b;
            Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b).setBigContentTitle(null);
            IconCompat iconCompat = this.b;
            if (iconCompat != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    Api31Impl.a(bigContentTitle, iconCompat.g(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f639a));
                } else if (iconCompat.e() == 1) {
                    IconCompat iconCompat2 = this.b;
                    int i = iconCompat2.f691a;
                    if (i == -1) {
                        Object obj = iconCompat2.b;
                        if (obj instanceof Bitmap) {
                            b = (Bitmap) obj;
                        } else {
                            b = null;
                        }
                    } else if (i == 1) {
                        b = (Bitmap) iconCompat2.b;
                    } else if (i == 5) {
                        b = IconCompat.b((Bitmap) iconCompat2.b, true);
                    } else {
                        throw new IllegalStateException("called getBitmap() on " + iconCompat2);
                    }
                    bigContentTitle = bigContentTitle.bigPicture(b);
                }
            }
            if (this.d) {
                IconCompat iconCompat3 = this.f634c;
                if (iconCompat3 == null) {
                    bigContentTitle.bigLargeIcon((Bitmap) null);
                } else {
                    Api23Impl.a(bigContentTitle, iconCompat3.g(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f639a));
                }
            }
            if (Build.VERSION.SDK_INT >= 31) {
                Api31Impl.c(bigContentTitle, false);
                Api31Impl.b(bigContentTitle, null);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final String c() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }
    }

    /* loaded from: classes.dex */
    public static class BigTextStyle extends Style {
        public CharSequence b;

        @Override // androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            new Notification.BigTextStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b).setBigContentTitle(null).bigText(this.b);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final String c() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }
    }

    /* loaded from: classes.dex */
    public static final class BubbleMetadata {

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api29Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api30Impl {
        }

        /* loaded from: classes.dex */
        public static final class Builder {
        }
    }

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Context f635a;
        public CharSequence e;
        public CharSequence f;
        public PendingIntent g;
        public IconCompat h;
        public int i;
        public Style k;
        public int l;
        public int m;
        public boolean n;
        public String o;
        public Bundle q;
        public String s;
        public final boolean t;
        public final Notification u;
        public final ArrayList v;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f636c = new ArrayList();
        public final ArrayList d = new ArrayList();
        public boolean j = true;
        public boolean p = false;
        public int r = 0;

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
        }

        public Builder(Context context, String str) {
            Notification notification = new Notification();
            this.u = notification;
            this.f635a = context;
            this.s = str;
            notification.when = System.currentTimeMillis();
            notification.audioStreamType = -1;
            this.i = 0;
            this.v = new ArrayList();
            this.t = true;
        }

        public static CharSequence c(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            if (charSequence.length() > 5120) {
                return charSequence.subSequence(0, 5120);
            }
            return charSequence;
        }

        public final void a(Action action) {
            if (action != null) {
                this.b.add(action);
            }
        }

        public final Notification b() {
            Notification build;
            Bundle bundle;
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Builder builder = notificationCompatBuilder.f640c;
            Style style = builder.k;
            if (style != null) {
                style.b(notificationCompatBuilder);
            }
            if (style != null) {
                style.e();
            }
            int i = Build.VERSION.SDK_INT;
            Notification.Builder builder2 = notificationCompatBuilder.b;
            if (i >= 26) {
                build = builder2.build();
            } else if (i >= 24) {
                build = builder2.build();
            } else {
                builder2.setExtras(notificationCompatBuilder.d);
                build = builder2.build();
            }
            if (style != null) {
                style.d();
            }
            if (style != null) {
                builder.k.f();
            }
            if (style != null && (bundle = build.extras) != null) {
                style.a(bundle);
            }
            return build;
        }

        public final void d(int i) {
            Notification notification = this.u;
            notification.flags = i | notification.flags;
        }

        public final void e(Bitmap bitmap) {
            IconCompat iconCompat;
            if (bitmap == null) {
                iconCompat = null;
            } else {
                if (Build.VERSION.SDK_INT < 27) {
                    Resources resources = this.f635a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                        double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                        bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                    }
                }
                PorterDuff.Mode mode = IconCompat.k;
                bitmap.getClass();
                IconCompat iconCompat2 = new IconCompat(1);
                iconCompat2.b = bitmap;
                iconCompat = iconCompat2;
            }
            this.h = iconCompat;
        }

        public final void f(int i, int i2, boolean z) {
            this.l = i;
            this.m = i2;
            this.n = z;
        }

        public final void g(Style style) {
            if (this.k != style) {
                this.k = style;
                if (style != null && style.f637a != this) {
                    style.f637a = this;
                    g(style);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class CallStyle extends Style {

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api20Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api21Impl {
            public static Notification.Builder a(Notification.Builder builder, String str) {
                return builder.setCategory(str);
            }
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api23Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api24Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api28Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api31Impl {
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface CallType {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void a(Bundle bundle) {
            super.a(bundle);
            bundle.putInt("android.callType", 0);
            bundle.putBoolean("android.callIsVideo", false);
            bundle.putCharSequence("android.verificationText", null);
            bundle.putParcelable("android.answerIntent", null);
            bundle.putParcelable("android.declineIntent", null);
            bundle.putParcelable("android.hangUpIntent", null);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            CharSequence charSequence;
            if (Build.VERSION.SDK_INT >= 31) {
                if (Log.isLoggable("NotifCompat", 3)) {
                    Log.d("NotifCompat", "Unrecognized call type in CallStyle: " + String.valueOf(0));
                    return;
                }
                return;
            }
            Notification.Builder builder = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b;
            CharSequence charSequence2 = null;
            builder.setContentTitle(null);
            Bundle bundle = this.f637a.q;
            if (bundle != null && bundle.containsKey("android.text")) {
                charSequence = this.f637a.q.getCharSequence("android.text");
            } else {
                charSequence = null;
            }
            if (charSequence != null) {
                charSequence2 = charSequence;
            }
            builder.setContentText(charSequence2);
            Api21Impl.a(builder, "call");
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final String c() {
            return "androidx.core.app.NotificationCompat$CallStyle";
        }
    }

    /* loaded from: classes.dex */
    public static final class CarExtender implements Extender {

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api20Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api29Impl {
        }

        @Deprecated
        /* loaded from: classes.dex */
        public static class UnreadConversation {

            /* loaded from: classes.dex */
            public static class Builder {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class DecoratedCustomViewStyle extends Style {

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api24Impl {
            public static Notification.Style a() {
                return new Notification.DecoratedCustomViewStyle();
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b.setStyle(Api24Impl.a());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final String c() {
            return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void d() {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            this.f637a.getClass();
            this.f637a.getClass();
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void e() {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
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
    public interface Extender {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface GroupAlertBehavior {
    }

    /* loaded from: classes.dex */
    public static class InboxStyle extends Style {
        @Override // androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            new Notification.InboxStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b).setBigContentTitle(null);
            throw null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final String c() {
            return "androidx.core.app.NotificationCompat$InboxStyle";
        }
    }

    /* loaded from: classes.dex */
    public static class MessagingStyle extends Style {
        public Boolean b;

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api24Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api26Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api28Impl {
        }

        /* loaded from: classes.dex */
        public static final class Message {

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api24Impl {
            }

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api28Impl {
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void a(Bundle bundle) {
            super.a(bundle);
            throw null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Boolean bool;
            Builder builder = this.f637a;
            boolean z = false;
            if ((builder == null || builder.f635a.getApplicationInfo().targetSdkVersion >= 28 || this.b != null) && (bool = this.b) != null) {
                z = bool.booleanValue();
            }
            this.b = Boolean.valueOf(z);
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (i >= 28) {
                    throw null;
                }
                throw null;
            }
            throw null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public final String c() {
            return "androidx.core.app.NotificationCompat$MessagingStyle";
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ServiceNotificationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface StreamType {
    }

    /* loaded from: classes.dex */
    public static final class TvExtender implements Extender {
    }

    /* loaded from: classes.dex */
    public static final class WearableExtender implements Extender {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f638a;
        public ArrayList b;

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api20Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api23Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api24Impl {
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api31Impl {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.core.app.NotificationCompat$WearableExtender] */
        public final Object clone() {
            ?? obj = new Object();
            obj.f638a = new ArrayList();
            obj.b = new ArrayList();
            obj.f638a = new ArrayList(this.f638a);
            obj.b = new ArrayList(this.b);
            return obj;
        }
    }

    /* loaded from: classes.dex */
    public static class Action {

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f630a;
        public IconCompat b;

        /* renamed from: c, reason: collision with root package name */
        public final RemoteInput[] f631c;
        public final boolean d;
        public final boolean e;
        public final int f;
        public final CharSequence g;
        public final PendingIntent h;

        /* loaded from: classes.dex */
        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final IconCompat f632a;
            public final CharSequence b;

            /* renamed from: c, reason: collision with root package name */
            public final PendingIntent f633c;
            public final boolean d;
            public final Bundle e;
            public final ArrayList f;
            public final boolean g;

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api20Impl {
            }

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api23Impl {
            }

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api24Impl {
            }

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api28Impl {
            }

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api29Impl {
            }

            @RequiresApi
            /* loaded from: classes.dex */
            public static class Api31Impl {
            }

            public Builder(int i, String str, PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.c(null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, i) : null, str, pendingIntent, new Bundle());
            }

            public final Action a() {
                RemoteInput[] remoteInputArr;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = this.f;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList3.get(i);
                        i++;
                        RemoteInput remoteInput = (RemoteInput) obj;
                        remoteInput.getClass();
                        arrayList2.add(remoteInput);
                    }
                }
                RemoteInput[] remoteInputArr2 = null;
                if (arrayList.isEmpty()) {
                    remoteInputArr = null;
                } else {
                    remoteInputArr = (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]);
                }
                if (!arrayList2.isEmpty()) {
                    remoteInputArr2 = (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]);
                }
                return new Action(this.f632a, this.b, this.f633c, this.e, remoteInputArr2, remoteInputArr, this.d, this.g);
            }

            public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
                this.d = true;
                this.g = true;
                this.f632a = iconCompat;
                this.b = Builder.c(charSequence);
                this.f633c = pendingIntent;
                this.e = bundle;
                this.f = null;
                this.d = true;
                this.g = true;
            }
        }

        /* loaded from: classes.dex */
        public interface Extender {
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface SemanticAction {
        }

        /* loaded from: classes.dex */
        public static final class WearableExtender implements Extender {
            public final Object clone() {
                return new Object();
            }
        }

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.c(null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, i) : null, charSequence, pendingIntent, new Bundle(), null, null, true, true);
        }

        public final IconCompat a() {
            int i;
            if (this.b == null && (i = this.f) != 0) {
                this.b = IconCompat.c(null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, i);
            }
            return this.b;
        }

        public Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, boolean z2) {
            this.e = true;
            this.b = iconCompat;
            if (iconCompat != null && iconCompat.e() == 2) {
                this.f = iconCompat.d();
            }
            this.g = Builder.c(charSequence);
            this.h = pendingIntent;
            this.f630a = bundle == null ? new Bundle() : bundle;
            this.f631c = remoteInputArr;
            this.d = z;
            this.e = z2;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Style {

        /* renamed from: a, reason: collision with root package name */
        public Builder f637a;

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api24Impl {
        }

        public void a(Bundle bundle) {
            String c2 = c();
            if (c2 != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", c2);
            }
        }

        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        public String c() {
            return null;
        }

        public void d() {
        }

        public void e() {
        }

        public void f() {
        }
    }
}
