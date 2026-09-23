package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.RequiresApi;
import java.util.Locale;

/* loaded from: classes.dex */
public final class LocaleListCompat {
    public static final LocaleListCompat b = a(new Locale[0]);

    /* renamed from: a, reason: collision with root package name */
    public final LocaleListInterface f707a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f708a = 0;

        static {
            new Locale("en", "XA");
            new Locale("ar", "XB");
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        public static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }
    }

    public LocaleListCompat(LocaleListInterface localeListInterface) {
        this.f707a = localeListInterface;
    }

    public static LocaleListCompat a(Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return g(Api24Impl.a(localeArr));
        }
        return new LocaleListCompat(new LocaleListCompatWrapper(localeArr));
    }

    public static LocaleListCompat b(String str) {
        if (str != null && !str.isEmpty()) {
            String[] split2 = str.split(",", -1);
            int length = split2.length;
            Locale[] localeArr = new Locale[length];
            for (int i = 0; i < length; i++) {
                String str2 = split2[i];
                int i2 = Api21Impl.f708a;
                localeArr[i] = Locale.forLanguageTag(str2);
            }
            return a(localeArr);
        }
        return b;
    }

    public static LocaleListCompat g(LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    public final Locale c(int i) {
        return this.f707a.get(i);
    }

    public final boolean d() {
        return this.f707a.isEmpty();
    }

    public final int e() {
        return this.f707a.size();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LocaleListCompat) {
            if (this.f707a.equals(((LocaleListCompat) obj).f707a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final String f() {
        return this.f707a.a();
    }

    public final int hashCode() {
        return this.f707a.hashCode();
    }

    public final String toString() {
        return this.f707a.toString();
    }
}
