package com.google.api.client.http;

import android.support.v4.media.a;
import com.google.api.client.util.ArrayValueMap;
import com.google.api.client.util.Base64;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StringUtils;
import com.google.api.client.util.Throwables;
import com.google.api.client.util.Types;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes3.dex */
public class HttpHeaders extends GenericData {

    @Key("Accept")
    private List<String> accept;

    @Key("Accept-Encoding")
    private List<String> acceptEncoding;

    @Key("Age")
    private List<Long> age;

    @Key("WWW-Authenticate")
    private List<String> authenticate;

    @Key("Authorization")
    private List<String> authorization;

    @Key("Cache-Control")
    private List<String> cacheControl;

    @Key(HttpConnection.CONTENT_ENCODING)
    private List<String> contentEncoding;

    @Key("Content-Length")
    private List<Long> contentLength;

    @Key("Content-MD5")
    private List<String> contentMD5;

    @Key("Content-Range")
    private List<String> contentRange;

    @Key(HttpConnection.CONTENT_TYPE)
    private List<String> contentType;

    @Key("Cookie")
    private List<String> cookie;

    @Key("Date")
    private List<String> date;

    @Key("ETag")
    private List<String> etag;

    @Key("Expires")
    private List<String> expires;

    @Key("If-Match")
    private List<String> ifMatch;

    @Key("If-Modified-Since")
    private List<String> ifModifiedSince;

    @Key("If-None-Match")
    private List<String> ifNoneMatch;

    @Key("If-Range")
    private List<String> ifRange;

    @Key("If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;

    @Key("Last-Modified")
    private List<String> lastModified;

    @Key("Location")
    private List<String> location;

    @Key("MIME-Version")
    private List<String> mimeVersion;

    @Key("Range")
    private List<String> range;

    @Key("Retry-After")
    private List<String> retryAfter;

    @Key("User-Agent")
    private List<String> userAgent;

    @Key("Warning")
    private List<String> warning;

    /* loaded from: classes3.dex */
    public static class HeaderParsingFakeLevelHttpRequest extends LowLevelHttpRequest {
        private final ParseHeaderState state;
        private final HttpHeaders target;

        public HeaderParsingFakeLevelHttpRequest(HttpHeaders httpHeaders, ParseHeaderState parseHeaderState) {
            this.target = httpHeaders;
            this.state = parseHeaderState;
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public void addHeader(String str, String str2) {
            this.target.parseHeader(str, str2, this.state);
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public LowLevelHttpResponse execute() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ParseHeaderState {
        final ArrayValueMap arrayValueMap;
        final ClassInfo classInfo;
        final List<Type> context;
        final StringBuilder logger;

        public ParseHeaderState(HttpHeaders httpHeaders, StringBuilder sb) {
            Class<?> cls = httpHeaders.getClass();
            this.context = Arrays.asList(cls);
            this.classInfo = ClassInfo.of(cls, true);
            this.logger = sb;
            this.arrayValueMap = new ArrayValueMap(httpHeaders);
        }

        public void finish() {
            this.arrayValueMap.setValues();
        }
    }

    public HttpHeaders() {
        super(EnumSet.of(GenericData.Flags.IGNORE_CASE));
        this.acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    }

    private static void addHeader(Logger logger, StringBuilder sb, StringBuilder sb2, LowLevelHttpRequest lowLevelHttpRequest, String str, Object obj, Writer writer) {
        String str2;
        if (obj != null && !Data.isNull(obj)) {
            String stringValue = toStringValue(obj);
            if ((!"Authorization".equalsIgnoreCase(str) && !"Cookie".equalsIgnoreCase(str)) || (logger != null && logger.isLoggable(Level.ALL))) {
                str2 = stringValue;
            } else {
                str2 = "<Not Logged>";
            }
            if (sb != null) {
                a.y(sb, str, ": ", str2);
                sb.append(StringUtils.LINE_SEPARATOR);
            }
            if (sb2 != null) {
                a.z(sb2, " -H '", str, ": ", str2);
                sb2.append("'");
            }
            if (lowLevelHttpRequest != null) {
                lowLevelHttpRequest.addHeader(str, stringValue);
            }
            if (writer != null) {
                writer.write(str);
                writer.write(": ");
                writer.write(stringValue);
                writer.write("\r\n");
            }
        }
    }

    private <T> List<T> getAsList(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    private <T> T getFirstHeaderValue(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    private static Object parseValue(Type type, List<Type> list, String str) {
        return Data.parsePrimitiveValue(Data.resolveWildcardTypeOrTypeVariable(list, type), str);
    }

    public static void serializeHeaders(HttpHeaders httpHeaders, StringBuilder sb, StringBuilder sb2, Logger logger, LowLevelHttpRequest lowLevelHttpRequest) {
        serializeHeaders(httpHeaders, sb, sb2, logger, lowLevelHttpRequest, null);
    }

    public static void serializeHeadersForMultipartRequests(HttpHeaders httpHeaders, StringBuilder sb, Logger logger, Writer writer) {
        serializeHeaders(httpHeaders, sb, null, logger, null, writer);
    }

    private static String toStringValue(Object obj) {
        if (obj instanceof Enum) {
            return FieldInfo.of((Enum<?>) obj).getName();
        }
        return obj.toString();
    }

    public HttpHeaders addWarning(String str) {
        if (str == null) {
            return this;
        }
        List<String> list = this.warning;
        if (list == null) {
            this.warning = getAsList(str);
            return this;
        }
        list.add(str);
        return this;
    }

    public final void fromHttpHeaders(HttpHeaders httpHeaders) {
        try {
            ParseHeaderState parseHeaderState = new ParseHeaderState(this, null);
            serializeHeaders(httpHeaders, null, null, null, new HeaderParsingFakeLevelHttpRequest(this, parseHeaderState));
            parseHeaderState.finish();
        } catch (IOException e) {
            throw Throwables.propagate(e);
        }
    }

    public final void fromHttpResponse(LowLevelHttpResponse lowLevelHttpResponse, StringBuilder sb) {
        clear();
        ParseHeaderState parseHeaderState = new ParseHeaderState(this, sb);
        int headerCount = lowLevelHttpResponse.getHeaderCount();
        for (int i = 0; i < headerCount; i++) {
            parseHeader(lowLevelHttpResponse.getHeaderName(i), lowLevelHttpResponse.getHeaderValue(i), parseHeaderState);
        }
        parseHeaderState.finish();
    }

    public final String getAccept() {
        return (String) getFirstHeaderValue(this.accept);
    }

    public final String getAcceptEncoding() {
        return (String) getFirstHeaderValue(this.acceptEncoding);
    }

    public final Long getAge() {
        return (Long) getFirstHeaderValue(this.age);
    }

    public final String getAuthenticate() {
        return (String) getFirstHeaderValue(this.authenticate);
    }

    public final List<String> getAuthenticateAsList() {
        return this.authenticate;
    }

    public final String getAuthorization() {
        return (String) getFirstHeaderValue(this.authorization);
    }

    public final List<String> getAuthorizationAsList() {
        return this.authorization;
    }

    public final String getCacheControl() {
        return (String) getFirstHeaderValue(this.cacheControl);
    }

    public final String getContentEncoding() {
        return (String) getFirstHeaderValue(this.contentEncoding);
    }

    public final Long getContentLength() {
        return (Long) getFirstHeaderValue(this.contentLength);
    }

    public final String getContentMD5() {
        return (String) getFirstHeaderValue(this.contentMD5);
    }

    public final String getContentRange() {
        return (String) getFirstHeaderValue(this.contentRange);
    }

    public final String getContentType() {
        return (String) getFirstHeaderValue(this.contentType);
    }

    public final String getCookie() {
        return (String) getFirstHeaderValue(this.cookie);
    }

    public final String getDate() {
        return (String) getFirstHeaderValue(this.date);
    }

    public final String getETag() {
        return (String) getFirstHeaderValue(this.etag);
    }

    public final String getExpires() {
        return (String) getFirstHeaderValue(this.expires);
    }

    public String getFirstHeaderStringValue(String str) {
        Object obj = get(str.toLowerCase(Locale.US));
        if (obj == null) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if ((obj instanceof Iterable) || cls.isArray()) {
            Iterator it = Types.iterableOf(obj).iterator();
            if (it.hasNext()) {
                return toStringValue(it.next());
            }
        }
        return toStringValue(obj);
    }

    public List<String> getHeaderStringValues(String str) {
        Object obj = get(str.toLowerCase(Locale.US));
        if (obj == null) {
            return Collections.EMPTY_LIST;
        }
        Class<?> cls = obj.getClass();
        if (!(obj instanceof Iterable) && !cls.isArray()) {
            return Collections.singletonList(toStringValue(obj));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = Types.iterableOf(obj).iterator();
        while (it.hasNext()) {
            arrayList.add(toStringValue(it.next()));
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public final String getIfMatch() {
        return (String) getFirstHeaderValue(this.ifMatch);
    }

    public final String getIfModifiedSince() {
        return (String) getFirstHeaderValue(this.ifModifiedSince);
    }

    public final String getIfNoneMatch() {
        return (String) getFirstHeaderValue(this.ifNoneMatch);
    }

    public final String getIfRange() {
        return (String) getFirstHeaderValue(this.ifRange);
    }

    public final String getIfUnmodifiedSince() {
        return (String) getFirstHeaderValue(this.ifUnmodifiedSince);
    }

    public final String getLastModified() {
        return (String) getFirstHeaderValue(this.lastModified);
    }

    public final String getLocation() {
        return (String) getFirstHeaderValue(this.location);
    }

    public final String getMimeVersion() {
        return (String) getFirstHeaderValue(this.mimeVersion);
    }

    public final String getRange() {
        return (String) getFirstHeaderValue(this.range);
    }

    public final String getRetryAfter() {
        return (String) getFirstHeaderValue(this.retryAfter);
    }

    public final String getUserAgent() {
        return (String) getFirstHeaderValue(this.userAgent);
    }

    public final List<String> getWarning() {
        if (this.warning == null) {
            return null;
        }
        return new ArrayList(this.warning);
    }

    public void parseHeader(String str, String str2, ParseHeaderState parseHeaderState) {
        Type iterableParameter;
        List<Type> list = parseHeaderState.context;
        ClassInfo classInfo = parseHeaderState.classInfo;
        ArrayValueMap arrayValueMap = parseHeaderState.arrayValueMap;
        StringBuilder sb = parseHeaderState.logger;
        if (sb != null) {
            sb.append(str + ": " + str2);
            sb.append(StringUtils.LINE_SEPARATOR);
        }
        FieldInfo fieldInfo = classInfo.getFieldInfo(str);
        if (fieldInfo != null) {
            Type resolveWildcardTypeOrTypeVariable = Data.resolveWildcardTypeOrTypeVariable(list, fieldInfo.getGenericType());
            if (Types.isArray(resolveWildcardTypeOrTypeVariable)) {
                Class<?> rawArrayComponentType = Types.getRawArrayComponentType(list, Types.getArrayComponentType(resolveWildcardTypeOrTypeVariable));
                arrayValueMap.put(fieldInfo.getField(), rawArrayComponentType, parseValue(rawArrayComponentType, list, str2));
                return;
            }
            if (Types.isAssignableToOrFrom(Types.getRawArrayComponentType(list, resolveWildcardTypeOrTypeVariable), Iterable.class)) {
                Collection<Object> collection = (Collection) fieldInfo.getValue(this);
                if (collection == null) {
                    collection = Data.newCollectionInstance(resolveWildcardTypeOrTypeVariable);
                    fieldInfo.setValue(this, collection);
                }
                if (resolveWildcardTypeOrTypeVariable == Object.class) {
                    iterableParameter = null;
                } else {
                    iterableParameter = Types.getIterableParameter(resolveWildcardTypeOrTypeVariable);
                }
                collection.add(parseValue(iterableParameter, list, str2));
                return;
            }
            fieldInfo.setValue(this, parseValue(resolveWildcardTypeOrTypeVariable, list, str2));
            return;
        }
        ArrayList arrayList = (ArrayList) get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            set(str, (Object) arrayList);
        }
        arrayList.add(str2);
    }

    public HttpHeaders setAccept(String str) {
        this.accept = getAsList(str);
        return this;
    }

    public HttpHeaders setAcceptEncoding(String str) {
        this.acceptEncoding = getAsList(str);
        return this;
    }

    public HttpHeaders setAge(Long l) {
        this.age = getAsList(l);
        return this;
    }

    public HttpHeaders setAuthenticate(String str) {
        this.authenticate = getAsList(str);
        return this;
    }

    public HttpHeaders setAuthorization(String str) {
        return setAuthorization(getAsList(str));
    }

    public HttpHeaders setBasicAuthentication(String str, String str2) {
        return setAuthorization("Basic " + Base64.encodeBase64String(StringUtils.getBytesUtf8(((String) Preconditions.checkNotNull(str)) + ":" + ((String) Preconditions.checkNotNull(str2)))));
    }

    public HttpHeaders setCacheControl(String str) {
        this.cacheControl = getAsList(str);
        return this;
    }

    public HttpHeaders setContentEncoding(String str) {
        this.contentEncoding = getAsList(str);
        return this;
    }

    public HttpHeaders setContentLength(Long l) {
        this.contentLength = getAsList(l);
        return this;
    }

    public HttpHeaders setContentMD5(String str) {
        this.contentMD5 = getAsList(str);
        return this;
    }

    public HttpHeaders setContentRange(String str) {
        this.contentRange = getAsList(str);
        return this;
    }

    public HttpHeaders setContentType(String str) {
        this.contentType = getAsList(str);
        return this;
    }

    public HttpHeaders setCookie(String str) {
        this.cookie = getAsList(str);
        return this;
    }

    public HttpHeaders setDate(String str) {
        this.date = getAsList(str);
        return this;
    }

    public HttpHeaders setETag(String str) {
        this.etag = getAsList(str);
        return this;
    }

    public HttpHeaders setExpires(String str) {
        this.expires = getAsList(str);
        return this;
    }

    public HttpHeaders setIfMatch(String str) {
        this.ifMatch = getAsList(str);
        return this;
    }

    public HttpHeaders setIfModifiedSince(String str) {
        this.ifModifiedSince = getAsList(str);
        return this;
    }

    public HttpHeaders setIfNoneMatch(String str) {
        this.ifNoneMatch = getAsList(str);
        return this;
    }

    public HttpHeaders setIfRange(String str) {
        this.ifRange = getAsList(str);
        return this;
    }

    public HttpHeaders setIfUnmodifiedSince(String str) {
        this.ifUnmodifiedSince = getAsList(str);
        return this;
    }

    public HttpHeaders setLastModified(String str) {
        this.lastModified = getAsList(str);
        return this;
    }

    public HttpHeaders setLocation(String str) {
        this.location = getAsList(str);
        return this;
    }

    public HttpHeaders setMimeVersion(String str) {
        this.mimeVersion = getAsList(str);
        return this;
    }

    public HttpHeaders setRange(String str) {
        this.range = getAsList(str);
        return this;
    }

    public HttpHeaders setRetryAfter(String str) {
        this.retryAfter = getAsList(str);
        return this;
    }

    public HttpHeaders setUserAgent(String str) {
        this.userAgent = getAsList(str);
        return this;
    }

    public static void serializeHeaders(HttpHeaders httpHeaders, StringBuilder sb, StringBuilder sb2, Logger logger, LowLevelHttpRequest lowLevelHttpRequest, Writer writer) {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : httpHeaders.entrySet()) {
            String key = entry.getKey();
            Preconditions.checkArgument(hashSet.add(key), "multiple headers of the same name (headers are case insensitive): %s", key);
            Object value = entry.getValue();
            if (value != null) {
                FieldInfo fieldInfo = httpHeaders.getClassInfo().getFieldInfo(key);
                if (fieldInfo != null) {
                    key = fieldInfo.getName();
                }
                String str = key;
                Class<?> cls = value.getClass();
                if (!(value instanceof Iterable) && !cls.isArray()) {
                    addHeader(logger, sb, sb2, lowLevelHttpRequest, str, value, writer);
                } else {
                    Iterator it = Types.iterableOf(value).iterator();
                    while (it.hasNext()) {
                        addHeader(logger, sb, sb2, lowLevelHttpRequest, str, it.next(), writer);
                    }
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    @Override // com.google.api.client.util.GenericData
    public HttpHeaders set(String str, Object obj) {
        return (HttpHeaders) super.set(str, obj);
    }

    public HttpHeaders setAuthorization(List<String> list) {
        this.authorization = list;
        return this;
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public HttpHeaders clone() {
        return (HttpHeaders) super.clone();
    }
}
