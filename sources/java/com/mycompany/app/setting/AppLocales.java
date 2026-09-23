package com.mycompany.app.setting;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.os.LocaleList;
import java.util.ArrayList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;

/** Builds the in-app language list from locales_config + language_name. */
public final class AppLocales {
    private AppLocales() {
    }

    public static String[][] a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new String[]{"", "", ""});
        ArrayList tags = b(context);
        int size = tags.size();
        for (int i = 0; i < size; i++) {
            String tag = (String) tags.get(i);
            Locale locale = Locale.forLanguageTag(tag.replace('_', '-'));
            String language = locale.getLanguage();
            String country = locale.getCountry();
            if (language == null) {
                language = "";
            }
            if (country == null) {
                country = "";
            }
            arrayList.add(new String[]{language, country, c(context, locale)});
        }
        String[][] rows = (String[][]) arrayList.toArray(new String[arrayList.size()][]);
        int n = rows.length;
        for (int i = 2; i < n; i++) {
            String[] row = rows[i];
            int j = i;
            while (j > 1 && rows[j - 1][2].compareToIgnoreCase(row[2]) > 0) {
                rows[j] = rows[j - 1];
                j--;
            }
            rows[j] = row;
        }
        return rows;
    }

    public static String b(String[][] rows, int i) {
        if (rows == null || i <= 0 || i >= rows.length) {
            return "";
        }
        String language = rows[i][0];
        String country = rows[i][1];
        if (country == null || country.length() == 0) {
            return language;
        }
        return language + "-" + country;
    }

    public static int a(String[][] rows, Locale locale) {
        if (locale == null || rows == null) {
            return 0;
        }
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (language == null) {
            language = "";
        }
        if (country == null) {
            country = "";
        }
        int length = rows.length;
        int langMatch = 0;
        for (int i = 1; i < length; i++) {
            if (language.equals(rows[i][0]) && country.equals(rows[i][1])) {
                return i;
            }
            if (langMatch == 0 && language.equals(rows[i][0])) {
                langMatch = i;
            }
        }
        return langMatch;
    }

    public static ArrayList b(Context context) {
        ArrayList tags = new ArrayList();
        Resources resources = context.getResources();
        int id = resources.getIdentifier("locales_config", "xml", context.getPackageName());
        if (id == 0) {
            return tags;
        }
        XmlResourceParser parser = resources.getXml(id);
        try {
            int event;
            while ((event = parser.next()) != XmlPullParser.END_DOCUMENT) {
                if (event == XmlPullParser.START_TAG && "locale".equals(parser.getName())) {
                    String name = parser.getAttributeValue("http://schemas.android.com/apk/res/android", "name");
                    if (name == null) {
                        int count = parser.getAttributeCount();
                        for (int i = 0; i < count; i++) {
                            if ("name".equals(parser.getAttributeName(i))) {
                                name = parser.getAttributeValue(i);
                                break;
                            }
                        }
                    }
                    if (name != null && name.length() > 0) {
                        tags.add(name);
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            parser.close();
        }
        return tags;
    }

    public static String c(Context context, Locale locale) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocales(new LocaleList(locale));
        } else {
            configuration.setLocale(locale);
        }
        Context localized = context.createConfigurationContext(configuration);
        int id = localized.getResources().getIdentifier("language_name", "string", context.getPackageName());
        if (id != 0) {
            String label = localized.getString(id);
            if (label != null && label.length() > 0) {
                return label;
            }
        }
        return locale.getDisplayName(locale);
    }
}
