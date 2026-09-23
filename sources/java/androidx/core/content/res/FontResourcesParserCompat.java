package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import android.util.Xml;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.provider.FontRequest;
import com.google.api.client.http.HttpStatusCodes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
/* loaded from: classes.dex */
public class FontResourcesParserCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    /* loaded from: classes.dex */
    public interface FamilyResourceEntry {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FetchStrategy {
    }

    /* loaded from: classes.dex */
    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {

        /* renamed from: a, reason: collision with root package name */
        public final FontFileResourceEntry[] f662a;

        public FontFamilyFilesResourceEntry(FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.f662a = fontFileResourceEntryArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class FontFileResourceEntry {

        /* renamed from: a, reason: collision with root package name */
        public final String f663a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f664c;
        public final String d;
        public final int e;
        public final int f;

        public FontFileResourceEntry(String str, int i, String str2, int i2, int i3, boolean z) {
            this.f663a = str;
            this.b = i;
            this.f664c = z;
            this.d = str2;
            this.e = i2;
            this.f = i3;
        }
    }

    /* loaded from: classes.dex */
    public static final class ProviderResourceEntry implements FamilyResourceEntry {

        /* renamed from: a, reason: collision with root package name */
        public final FontRequest f665a;
        public final FontRequest b;

        /* renamed from: c, reason: collision with root package name */
        public final int f666c;
        public final int d;
        public final String e;

        public ProviderResourceEntry(FontRequest fontRequest, FontRequest fontRequest2, int i, int i2, String str) {
            this.f665a = fontRequest;
            this.b = fontRequest2;
            this.d = i;
            this.f666c = i2;
            this.e = str;
        }
    }

    public static FamilyResourceEntry a(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            FontRequest fontRequest = null;
            xmlResourceParser.require(2, null, "font-family");
            if (xmlResourceParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.FontFamily);
                String string = obtainAttributes.getString(R.styleable.FontFamily_fontProviderAuthority);
                String string2 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderPackage);
                String string3 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderQuery);
                String string4 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderFallbackQuery);
                int resourceId = obtainAttributes.getResourceId(R.styleable.FontFamily_fontProviderCerts, 0);
                int integer = obtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchStrategy, 1);
                int integer2 = obtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchTimeout, 500);
                String string5 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderSystemFontFamily);
                obtainAttributes.recycle();
                if (string != null && string2 != null && string3 != null) {
                    while (xmlResourceParser.next() != 3) {
                        c(xmlResourceParser);
                    }
                    List b = b(resources, resourceId);
                    if (string4 != null) {
                        fontRequest = new FontRequest(string, string2, string4, b);
                    }
                    return new ProviderResourceEntry(new FontRequest(string, string2, string3, b), fontRequest, integer, integer2, string5);
                }
                ArrayList arrayList = new ArrayList();
                while (xmlResourceParser.next() != 3) {
                    if (xmlResourceParser.getEventType() == 2) {
                        if (xmlResourceParser.getName().equals("font")) {
                            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.FontFamilyFont);
                            if (obtainAttributes2.hasValue(R.styleable.FontFamilyFont_fontWeight)) {
                                i = R.styleable.FontFamilyFont_fontWeight;
                            } else {
                                i = R.styleable.FontFamilyFont_android_fontWeight;
                            }
                            int i6 = obtainAttributes2.getInt(i, HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
                            if (obtainAttributes2.hasValue(R.styleable.FontFamilyFont_fontStyle)) {
                                i2 = R.styleable.FontFamilyFont_fontStyle;
                            } else {
                                i2 = R.styleable.FontFamilyFont_android_fontStyle;
                            }
                            if (1 == obtainAttributes2.getInt(i2, 0)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (obtainAttributes2.hasValue(R.styleable.FontFamilyFont_ttcIndex)) {
                                i3 = R.styleable.FontFamilyFont_ttcIndex;
                            } else {
                                i3 = R.styleable.FontFamilyFont_android_ttcIndex;
                            }
                            if (obtainAttributes2.hasValue(R.styleable.FontFamilyFont_fontVariationSettings)) {
                                i4 = R.styleable.FontFamilyFont_fontVariationSettings;
                            } else {
                                i4 = R.styleable.FontFamilyFont_android_fontVariationSettings;
                            }
                            String string6 = obtainAttributes2.getString(i4);
                            int i7 = obtainAttributes2.getInt(i3, 0);
                            if (obtainAttributes2.hasValue(R.styleable.FontFamilyFont_font)) {
                                i5 = R.styleable.FontFamilyFont_font;
                            } else {
                                i5 = R.styleable.FontFamilyFont_android_font;
                            }
                            int resourceId2 = obtainAttributes2.getResourceId(i5, 0);
                            String string7 = obtainAttributes2.getString(i5);
                            obtainAttributes2.recycle();
                            while (xmlResourceParser.next() != 3) {
                                c(xmlResourceParser);
                            }
                            arrayList.add(new FontFileResourceEntry(string7, i6, string6, i7, resourceId2, z));
                        } else {
                            c(xmlResourceParser);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList.toArray(new FontFileResourceEntry[0]));
            }
            c(xmlResourceParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List b(Resources resources, int i) {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static void c(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next != 2) {
                if (next == 3) {
                    i--;
                }
            } else {
                i++;
            }
        }
    }
}
