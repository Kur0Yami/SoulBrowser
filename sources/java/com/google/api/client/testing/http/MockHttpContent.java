package com.google.api.client.testing.http;

import com.google.api.client.http.HttpContent;
import com.google.api.client.util.Beta;
import java.io.OutputStream;

@Beta
/* loaded from: classes3.dex */
public class MockHttpContent implements HttpContent {
    @Override // com.google.api.client.http.HttpContent
    public final long getLength() {
        return 0L;
    }

    @Override // com.google.api.client.http.HttpContent
    public final String getType() {
        return null;
    }

    @Override // com.google.api.client.http.HttpContent
    public final boolean retrySupported() {
        return true;
    }

    @Override // com.google.api.client.http.HttpContent, com.google.api.client.util.StreamingContent
    public final void writeTo(OutputStream outputStream) {
        outputStream.write((byte[]) null);
        outputStream.flush();
    }
}
