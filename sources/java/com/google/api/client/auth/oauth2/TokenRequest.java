package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* loaded from: classes3.dex */
public class TokenRequest extends GenericData {
    HttpExecuteInterceptor clientAuthentication;

    @Key("grant_type")
    private String grantType;
    private final JsonFactory jsonFactory;
    HttpRequestInitializer requestInitializer;
    protected Class<? extends TokenResponse> responseClass;

    @Key("scope")
    private String scopes;
    private GenericUrl tokenServerUrl;
    private final HttpTransport transport;

    public TokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, GenericUrl genericUrl, String str) {
        this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
        this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        setTokenServerUrl(genericUrl);
        setGrantType(str);
        setResponseClass(TokenResponse.class);
    }

    public TokenResponse execute() {
        return (TokenResponse) executeUnparsed().parseAs((Class) this.responseClass);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v14, types: [com.google.api.client.auth.oauth2.TokenErrorResponse, com.google.api.client.json.GenericJson] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.api.client.auth.oauth2.TokenErrorResponse] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.api.client.http.HttpResponse executeUnparsed() {
        /*
            r8 = this;
            com.google.api.client.http.HttpTransport r0 = r8.transport
            com.google.api.client.auth.oauth2.TokenRequest$1 r1 = new com.google.api.client.auth.oauth2.TokenRequest$1
            r1.<init>()
            com.google.api.client.http.HttpRequestFactory r0 = r0.createRequestFactory(r1)
            com.google.api.client.http.GenericUrl r1 = r8.tokenServerUrl
            com.google.api.client.http.UrlEncodedContent r2 = new com.google.api.client.http.UrlEncodedContent
            r2.<init>(r8)
            com.google.api.client.http.HttpRequest r0 = r0.buildPostRequest(r1, r2)
            com.google.api.client.json.JsonObjectParser r1 = new com.google.api.client.json.JsonObjectParser
            com.google.api.client.json.JsonFactory r2 = r8.jsonFactory
            r1.<init>(r2)
            r0.setParser(r1)
            r1 = 0
            r0.setThrowExceptionOnExecuteError(r1)
            com.google.api.client.http.HttpResponse r0 = r0.execute()
            boolean r1 = r0.isSuccessStatusCode()
            if (r1 == 0) goto L2f
            return r0
        L2f:
            com.google.api.client.json.JsonFactory r1 = r8.jsonFactory
            int r2 = com.google.api.client.auth.oauth2.TokenResponseException.f
            com.google.api.client.http.HttpResponseException$Builder r2 = new com.google.api.client.http.HttpResponseException$Builder
            int r3 = r0.getStatusCode()
            java.lang.String r4 = r0.getStatusMessage()
            com.google.api.client.http.HttpHeaders r5 = r0.getHeaders()
            r2.<init>(r3, r4, r5)
            com.google.api.client.util.Preconditions.checkNotNull(r1)
            java.lang.String r3 = r0.getContentType()
            r4 = 0
            boolean r5 = r0.isSuccessStatusCode()     // Catch: java.io.IOException -> L80
            if (r5 != 0) goto L83
            if (r3 == 0) goto L83
            java.io.InputStream r5 = r0.getContent()     // Catch: java.io.IOException -> L80
            if (r5 == 0) goto L83
            java.lang.String r5 = "application/json; charset=UTF-8"
            boolean r3 = com.google.api.client.http.HttpMediaType.equalsIgnoreParameters(r5, r3)     // Catch: java.io.IOException -> L80
            if (r3 == 0) goto L83
            com.google.api.client.json.JsonObjectParser r3 = new com.google.api.client.json.JsonObjectParser     // Catch: java.io.IOException -> L80
            r3.<init>(r1)     // Catch: java.io.IOException -> L80
            java.io.InputStream r1 = r0.getContent()     // Catch: java.io.IOException -> L80
            java.nio.charset.Charset r5 = r0.getContentCharset()     // Catch: java.io.IOException -> L80
            java.lang.Class<com.google.api.client.auth.oauth2.TokenErrorResponse> r6 = com.google.api.client.auth.oauth2.TokenErrorResponse.class
            java.lang.Object r1 = r3.parseAndClose(r1, r5, r6)     // Catch: java.io.IOException -> L80
            com.google.api.client.auth.oauth2.TokenErrorResponse r1 = (com.google.api.client.auth.oauth2.TokenErrorResponse) r1     // Catch: java.io.IOException -> L80
            java.lang.String r3 = r1.toPrettyString()     // Catch: java.io.IOException -> L7e
            r4 = r1
            r1 = r3
            goto L87
        L7e:
            r3 = move-exception
            goto L8b
        L80:
            r3 = move-exception
            r1 = r4
            goto L8b
        L83:
            java.lang.String r1 = r0.parseAsString()     // Catch: java.io.IOException -> L80
        L87:
            r7 = r4
            r4 = r1
            r1 = r7
            goto L8e
        L8b:
            r3.printStackTrace()
        L8e:
            java.lang.StringBuilder r0 = com.google.api.client.http.HttpResponseException.computeMessageBuffer(r0)
            boolean r3 = com.google.api.client.util.Strings.isNullOrEmpty(r4)
            if (r3 != 0) goto La3
            java.lang.String r3 = com.google.api.client.util.StringUtils.LINE_SEPARATOR
            r0.append(r3)
            r0.append(r4)
            r2.setContent(r4)
        La3:
            java.lang.String r0 = r0.toString()
            r2.setMessage(r0)
            com.google.api.client.auth.oauth2.TokenResponseException r0 = new com.google.api.client.auth.oauth2.TokenResponseException
            r0.<init>(r2, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.TokenRequest.executeUnparsed():com.google.api.client.http.HttpResponse");
    }

    public final HttpExecuteInterceptor getClientAuthentication() {
        return this.clientAuthentication;
    }

    public final String getGrantType() {
        return this.grantType;
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final HttpRequestInitializer getRequestInitializer() {
        return this.requestInitializer;
    }

    public final Class<? extends TokenResponse> getResponseClass() {
        return this.responseClass;
    }

    public final String getScopes() {
        return this.scopes;
    }

    public final GenericUrl getTokenServerUrl() {
        return this.tokenServerUrl;
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    public TokenRequest setGrantType(String str) {
        this.grantType = (String) Preconditions.checkNotNull(str);
        return this;
    }

    public TokenRequest setResponseClass(Class cls) {
        this.responseClass = TokenResponse.class;
        return this;
    }

    public TokenRequest setScopes(Collection collection) {
        String join;
        if (collection == null) {
            join = null;
        } else {
            join = Joiner.on(' ').join(collection);
        }
        this.scopes = join;
        return this;
    }

    public TokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        boolean z;
        this.tokenServerUrl = genericUrl;
        if (genericUrl.getFragment() == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        return this;
    }

    @Override // com.google.api.client.util.GenericData
    public TokenRequest set(String str, Object obj) {
        return (TokenRequest) super.set(str, obj);
    }
}
