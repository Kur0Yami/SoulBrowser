package com.google.api.client.auth.oauth2;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleOAuthConstants;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Base64;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Data;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.Lists;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Strings;
import com.google.api.client.util.store.DataStore;
import j$.util.DesugarCollections;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Collection;

/* loaded from: classes3.dex */
public class AuthorizationCodeFlow {
    private final String authorizationServerEncodedUrl;
    private final HttpExecuteInterceptor clientAuthentication;
    private final String clientId;
    private final Clock clock;
    private final CredentialCreatedListener credentialCreatedListener;

    @Beta
    private final DataStore<StoredCredential> credentialDataStore;

    @Beta
    @Deprecated
    private final CredentialStore credentialStore;
    private final JsonFactory jsonFactory;
    private final Credential.AccessMethod method;
    private final PKCE pkce;
    private final Collection<CredentialRefreshListener> refreshListeners;
    private final HttpRequestInitializer requestInitializer;
    private final Collection<String> scopes;
    private final String tokenServerEncodedUrl;
    private final HttpTransport transport;

    /* renamed from: com.google.api.client.auth.oauth2.AuthorizationCodeFlow$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements HttpExecuteInterceptor {
        @Override // com.google.api.client.http.HttpExecuteInterceptor
        public final void intercept(HttpRequest httpRequest) {
            null.clientAuthentication.intercept(httpRequest);
            if (null.pkce != null) {
                Data.mapOf(UrlEncodedContent.getContent(httpRequest).getData()).put("code_verifier", null.pkce.f12069a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder {
        String authorizationServerEncodedUrl;
        HttpExecuteInterceptor clientAuthentication;
        String clientId;
        CredentialCreatedListener credentialCreatedListener;

        @Beta
        DataStore<StoredCredential> credentialDataStore;

        @Beta
        @Deprecated
        CredentialStore credentialStore;
        JsonFactory jsonFactory;
        Credential.AccessMethod method;
        PKCE pkce;
        HttpRequestInitializer requestInitializer;
        GenericUrl tokenServerUrl;
        HttpTransport transport;
        Collection<String> scopes = Lists.newArrayList();
        Clock clock = Clock.SYSTEM;
        Collection<CredentialRefreshListener> refreshListeners = Lists.newArrayList();

        public Builder(Credential.AccessMethod accessMethod, HttpTransport httpTransport, JsonFactory jsonFactory, GenericUrl genericUrl, ClientParametersAuthentication clientParametersAuthentication, String str) {
            setMethod(accessMethod);
            setTransport(httpTransport);
            setJsonFactory(jsonFactory);
            setTokenServerUrl(genericUrl);
            setClientAuthentication(clientParametersAuthentication);
            setClientId(str);
            setAuthorizationServerEncodedUrl(GoogleOAuthConstants.AUTHORIZATION_SERVER_URL);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addRefreshListener(CredentialRefreshListener credentialRefreshListener) {
            this.refreshListeners.add(Preconditions.checkNotNull(credentialRefreshListener));
            return this;
        }

        @Beta
        public Builder enablePKCE() {
            this.pkce = new PKCE();
            return this;
        }

        public final String getAuthorizationServerEncodedUrl() {
            return this.authorizationServerEncodedUrl;
        }

        public final HttpExecuteInterceptor getClientAuthentication() {
            return this.clientAuthentication;
        }

        public final String getClientId() {
            return this.clientId;
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final CredentialCreatedListener getCredentialCreatedListener() {
            return this.credentialCreatedListener;
        }

        @Beta
        public final DataStore<StoredCredential> getCredentialDataStore() {
            return this.credentialDataStore;
        }

        @Beta
        @Deprecated
        public final CredentialStore getCredentialStore() {
            return this.credentialStore;
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final Credential.AccessMethod getMethod() {
            return this.method;
        }

        public final Collection<CredentialRefreshListener> getRefreshListeners() {
            return this.refreshListeners;
        }

        public final HttpRequestInitializer getRequestInitializer() {
            return this.requestInitializer;
        }

        public final Collection<String> getScopes() {
            return this.scopes;
        }

        public final GenericUrl getTokenServerUrl() {
            return this.tokenServerUrl;
        }

        public final HttpTransport getTransport() {
            return this.transport;
        }

        public Builder setAuthorizationServerEncodedUrl(String str) {
            this.authorizationServerEncodedUrl = (String) Preconditions.checkNotNull(str);
            return this;
        }

        public Builder setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
            this.clientAuthentication = httpExecuteInterceptor;
            return this;
        }

        public Builder setClientId(String str) {
            this.clientId = (String) Preconditions.checkNotNull(str);
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setCredentialCreatedListener(CredentialCreatedListener credentialCreatedListener) {
            this.credentialCreatedListener = credentialCreatedListener;
            return this;
        }

        public Builder setCredentialDataStore(DataStore dataStore) {
            boolean z;
            if (this.credentialStore == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.credentialDataStore = dataStore;
            return this;
        }

        public Builder setCredentialStore(CredentialStore credentialStore) {
            boolean z;
            if (this.credentialDataStore == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.credentialStore = credentialStore;
            return this;
        }

        public Builder setJsonFactory(JsonFactory jsonFactory) {
            this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
            return this;
        }

        public Builder setMethod(Credential.AccessMethod accessMethod) {
            this.method = (Credential.AccessMethod) Preconditions.checkNotNull(accessMethod);
            return this;
        }

        public Builder setRefreshListeners(Collection collection) {
            this.refreshListeners = (Collection) Preconditions.checkNotNull(collection);
            return this;
        }

        public Builder setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            this.requestInitializer = httpRequestInitializer;
            return this;
        }

        public Builder setScopes(Collection collection) {
            this.scopes = (Collection) Preconditions.checkNotNull(collection);
            return this;
        }

        public Builder setTokenServerUrl(GenericUrl genericUrl) {
            this.tokenServerUrl = (GenericUrl) Preconditions.checkNotNull(genericUrl);
            return this;
        }

        public Builder setTransport(HttpTransport httpTransport) {
            this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public interface CredentialCreatedListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public static class PKCE {

        /* renamed from: a, reason: collision with root package name */
        public final String f12069a;

        public PKCE() {
            byte[] bArr = new byte[32];
            new SecureRandom().nextBytes(bArr);
            String encodeBase64URLSafeString = Base64.encodeBase64URLSafeString(bArr);
            this.f12069a = encodeBase64URLSafeString;
            try {
                byte[] bytes = encodeBase64URLSafeString.getBytes();
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(bytes, 0, bytes.length);
                Base64.encodeBase64URLSafeString(messageDigest.digest());
            } catch (NoSuchAlgorithmException unused) {
            }
        }
    }

    public AuthorizationCodeFlow(GoogleAuthorizationCodeFlow.Builder builder) {
        this.method = (Credential.AccessMethod) Preconditions.checkNotNull(builder.method);
        this.transport = (HttpTransport) Preconditions.checkNotNull(builder.transport);
        this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(builder.jsonFactory);
        this.tokenServerEncodedUrl = ((GenericUrl) Preconditions.checkNotNull(builder.tokenServerUrl)).build();
        this.clientAuthentication = builder.clientAuthentication;
        this.clientId = (String) Preconditions.checkNotNull(builder.clientId);
        this.authorizationServerEncodedUrl = (String) Preconditions.checkNotNull(builder.authorizationServerEncodedUrl);
        this.requestInitializer = builder.requestInitializer;
        this.credentialStore = builder.credentialStore;
        this.credentialDataStore = builder.credentialDataStore;
        this.scopes = DesugarCollections.unmodifiableCollection(builder.scopes);
        this.clock = (Clock) Preconditions.checkNotNull(builder.clock);
        this.credentialCreatedListener = builder.credentialCreatedListener;
        this.refreshListeners = DesugarCollections.unmodifiableCollection(builder.refreshListeners);
        this.pkce = builder.pkce;
    }

    public final Credential a(String str) {
        Credential.Builder builder = new Credential.Builder(this.method);
        builder.transport = this.transport;
        builder.jsonFactory = this.jsonFactory;
        builder.setTokenServerEncodedUrl(this.tokenServerEncodedUrl);
        builder.clientAuthentication = this.clientAuthentication;
        builder.requestInitializer = this.requestInitializer;
        builder.setClock(this.clock);
        DataStore<StoredCredential> dataStore = this.credentialDataStore;
        if (dataStore != null) {
            builder.addRefreshListener(new DataStoreCredentialRefreshListener(str, dataStore));
        } else {
            CredentialStore credentialStore = this.credentialStore;
            if (credentialStore != null) {
                builder.addRefreshListener(new CredentialStoreRefreshListener(str, credentialStore));
            }
        }
        builder.getRefreshListeners().addAll(this.refreshListeners);
        return new Credential(builder);
    }

    public Credential createAndStoreCredential(TokenResponse tokenResponse, String str) {
        Credential fromTokenResponse = a(str).setFromTokenResponse(tokenResponse);
        CredentialStore credentialStore = this.credentialStore;
        if (credentialStore != null) {
            credentialStore.a();
        }
        DataStore<StoredCredential> dataStore = this.credentialDataStore;
        if (dataStore != null) {
            dataStore.set(str, new StoredCredential(fromTokenResponse));
        }
        CredentialCreatedListener credentialCreatedListener = this.credentialCreatedListener;
        if (credentialCreatedListener != null) {
            credentialCreatedListener.a();
        }
        return fromTokenResponse;
    }

    public final String getAuthorizationServerEncodedUrl() {
        return this.authorizationServerEncodedUrl;
    }

    public final HttpExecuteInterceptor getClientAuthentication() {
        return this.clientAuthentication;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final Clock getClock() {
        return this.clock;
    }

    @Beta
    public final DataStore<StoredCredential> getCredentialDataStore() {
        return this.credentialDataStore;
    }

    @Beta
    @Deprecated
    public final CredentialStore getCredentialStore() {
        return this.credentialStore;
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final Credential.AccessMethod getMethod() {
        return this.method;
    }

    public final Collection<CredentialRefreshListener> getRefreshListeners() {
        return this.refreshListeners;
    }

    public final HttpRequestInitializer getRequestInitializer() {
        return this.requestInitializer;
    }

    public final Collection<String> getScopes() {
        return this.scopes;
    }

    public final String getScopesAsString() {
        return Joiner.on(' ').join(this.scopes);
    }

    public final String getTokenServerEncodedUrl() {
        return this.tokenServerEncodedUrl;
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    public Credential loadCredential(String str) {
        if (!Strings.isNullOrEmpty(str)) {
            if (this.credentialDataStore != null || this.credentialStore != null) {
                Credential a2 = a(str);
                DataStore<StoredCredential> dataStore = this.credentialDataStore;
                if (dataStore != null) {
                    StoredCredential storedCredential = dataStore.get(str);
                    if (storedCredential != null) {
                        a2.setAccessToken(storedCredential.a());
                        a2.setRefreshToken(storedCredential.c());
                        a2.setExpirationTimeMilliseconds(storedCredential.b());
                        return a2;
                    }
                    return null;
                }
                if (!this.credentialStore.b()) {
                    return null;
                }
                return a2;
            }
            return null;
        }
        return null;
    }
}
