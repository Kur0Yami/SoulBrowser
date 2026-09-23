package org.apache.commons.text.lookup;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.file.Files;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
final class FileStringLookup extends AbstractPathFencedLookup {

    /* renamed from: c, reason: collision with root package name */
    public static final FileStringLookup f22478c = new AbstractPathFencedLookup();

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.text.lookup.AbstractPathFencedLookup, org.apache.commons.text.lookup.FileStringLookup] */
    static {
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String[] split2 = str.split(String.valueOf(':'));
        if (split2.length >= 2) {
            String str2 = split2[0];
            if (!StringUtils.c(str)) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = str.substring(indexOf + 1);
                }
            }
            try {
                return new String(Files.readAllBytes(this.b.a(str)), str2);
            } catch (Exception e) {
                throw IllegalArgumentExceptions.a(e, "Error looking up file [%s] with charset [%s].", str, str2);
            }
        }
        throw IllegalArgumentExceptions.b("Bad file key format [%s], expected format is CharsetName:DocumentPath.", str);
    }
}
