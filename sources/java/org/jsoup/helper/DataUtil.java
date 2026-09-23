package org.jsoup.helper;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.jsoup.internal.ControllableInputStream;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.SimpleStreamReader;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Parser;
import org.jsoup.parser.StreamParser;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Selector;

/* loaded from: classes4.dex */
public final class DataUtil {
    public static final Charset UTF_8;

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f22528a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
    public static final String b;

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f22529c;
    public static final Evaluator d;

    /* loaded from: classes4.dex */
    public static class CharsetDoc {

        /* renamed from: a, reason: collision with root package name */
        public Charset f22530a;
        public ControllableInputStream b;

        /* renamed from: c, reason: collision with root package name */
        public Document f22531c;
    }

    static {
        Charset forName = Charset.forName("UTF-8");
        UTF_8 = forName;
        b = forName.name();
        f22529c = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        d = Selector.evaluatorOf("meta[http-equiv=content-type], meta[charset]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [org.jsoup.helper.DataUtil$CharsetDoc, java.lang.Object] */
    public static CharsetDoc a(ControllableInputStream controllableInputStream, String str, String str2, Parser parser) {
        String str3;
        Charset forName;
        XmlDeclaration xmlDeclaration;
        byte[] bArr = new byte[4];
        controllableInputStream.mark(4);
        controllableInputStream.read(bArr, 0, 4);
        controllableInputStream.reset();
        byte b2 = bArr[0];
        Document document = null;
        if ((b2 == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (b2 == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            str3 = "UTF-32";
        } else if ((b2 == -2 && bArr[1] == -1) || (b2 == -1 && bArr[1] == -2)) {
            str3 = "UTF-16";
        } else if (b2 == -17 && bArr[1] == -69 && bArr[2] == -65) {
            controllableInputStream.read(bArr, 0, 3);
            str3 = "UTF-8";
        } else {
            str3 = null;
        }
        if (str3 != null) {
            str = str3;
        }
        String str4 = b;
        if (str == null) {
            int max = controllableInputStream.max();
            controllableInputStream.max(5120);
            controllableInputStream.mark(5120);
            controllableInputStream.allowClose(false);
            try {
                try {
                    SimpleStreamReader simpleStreamReader = new SimpleStreamReader(controllableInputStream, UTF_8);
                    try {
                        Document parseInput = parser.parseInput(simpleStreamReader, str2);
                        controllableInputStream.reset();
                        controllableInputStream.max(max);
                        simpleStreamReader.close();
                        controllableInputStream.allowClose(true);
                        Elements select = parseInput.select(d);
                        int size = select.size();
                        int i = 0;
                        String str5 = null;
                        while (i < size) {
                            T t = select.get(i);
                            i++;
                            Element element = (Element) t;
                            if (element.hasAttr("http-equiv")) {
                                str5 = b(element.attr("content"));
                            }
                            if (str5 == null && element.hasAttr("charset")) {
                                str5 = element.attr("charset");
                            }
                            if (str5 != null) {
                                break;
                            }
                        }
                        if (str5 == null && parseInput.childNodeSize() > 0) {
                            Node childNode = parseInput.childNode(0);
                            if (childNode instanceof XmlDeclaration) {
                                xmlDeclaration = (XmlDeclaration) childNode;
                            } else {
                                if (childNode instanceof Comment) {
                                    Comment comment = (Comment) childNode;
                                    if (comment.isXmlDeclaration()) {
                                        xmlDeclaration = comment.asXmlDeclaration();
                                    }
                                }
                                xmlDeclaration = null;
                            }
                            if (xmlDeclaration != null && xmlDeclaration.name().equalsIgnoreCase("xml")) {
                                str5 = xmlDeclaration.attr("encoding");
                            }
                        }
                        String g = g(str5);
                        if (g != null && !g.equalsIgnoreCase(str4)) {
                            str = g.trim().replaceAll("[\"']", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        } else if (controllableInputStream.baseReadFully()) {
                            controllableInputStream.close();
                            document = parseInput;
                        }
                    } catch (Throwable th) {
                        try {
                            simpleStreamReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (UncheckedIOException e) {
                    throw e.getCause();
                }
            } catch (Throwable th3) {
                controllableInputStream.allowClose(true);
                throw th3;
            }
        } else {
            Validate.notEmpty(str, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
        }
        if (str == null) {
            str = str4;
        }
        if (str.equals(str4)) {
            forName = UTF_8;
        } else {
            forName = Charset.forName(str);
        }
        ?? obj = new Object();
        obj.f22530a = forName;
        obj.b = controllableInputStream;
        obj.f22531c = document;
        return obj;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f22528a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return g(matcher.group(1).trim().replace("charset=", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    public static String c() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        Random random = new Random();
        for (int i = 0; i < 32; i++) {
            char[] cArr = f22529c;
            borrowBuilder.append(cArr[random.nextInt(cArr.length)]);
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public static ControllableInputStream d(Path path) {
        boolean z;
        SeekableByteChannel newByteChannel = Files.newByteChannel(path, new OpenOption[0]);
        InputStream newInputStream = Channels.newInputStream(newByteChannel);
        String lowerCase = Normalizer.lowerCase(path.getFileName().toString());
        if (lowerCase.endsWith(".gz") || lowerCase.endsWith(".z")) {
            try {
                if (newInputStream.read() == 31 && newInputStream.read() == 139) {
                    z = true;
                } else {
                    z = false;
                }
                newByteChannel.position(0L);
                if (z) {
                    newInputStream = new GZIPInputStream(newInputStream);
                }
            } catch (IOException e) {
                newInputStream.close();
                throw e;
            }
        }
        return ControllableInputStream.wrap(newInputStream, 0);
    }

    public static Document e(CharsetDoc charsetDoc, String str, Parser parser) {
        Document document = charsetDoc.f22531c;
        if (document != null) {
            return document;
        }
        ControllableInputStream controllableInputStream = charsetDoc.b;
        Validate.notNull(controllableInputStream);
        Charset charset = charsetDoc.f22530a;
        SimpleStreamReader simpleStreamReader = new SimpleStreamReader(controllableInputStream, charset);
        try {
            try {
                Document parseInput = parser.parseInput(simpleStreamReader, str);
                parseInput.outputSettings().charset(charset);
                if (!charset.canEncode()) {
                    parseInput.charset(UTF_8);
                }
                simpleStreamReader.close();
                return parseInput;
            } catch (UncheckedIOException e) {
                throw e.getCause();
            }
        } catch (Throwable th) {
            try {
                simpleStreamReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Document f(ControllableInputStream controllableInputStream, String str, String str2, Parser parser) {
        CharsetDoc charsetDoc;
        if (controllableInputStream == null) {
            return new Document(str2);
        }
        try {
            charsetDoc = a(controllableInputStream, str, str2, parser);
            try {
                Document e = e(charsetDoc, str2, parser);
                charsetDoc.b.close();
                return e;
            } catch (Throwable th) {
                th = th;
                if (charsetDoc != null) {
                    charsetDoc.b.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            charsetDoc = null;
        }
    }

    public static String g(String str) {
        if (str != null && str.length() != 0) {
            String replaceAll = str.trim().replaceAll("[\"']", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            try {
                if (Charset.isSupported(replaceAll)) {
                    return replaceAll;
                }
                String upperCase = replaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }

    public static Document load(File file, String str, String str2) {
        return load(file.toPath(), str, str2);
    }

    public static ByteBuffer readToByteBuffer(InputStream inputStream, int i) {
        return ControllableInputStream.readToByteBuffer(inputStream, i);
    }

    public static StreamParser streamParser(Path path, Charset charset, String str, Parser parser) {
        String str2;
        StreamParser streamParser = new StreamParser(parser);
        if (charset != null) {
            str2 = charset.name();
        } else {
            str2 = null;
        }
        try {
            CharsetDoc a2 = a(d(path), str2, str, parser);
            streamParser.parse(new SimpleStreamReader(a2.b, a2.f22530a), str);
            return streamParser;
        } catch (IOException e) {
            streamParser.close();
            throw e;
        }
    }

    public static Document load(File file, String str, String str2, Parser parser) {
        return load(file.toPath(), str, str2, parser);
    }

    public static Document load(Path path, String str, String str2) {
        return load(path, str, str2, Parser.htmlParser());
    }

    public static Document load(Path path, String str, String str2, Parser parser) {
        return f(d(path), str, str2, parser);
    }

    public static Document load(InputStream inputStream, String str, String str2) {
        return f(ControllableInputStream.wrap(inputStream, 0), str, str2, Parser.htmlParser());
    }

    public static Document load(InputStream inputStream, String str, String str2, Parser parser) {
        return f(ControllableInputStream.wrap(inputStream, 0), str, str2, parser);
    }
}
