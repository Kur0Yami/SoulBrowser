package org.apache.commons.text.lookup;

import com.google.android.gms.common.internal.ImagesContract;

/* loaded from: classes4.dex */
public enum DefaultStringLookup {
    BASE64_DECODER("base64Decoder", StringLookupFactory.f22484a),
    BASE64_ENCODER("base64Encoder", StringLookupFactory.b),
    CONST("const", ConstantStringLookup.f22476c),
    DATE("date", DateStringLookup.b),
    /* JADX INFO: Fake field, exist only in values array */
    DNS("dns", DnsStringLookup.b),
    ENVIRONMENT("env", StringLookupFactory.f22485c),
    FILE("file", FileStringLookup.f22478c),
    JAVA("java", JavaPlatformStringLookup.b),
    LOCAL_HOST("localhost", InetAddressStringLookup.f22479c),
    LOOPBACK_ADDRESS("loobackAddress", InetAddressStringLookup.d),
    PROPERTIES("properties", PropertiesStringLookup.f22483c),
    RESOURCE_BUNDLE("resourceBundle", ResourceBundleStringLookup.b),
    /* JADX INFO: Fake field, exist only in values array */
    SCRIPT("script", ScriptStringLookup.b),
    SYSTEM_PROPERTIES("sys", StringLookupFactory.d),
    /* JADX INFO: Fake field, exist only in values array */
    URL(ImagesContract.URL, UrlStringLookup.b),
    URL_DECODER("urlDecoder", UrlDecoderStringLookup.b),
    URL_ENCODER("urlEncoder", UrlEncoderStringLookup.b),
    XML("xml", XmlStringLookup.e),
    XML_DECODER("xmlDecoder", XmlDecoderStringLookup.b),
    XML_ENCODER("xmlEncoder", XmlEncoderStringLookup.b);


    /* renamed from: c, reason: collision with root package name */
    public final String f22477c;
    public final StringLookup f;

    DefaultStringLookup(String str, StringLookup stringLookup) {
        this.f22477c = str;
        this.f = stringLookup;
    }
}
