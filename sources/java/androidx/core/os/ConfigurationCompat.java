package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ConfigurationCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        public static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }
    }

    public static LocaleListCompat a(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 24) {
            return LocaleListCompat.g(Api24Impl.a(configuration));
        }
        return LocaleListCompat.a(configuration.locale);
    }
}
