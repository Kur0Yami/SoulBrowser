package com.nostra13.universalimageloader.core.download;

import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainItem;
import java.io.InputStream;
import java.util.Locale;

/* loaded from: classes3.dex */
public interface ImageDownloader {

    /* loaded from: classes3.dex */
    public enum Scheme {
        HTTP("http"),
        HTTPS("https"),
        /* JADX INFO: Fake field, exist only in values array */
        FILE("file"),
        /* JADX INFO: Fake field, exist only in values array */
        CONTENT("content"),
        /* JADX INFO: Fake field, exist only in values array */
        ASSETS("assets"),
        /* JADX INFO: Fake field, exist only in values array */
        DRAWABLE("drawable"),
        /* JADX INFO: Fake field, exist only in values array */
        IMAGE("image"),
        /* JADX INFO: Fake field, exist only in values array */
        VIDEO("video"),
        /* JADX INFO: Fake field, exist only in values array */
        MUSIC("music"),
        /* JADX INFO: Fake field, exist only in values array */
        COMPRESS("compress"),
        /* JADX INFO: Fake field, exist only in values array */
        APP("app"),
        /* JADX INFO: Fake field, exist only in values array */
        BLOB("blob"),
        UNKNOWN(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);


        /* renamed from: c, reason: collision with root package name */
        public final String f21008c;

        Scheme(String str) {
            this.f21008c = str.concat("://");
        }

        public static Scheme a(String str) {
            if (str != null) {
                for (Scheme scheme : values()) {
                    scheme.getClass();
                    if (str.toLowerCase(Locale.US).startsWith(scheme.f21008c)) {
                        return scheme;
                    }
                }
            }
            return UNKNOWN;
        }
    }

    InputStream a(MainItem.ViewItem viewItem);

    InputStream b(String str, String str2);
}
