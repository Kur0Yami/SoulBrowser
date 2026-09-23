package org.jsoup;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Path;
import org.jsoup.helper.DataUtil;
import org.jsoup.helper.HttpConnection;
import org.jsoup.internal.SharedConstants;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.safety.Cleaner;
import org.jsoup.safety.Safelist;

/* loaded from: classes4.dex */
public class Jsoup {
    public static String clean(String str, String str2, Safelist safelist) {
        if (str2.isEmpty() && safelist.preserveRelativeLinks()) {
            str2 = SharedConstants.DummyUri;
        }
        return new Cleaner(safelist).clean(parseBodyFragment(str, str2)).body().html();
    }

    public static Connection connect(String str) {
        return HttpConnection.connect(str);
    }

    public static boolean isValid(String str, Safelist safelist) {
        return new Cleaner(safelist).isValidBodyHtml(str);
    }

    public static Connection newSession() {
        return new HttpConnection();
    }

    public static Document parse(String str, String str2) {
        return Parser.parse(str, str2);
    }

    public static Document parseBodyFragment(String str, String str2) {
        return Parser.parseBodyFragment(str, str2);
    }

    public static Document parse(String str, String str2, Parser parser) {
        return parser.parseInput(str, str2);
    }

    public static Document parseBodyFragment(String str) {
        return Parser.parseBodyFragment(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public static Document parse(String str, Parser parser) {
        return parser.parseInput(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public static Document parse(String str) {
        return Parser.parse(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public static Document parse(File file, String str, String str2) {
        return DataUtil.load(file, str, str2);
    }

    public static Document parse(File file, String str) {
        return DataUtil.load(file, str, file.getAbsolutePath());
    }

    public static String clean(String str, Safelist safelist) {
        return clean(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, safelist);
    }

    public static Document parse(File file) {
        return DataUtil.load(file, (String) null, file.getAbsolutePath());
    }

    public static String clean(String str, String str2, Safelist safelist, Document.OutputSettings outputSettings) {
        Document clean = new Cleaner(safelist).clean(parseBodyFragment(str, str2));
        clean.outputSettings(outputSettings);
        return clean.body().html();
    }

    public static Document parse(File file, String str, String str2, Parser parser) {
        return DataUtil.load(file, str, str2, parser);
    }

    public static Document parse(Path path, String str, String str2) {
        return DataUtil.load(path, str, str2);
    }

    public static Document parse(Path path, String str) {
        return DataUtil.load(path, str, path.toAbsolutePath().toString());
    }

    public static Document parse(Path path) {
        return DataUtil.load(path, (String) null, path.toAbsolutePath().toString());
    }

    public static Document parse(Path path, String str, String str2, Parser parser) {
        return DataUtil.load(path, str, str2, parser);
    }

    public static Document parse(InputStream inputStream, String str, String str2) {
        return DataUtil.load(inputStream, str, str2);
    }

    public static Document parse(InputStream inputStream, String str, String str2, Parser parser) {
        return DataUtil.load(inputStream, str, str2, parser);
    }

    public static Document parse(URL url, int i) {
        Connection connect = HttpConnection.connect(url);
        connect.timeout(i);
        return connect.get();
    }
}
