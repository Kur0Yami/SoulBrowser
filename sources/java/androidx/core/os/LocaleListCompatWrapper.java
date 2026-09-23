package androidx.core.os;

import android.support.v4.media.a;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
final class LocaleListCompatWrapper implements LocaleListInterface {

    /* renamed from: c, reason: collision with root package name */
    public static final Locale[] f709c = new Locale[0];

    /* renamed from: a, reason: collision with root package name */
    public final Locale[] f710a;
    public final String b;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] split2 = "en-Latn".split("-", -1);
        if (split2.length > 2) {
            new Locale(split2[0], split2[1], split2[2]);
        } else if (split2.length > 1) {
            new Locale(split2[0], split2[1]);
        } else {
            if (split2.length == 1) {
                new Locale(split2[0]);
                return;
            }
            throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
        }
    }

    public LocaleListCompatWrapper(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f710a = f709c;
            this.b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale != null) {
                if (!hashSet.contains(locale)) {
                    Locale locale2 = (Locale) locale.clone();
                    arrayList.add(locale2);
                    sb.append(locale2.getLanguage());
                    String country = locale2.getCountry();
                    if (country != null && !country.isEmpty()) {
                        sb.append('-');
                        sb.append(locale2.getCountry());
                    }
                    if (i < localeArr.length - 1) {
                        sb.append(',');
                    }
                    hashSet.add(locale2);
                }
            } else {
                throw new NullPointerException(a.f(i, "list[", "] is null"));
            }
        }
        this.f710a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.b = sb.toString();
    }

    @Override // androidx.core.os.LocaleListInterface
    public final String a() {
        return this.b;
    }

    @Override // androidx.core.os.LocaleListInterface
    public final Object b() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocaleListCompatWrapper)) {
            return false;
        }
        Locale[] localeArr = ((LocaleListCompatWrapper) obj).f710a;
        Locale[] localeArr2 = this.f710a;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i = 0; i < localeArr2.length; i++) {
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.core.os.LocaleListInterface
    public final Locale get(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.f710a;
            if (i < localeArr.length) {
                return localeArr[i];
            }
            return null;
        }
        return null;
    }

    public final int hashCode() {
        int i = 1;
        for (Locale locale : this.f710a) {
            i = (i * 31) + locale.hashCode();
        }
        return i;
    }

    @Override // androidx.core.os.LocaleListInterface
    public final boolean isEmpty() {
        if (this.f710a.length == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.os.LocaleListInterface
    public final int size() {
        return this.f710a.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f710a;
            if (i < localeArr.length) {
                sb.append(localeArr[i]);
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
