package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ContentInfoCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Compat f764a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api31Impl {
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final BuilderCompat f765a;

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.core.view.ContentInfoCompat$BuilderCompatImpl, java.lang.Object, androidx.core.view.ContentInfoCompat$BuilderCompat] */
        public Builder(ClipData clipData, int i) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f765a = new BuilderCompat31Impl(clipData, i);
                return;
            }
            ?? obj = new Object();
            obj.f767a = clipData;
            obj.b = i;
            this.f765a = obj;
        }

        public final ContentInfoCompat a() {
            return this.f765a.build();
        }

        public final void b(Bundle bundle) {
            this.f765a.setExtras(bundle);
        }

        public final void c(int i) {
            this.f765a.setFlags(i);
        }

        public final void d(Uri uri) {
            this.f765a.a(uri);
        }
    }

    /* loaded from: classes.dex */
    public interface BuilderCompat {
        void a(Uri uri);

        ContentInfoCompat build();

        void setExtras(Bundle bundle);

        void setFlags(int i);
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class BuilderCompat31Impl implements BuilderCompat {

        /* renamed from: a, reason: collision with root package name */
        public final ContentInfo.Builder f766a;

        public BuilderCompat31Impl(ClipData clipData, int i) {
            this.f766a = a.a(clipData, i);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void a(Uri uri) {
            this.f766a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final ContentInfoCompat build() {
            return new ContentInfoCompat(new Compat31Impl(this.f766a.build()));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setExtras(Bundle bundle) {
            this.f766a.setExtras(bundle);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setFlags(int i) {
            this.f766a.setFlags(i);
        }
    }

    /* loaded from: classes.dex */
    public static final class BuilderCompatImpl implements BuilderCompat {

        /* renamed from: a, reason: collision with root package name */
        public ClipData f767a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f768c;
        public Uri d;
        public Bundle e;

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void a(Uri uri) {
            this.d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setExtras(Bundle bundle) {
            this.e = bundle;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setFlags(int i) {
            this.f768c = i;
        }
    }

    /* loaded from: classes.dex */
    public interface Compat {
        int a();

        ClipData b();

        ContentInfo c();

        int getFlags();
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Compat31Impl implements Compat {

        /* renamed from: a, reason: collision with root package name */
        public final ContentInfo f769a;

        public Compat31Impl(ContentInfo contentInfo) {
            contentInfo.getClass();
            this.f769a = contentInfo;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int a() {
            return this.f769a.getSource();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ClipData b() {
            return this.f769a.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ContentInfo c() {
            return this.f769a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int getFlags() {
            return this.f769a.getFlags();
        }

        public final String toString() {
            return "ContentInfoCompat{" + this.f769a + "}";
        }
    }

    /* loaded from: classes.dex */
    public static final class CompatImpl implements Compat {

        /* renamed from: a, reason: collision with root package name */
        public final ClipData f770a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f771c;
        public final Uri d;
        public final Bundle e;

        public CompatImpl(BuilderCompatImpl builderCompatImpl) {
            ClipData clipData = builderCompatImpl.f767a;
            clipData.getClass();
            this.f770a = clipData;
            int i = builderCompatImpl.b;
            if (i >= 0) {
                if (i <= 5) {
                    this.b = i;
                    int i2 = builderCompatImpl.f768c;
                    if ((i2 & 1) == i2) {
                        this.f771c = i2;
                        this.d = builderCompatImpl.d;
                        this.e = builderCompatImpl.e;
                        return;
                    } else {
                        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
                    }
                }
                Locale locale = Locale.US;
                throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
            }
            Locale locale2 = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int a() {
            return this.b;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ClipData b() {
            return this.f770a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ContentInfo c() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int getFlags() {
            return this.f771c;
        }

        public final String toString() {
            String str;
            String valueOf;
            String str2;
            StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
            sb.append(this.f770a.getDescription());
            sb.append(", source=");
            int i = this.b;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    str = String.valueOf(i);
                                } else {
                                    str = "SOURCE_PROCESS_TEXT";
                                }
                            } else {
                                str = "SOURCE_AUTOFILL";
                            }
                        } else {
                            str = "SOURCE_DRAG_AND_DROP";
                        }
                    } else {
                        str = "SOURCE_INPUT_METHOD";
                    }
                } else {
                    str = "SOURCE_CLIPBOARD";
                }
            } else {
                str = "SOURCE_APP";
            }
            sb.append(str);
            sb.append(", flags=");
            int i2 = this.f771c;
            if ((i2 & 1) != 0) {
                valueOf = "FLAG_CONVERT_TO_PLAIN_TEXT";
            } else {
                valueOf = String.valueOf(i2);
            }
            sb.append(valueOf);
            String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            Uri uri = this.d;
            if (uri == null) {
                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                str2 = ", hasLinkUri(" + uri.toString().length() + ")";
            }
            sb.append(str2);
            if (this.e != null) {
                str3 = ", hasExtras";
            }
            return android.support.v4.media.a.p(sb, str3, "}");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Source {
    }

    public ContentInfoCompat(Compat compat) {
        this.f764a = compat;
    }

    public final ClipData a() {
        return this.f764a.b();
    }

    public final int b() {
        return this.f764a.getFlags();
    }

    public final int c() {
        return this.f764a.a();
    }

    public final String toString() {
        return this.f764a.toString();
    }
}
