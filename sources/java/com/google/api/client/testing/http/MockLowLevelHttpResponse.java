package com.google.api.client.testing.http;

import com.google.api.client.http.HttpStatusCodes;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.testing.util.TestableByteArrayInputStream;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;

@Beta
/* loaded from: classes3.dex */
public class MockLowLevelHttpResponse extends LowLevelHttpResponse {

    /* renamed from: a, reason: collision with root package name */
    public TestableByteArrayInputStream f12090a;
    public String b;
    public String d;

    /* renamed from: c, reason: collision with root package name */
    public int f12091c = HttpStatusCodes.STATUS_CODE_OK;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public long g = -1;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.ByteArrayInputStream, com.google.api.client.testing.util.TestableByteArrayInputStream] */
    public final void a(String str) {
        boolean z = true;
        if (str == null) {
            this.f12090a = null;
            this.g = 0L;
            Preconditions.checkArgument(true);
            return;
        }
        byte[] bytesUtf8 = StringUtils.getBytesUtf8(str);
        if (bytesUtf8 == null) {
            this.f12090a = null;
            this.g = 0L;
            Preconditions.checkArgument(true);
        } else {
            this.f12090a = new ByteArrayInputStream(bytesUtf8);
            long length = bytesUtf8.length;
            this.g = length;
            if (length < -1) {
                z = false;
            }
            Preconditions.checkArgument(z);
        }
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final InputStream getContent() {
        return this.f12090a;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getContentEncoding() {
        return null;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final long getContentLength() {
        return this.g;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getContentType() {
        return this.b;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final int getHeaderCount() {
        return this.e.size();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getHeaderName(int i) {
        return (String) this.e.get(i);
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getHeaderValue(int i) {
        return (String) this.f.get(i);
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getReasonPhrase() {
        return this.d;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final int getStatusCode() {
        return this.f12091c;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getStatusLine() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f12091c);
        String str = this.d;
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }
}
