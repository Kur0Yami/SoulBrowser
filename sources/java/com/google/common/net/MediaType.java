package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.errorprone.annotations.Immutable;
import j$.util.Objects;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
public final class MediaType {
    public static final ImmutableListMultimap f = ImmutableListMultimap.m(Ascii.c(StandardCharsets.UTF_8.name()));
    public static final CharMatcher g = CharMatcher.e().b(CharMatcher.l().p()).b(CharMatcher.k()).b(CharMatcher.c("()<>@,;:\\\"/[]?=").p());
    public static final HashMap h;
    public static final Joiner.MapJoiner i;

    /* renamed from: a, reason: collision with root package name */
    public final String f12495a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final ImmutableListMultimap f12496c;
    public String d;
    public int e;

    /* loaded from: classes3.dex */
    public static final class Tokenizer {
    }

    static {
        CharMatcher.e().b(CharMatcher.c("\"\\\r").p());
        CharMatcher.c(" \t\r\n");
        h = new HashMap();
        a("*", "*");
        a("text", "*");
        a("image", "*");
        a("audio", "*");
        a("video", "*");
        a("application", "*");
        a("font", "*");
        b("text", "cache-manifest");
        b("text", "css");
        b("text", "csv");
        b("text", "html");
        b("text", "calendar");
        b("text", "markdown");
        b("text", "plain");
        b("text", "javascript");
        b("text", "tab-separated-values");
        b("text", "vcard");
        b("text", "vnd.wap.wml");
        b("text", "xml");
        b("text", "vtt");
        a("image", "bmp");
        a("image", "x-canon-crw");
        a("image", "gif");
        a("image", "vnd.microsoft.icon");
        a("image", "jpeg");
        a("image", "png");
        a("image", "vnd.adobe.photoshop");
        b("image", "svg+xml");
        a("image", "tiff");
        a("image", "avif");
        a("image", "webp");
        a("image", "heif");
        a("image", "jp2");
        a("audio", "mp4");
        a("audio", "mpeg");
        a("audio", "ogg");
        a("audio", "webm");
        a("audio", "l16");
        a("audio", "l24");
        a("audio", "basic");
        a("audio", "aac");
        a("audio", "vorbis");
        a("audio", "x-ms-wma");
        a("audio", "x-ms-wax");
        a("audio", "vnd.rn-realaudio");
        a("audio", "vnd.wave");
        a("video", "mp4");
        a("video", "mpeg");
        a("video", "ogg");
        a("video", "quicktime");
        a("video", "webm");
        a("video", "x-ms-wmv");
        a("video", "x-flv");
        a("video", "3gpp");
        a("video", "3gpp2");
        b("application", "xml");
        b("application", "atom+xml");
        a("application", "x-bzip2");
        b("application", "dart");
        a("application", "vnd.apple.pkpass");
        a("application", "vnd.ms-fontobject");
        a("application", "epub+zip");
        a("application", "x-www-form-urlencoded");
        a("application", "pkcs12");
        a("application", "binary");
        a("application", "cbor");
        a("application", "geo+json");
        a("application", "x-gzip");
        a("application", "hal+json");
        b("application", "javascript");
        a("application", "jose");
        a("application", "jose+json");
        b("application", "json");
        a("application", "jwt");
        b("application", "manifest+json");
        a("application", "vnd.google-earth.kml+xml");
        a("application", "vnd.google-earth.kmz");
        a("application", "mbox");
        a("application", "x-apple-aspen-config");
        a("application", "vnd.ms-excel");
        a("application", "vnd.ms-outlook");
        a("application", "vnd.ms-powerpoint");
        a("application", "msword");
        a("application", "dash+xml");
        a("application", "wasm");
        a("application", "x-nacl");
        a("application", "x-pnacl");
        a("application", "octet-stream");
        a("application", "ogg");
        a("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
        a("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
        a("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        a("application", "vnd.oasis.opendocument.graphics");
        a("application", "vnd.oasis.opendocument.presentation");
        a("application", "vnd.oasis.opendocument.spreadsheet");
        a("application", "vnd.oasis.opendocument.text");
        b("application", "opensearchdescription+xml");
        a("application", "pdf");
        a("application", "postscript");
        a("application", "protobuf");
        b("application", "rdf+xml");
        b("application", "rtf");
        a("application", "font-sfnt");
        a("application", "x-shockwave-flash");
        a("application", "vnd.sketchup.skp");
        b("application", "soap+xml");
        a("application", "x-tar");
        a("application", "font-woff");
        a("application", "font-woff2");
        b("application", "xhtml+xml");
        b("application", "xrd+xml");
        a("application", "zip");
        a("font", "collection");
        a("font", "otf");
        a("font", "sfnt");
        a("font", "ttf");
        a("font", "woff");
        a("font", "woff2");
        i = new Joiner.MapJoiner(new Joiner("; "));
    }

    public MediaType(String str, String str2, ImmutableListMultimap immutableListMultimap) {
        this.f12495a = str;
        this.b = str2;
        this.f12496c = immutableListMultimap;
    }

    public static void a(String str, String str2) {
        MediaType mediaType = new MediaType(str, str2, ImmutableListMultimap.l());
        h.put(mediaType, mediaType);
    }

    public static void b(String str, String str2) {
        MediaType mediaType = new MediaType(str, str2, f);
        h.put(mediaType, mediaType);
        Optional.b(StandardCharsets.UTF_8);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof MediaType) {
                MediaType mediaType = (MediaType) obj;
                if (this.f12495a.equals(mediaType.f12495a) && this.b.equals(mediaType.b)) {
                    if (((AbstractMap) Maps.h(this.f12496c.G(), new a(1))).equals(Maps.h(mediaType.f12496c.G(), new a(1)))) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i2 = this.e;
        if (i2 == 0) {
            int hash = Objects.hash(this.f12495a, this.b, Maps.h(this.f12496c.G(), new a(1)));
            this.e = hash;
            return hash;
        }
        return i2;
    }

    public final String toString() {
        String str = this.d;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f12495a);
            sb.append('/');
            sb.append(this.b);
            ImmutableListMultimap immutableListMultimap = this.f12496c;
            if (!immutableListMultimap.isEmpty()) {
                sb.append("; ");
                Collection i2 = Multimaps.a(immutableListMultimap, new a(0)).i();
                Joiner.MapJoiner mapJoiner = i;
                mapJoiner.getClass();
                try {
                    mapJoiner.a(sb, i2.iterator());
                } catch (IOException e) {
                    throw new AssertionError(e);
                }
            }
            String sb2 = sb.toString();
            this.d = sb2;
            return sb2;
        }
        return str;
    }
}
