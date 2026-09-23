package com.google.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.json.JsonHttpContent;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.GenericData;
import com.google.auth.CredentialTypeForMetrics;
import com.google.auth.ServiceAccountSigner;
import com.google.auth.http.HttpCredentialsAdapter;
import com.google.auth.http.HttpTransportFactory;
import com.google.auth.oauth2.ExternalAccountCredentials;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.MetricsUtils;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.MoreExecutors;
import j$.util.Objects;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class ImpersonatedCredentials extends GoogleCredentials implements ServiceAccountSigner, IdTokenProvider {
    public static final LoggerProvider A = new LoggerProvider(ImpersonatedCredentials.class);
    public GoogleCredentials q;
    public final String r;
    public final ArrayList s;
    public final ImmutableList t;
    public final int u;
    public final String v;
    public final transient HttpTransportFactory w;
    public final transient Calendar x;
    public final int y;
    public final int z;

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
        public GoogleCredentials e;
        public String f;
        public ArrayList g;
        public List h;
        public int i;
        public HttpTransportFactory j;
        public Calendar k;
        public int l;
        public int m;
    }

    public ImpersonatedCredentials(Builder builder) {
        super(builder);
        String str = builder.d;
        this.q = builder.e;
        this.r = builder.f;
        ArrayList arrayList = builder.g;
        this.s = arrayList;
        this.t = ImmutableList.s(builder.h);
        int i = builder.i;
        this.u = i;
        HttpTransportFactory httpTransportFactory = (HttpTransportFactory) MoreObjects.a(builder.j, OAuth2Credentials.f(OAuth2Utils.f12138c));
        this.w = httpTransportFactory;
        this.v = httpTransportFactory.getClass().getName();
        this.x = builder.k;
        if (arrayList == null) {
            this.s = new ArrayList();
        }
        if (i <= 43200) {
            if (this.o && !this.q.m().equals(str)) {
                throw new IllegalStateException(android.support.v4.media.a.n("Universe domain ", this.q.m(), " in source credentials does not match ", str, " universe domain set for impersonated credentials."));
            }
            this.y = builder.l;
            this.z = builder.m;
            return;
        }
        throw new IllegalStateException("lifetime must be less than or equal to 43200");
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if ((obj instanceof ImpersonatedCredentials) && super.equals(obj)) {
            ImpersonatedCredentials impersonatedCredentials = (ImpersonatedCredentials) obj;
            if (Objects.equals(this.q, impersonatedCredentials.q) && Objects.equals(this.r, impersonatedCredentials.r) && Objects.equals(this.s, impersonatedCredentials.s) && Objects.equals(this.t, impersonatedCredentials.t) && Integer.valueOf(this.u).equals(Integer.valueOf(impersonatedCredentials.u)) && Objects.equals(this.v, impersonatedCredentials.v)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(this.q, this.r, this.s, this.t, Integer.valueOf(this.u), null, null);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        if (this.q.d() == null) {
            this.q = this.q.l(Collections.singletonList("https://www.googleapis.com/auth/cloud-platform"));
        }
        if (!(this.q instanceof ServiceAccountCredentials) || (m().equals("googleapis.com") && ((ServiceAccountCredentials) this.q).q())) {
            GoogleCredentials googleCredentials = this.q;
            if (!(googleCredentials instanceof IdentityPoolCredentials)) {
                try {
                    OAuth2Credentials.j(googleCredentials.c(MoreExecutors.a()));
                } catch (IOException e) {
                    throw new IOException("Unable to refresh sourceCredentials", e);
                }
            } else {
                new ExternalAccountCredentials(new ExternalAccountCredentials.Builder((IdentityPoolCredentials) googleCredentials));
                throw null;
            }
        }
        HttpTransport a2 = this.w.a();
        JsonObjectParser jsonObjectParser = new JsonObjectParser(OAuth2Utils.d);
        HttpCredentialsAdapter httpCredentialsAdapter = new HttpCredentialsAdapter(this.q);
        HttpRequest buildPostRequest = a2.createRequestFactory().buildPostRequest(new GenericUrl(android.support.v4.media.a.n("https://iamcredentials.", this.q.m(), "/v1/projects/-/serviceAccounts/", this.r, ":generateAccessToken")), new JsonHttpContent(jsonObjectParser.f12079a, ImmutableMap.m("delegates", this.s, "scope", this.t, "lifetime", android.support.v4.media.a.g(this.u, "s", new StringBuilder()))));
        buildPostRequest.setConnectTimeout(this.y);
        buildPostRequest.setReadTimeout(this.z);
        httpCredentialsAdapter.initialize(buildPostRequest);
        buildPostRequest.setParser(jsonObjectParser);
        buildPostRequest.getHeaders().set("x-goog-api-client", (Object) MetricsUtils.a(MetricsUtils.RequestType.ACCESS_TOKEN_REQUEST, CredentialTypeForMetrics.IMPERSONATED_CREDENTIALS));
        try {
            LoggerProvider loggerProvider = A;
            LoggingUtils.a(buildPostRequest, loggerProvider, "Sending request to refresh access token");
            HttpResponse execute = buildPostRequest.execute();
            LoggingUtils.b(execute, loggerProvider, "Received response for refresh access token");
            GenericData genericData = (GenericData) execute.parseAs(GenericData.class);
            LoggingUtils.c(genericData, loggerProvider, "Response payload for access token");
            execute.disconnect();
            String b = OAuth2Utils.b("accessToken", "Expected to find an accessToken", genericData);
            String b2 = OAuth2Utils.b("expireTime", "Expected to find an expireTime", genericData);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssX");
            simpleDateFormat.setCalendar(this.x);
            try {
                return new AccessToken(b, simpleDateFormat.parse(b2));
            } catch (ParseException e2) {
                throw new IOException("Error parsing expireTime: " + e2.getMessage());
            }
        } catch (IOException e3) {
            throw new IOException("Error requesting access token", e3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.auth.oauth2.GoogleCredentials$Builder, com.google.auth.oauth2.OAuth2Credentials$Builder, com.google.auth.oauth2.ImpersonatedCredentials$Builder] */
    @Override // com.google.auth.oauth2.GoogleCredentials
    public final GoogleCredentials l(List list) {
        ?? builder = new GoogleCredentials.Builder(this);
        builder.i = 3600;
        builder.k = Calendar.getInstance();
        builder.e = this.q;
        builder.f = this.r;
        builder.g = this.s;
        builder.h = this.t;
        builder.i = this.u;
        builder.j = this.w;
        builder.l = this.y;
        builder.m = this.z;
        ImmutableList s = ImmutableList.s(list);
        Preconditions.h(s, "Scopes cannot be null");
        builder.h = s;
        builder.f12131a = null;
        try {
            return new ImpersonatedCredentials(builder);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final String m() {
        return this.q.m();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(this.q, "sourceCredentials");
        b.b(this.r, "targetPrincipal");
        b.b(this.s, "delegates");
        b.b(this.t, "scopes");
        b.a(this.u, "lifetime");
        b.b(this.v, "transportFactoryClassName");
        b.b(null, "quotaProjectId");
        b.b(null, "iamEndpointOverride");
        return b.toString();
    }
}
