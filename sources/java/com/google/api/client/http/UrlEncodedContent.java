package com.google.api.client.http;

import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Types;
import com.google.api.client.util.escape.CharEscapers;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class UrlEncodedContent extends AbstractHttpContent {
    private Object data;
    private boolean uriPathEncodingFlag;

    public UrlEncodedContent(Object obj) {
        super(UrlEncodedParser.MEDIA_TYPE);
        setData(obj);
        this.uriPathEncodingFlag = false;
    }

    private static boolean appendParam(boolean z, Writer writer, String str, Object obj, boolean z2) {
        String obj2;
        String escapeUri;
        if (obj != null && !Data.isNull(obj)) {
            if (z) {
                z = false;
            } else {
                writer.write("&");
            }
            writer.write(str);
            if (obj instanceof Enum) {
                obj2 = FieldInfo.of((Enum<?>) obj).getName();
            } else {
                obj2 = obj.toString();
            }
            if (z2) {
                escapeUri = CharEscapers.escapeUriPath(obj2);
            } else {
                escapeUri = CharEscapers.escapeUri(obj2);
            }
            if (escapeUri.length() != 0) {
                writer.write("=");
                writer.write(escapeUri);
            }
        }
        return z;
    }

    public static UrlEncodedContent getContent(HttpRequest httpRequest) {
        HttpContent content = httpRequest.getContent();
        if (content != null) {
            return (UrlEncodedContent) content;
        }
        UrlEncodedContent urlEncodedContent = new UrlEncodedContent(new HashMap());
        httpRequest.setContent(urlEncodedContent);
        return urlEncodedContent;
    }

    public final Object getData() {
        return this.data;
    }

    public UrlEncodedContent setData(Object obj) {
        this.data = Preconditions.checkNotNull(obj);
        return this;
    }

    @Override // com.google.api.client.http.HttpContent, com.google.api.client.util.StreamingContent
    public void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, getCharset()));
        boolean z = true;
        for (Map.Entry<String, Object> entry : Data.mapOf(this.data).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String escapeUri = CharEscapers.escapeUri(entry.getKey());
                Class<?> cls = value.getClass();
                if (!(value instanceof Iterable) && !cls.isArray()) {
                    z = appendParam(z, bufferedWriter, escapeUri, value, this.uriPathEncodingFlag);
                } else {
                    Iterator it = Types.iterableOf(value).iterator();
                    while (it.hasNext()) {
                        z = appendParam(z, bufferedWriter, escapeUri, it.next(), this.uriPathEncodingFlag);
                    }
                }
            }
        }
        bufferedWriter.flush();
    }

    @Override // com.google.api.client.http.AbstractHttpContent
    public UrlEncodedContent setMediaType(HttpMediaType httpMediaType) {
        super.setMediaType(httpMediaType);
        return this;
    }

    public UrlEncodedContent(Object obj, boolean z) {
        super(UrlEncodedParser.MEDIA_TYPE);
        setData(obj);
        this.uriPathEncodingFlag = z;
    }
}
