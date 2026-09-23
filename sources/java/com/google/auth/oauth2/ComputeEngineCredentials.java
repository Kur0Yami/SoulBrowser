package com.google.auth.oauth2;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.GenericData;
import com.google.auth.CredentialTypeForMetrics;
import com.google.auth.ServiceAccountSigner;
import com.google.auth.http.HttpTransportFactory;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.MetricsUtils;
import com.google.common.base.Joiner;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import j$.time.Duration;
import j$.util.Objects;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class ComputeEngineCredentials extends GoogleCredentials implements ServiceAccountSigner, IdTokenProvider {
    public static final LoggerProvider u;
    public final String q;
    public final ImmutableSet r;
    public final transient HttpTransportFactory s;
    public String t;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class BindingEnforcement {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ BindingEnforcement[] f12113c = {new Enum("ON", 0), new Enum("IAM_POLICY", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        BindingEnforcement EF5;

        public static BindingEnforcement valueOf(String str) {
            return (BindingEnforcement) Enum.valueOf(BindingEnforcement.class, str);
        }

        public static BindingEnforcement[] values() {
            return (BindingEnforcement[]) f12113c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
        public HttpTransportFactory e;
        public Collection f;
        public Collection g;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class GoogleAuthTransport {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ GoogleAuthTransport[] f12114c = {new Enum("ALTS", 0), new Enum("MTLS", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        GoogleAuthTransport EF5;

        public static GoogleAuthTransport valueOf(String str) {
            return (GoogleAuthTransport) Enum.valueOf(GoogleAuthTransport.class, str);
        }

        public static GoogleAuthTransport[] values() {
            return (GoogleAuthTransport[]) f12114c.clone();
        }
    }

    static {
        Duration.ofMinutes(3L);
        Duration.ofMinutes(3L).plusSeconds(45L);
        Logger.getLogger(ComputeEngineCredentials.class.getName());
        u = new LoggerProvider(ComputeEngineCredentials.class);
    }

    public ComputeEngineCredentials(Builder builder) {
        super(builder);
        this.t = null;
        HttpTransportFactory httpTransportFactory = (HttpTransportFactory) MoreObjects.a(builder.e, OAuth2Credentials.f(OAuth2Utils.f12138c));
        this.s = httpTransportFactory;
        this.q = httpTransportFactory.getClass().getName();
        Collection collection = builder.f;
        collection = (collection == null || collection.isEmpty()) ? builder.g : collection;
        if (collection == null) {
            this.r = ImmutableSet.w();
            return;
        }
        ArrayList arrayList = new ArrayList(collection);
        arrayList.removeAll(Arrays.asList(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null));
        this.r = ImmutableSet.t(arrayList);
    }

    public static String p() {
        int i = DefaultCredentialsProvider.f12115a;
        String str = System.getenv("GCE_METADATA_HOST");
        if (str != null) {
            return "http://".concat(str);
        }
        return "http://metadata.google.internal";
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if ((obj instanceof ComputeEngineCredentials) && super.equals(obj)) {
            ComputeEngineCredentials computeEngineCredentials = (ComputeEngineCredentials) obj;
            if (Objects.equals(this.q, computeEngineCredentials.q) && Objects.equals(this.r, computeEngineCredentials.r) && Objects.equals(this.t, computeEngineCredentials.t)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(this.q);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        int i = DefaultCredentialsProvider.f12115a;
        GenericUrl genericUrl = new GenericUrl(p() + "/computeMetadata/v1/instance/service-accounts/default/token");
        ImmutableSet immutableSet = this.r;
        if (!immutableSet.isEmpty()) {
            genericUrl.set("scopes", (Object) Joiner.d(',').c(immutableSet.iterator()));
        }
        HttpResponse o = o(genericUrl.toString(), MetricsUtils.RequestType.ACCESS_TOKEN_REQUEST, true);
        int statusCode = o.getStatusCode();
        if (statusCode != 404) {
            if (statusCode == 200) {
                if (o.getContent() != null) {
                    GenericData genericData = (GenericData) o.parseAs(GenericData.class);
                    LoggingUtils.c(genericData, u, "Response payload for access token");
                    return new AccessToken(OAuth2Utils.b("access_token", "Error parsing token refresh response. ", genericData), new Date(this.j.currentTimeMillis() + (OAuth2Utils.a(genericData) * 1000)));
                }
                throw new IOException("Empty content from metadata token server request.");
            }
            throw new IOException("Unexpected Error code " + statusCode + " trying to get security access token from Compute Engine metadata for the default service account: " + o.parseAsString());
        }
        throw new IOException(android.support.v4.media.a.f(statusCode, "Error code ", " trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified. It is possible to skip checking for Compute Engine metadata by specifying the environment  variable NO_GCE_CHECK=true."));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.auth.oauth2.GoogleCredentials$Builder, com.google.auth.oauth2.ComputeEngineCredentials$Builder, com.google.auth.oauth2.OAuth2Credentials$Builder] */
    @Override // com.google.auth.oauth2.GoogleCredentials
    public final GoogleCredentials l(List list) {
        ImmutableList v = ImmutableList.v();
        ?? builder = new GoogleCredentials.Builder(this);
        builder.e = this.s;
        builder.f = list;
        builder.g = v;
        builder.f12131a = null;
        return new ComputeEngineCredentials(builder);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final String m() {
        if (this.o) {
            return this.n;
        }
        synchronized (this) {
            try {
                String str = this.t;
                if (str != null) {
                    return str;
                }
                String str2 = "googleapis.com";
                StringBuilder sb = new StringBuilder();
                int i = DefaultCredentialsProvider.f12115a;
                sb.append(p());
                sb.append("/computeMetadata/v1/universe/universe-domain");
                HttpResponse o = o(sb.toString(), MetricsUtils.RequestType.UNTRACKED, false);
                int statusCode = o.getStatusCode();
                if (statusCode != 404) {
                    if (statusCode == 200) {
                        String parseAsString = o.parseAsString();
                        if (!parseAsString.isEmpty()) {
                            str2 = parseAsString;
                        }
                    } else {
                        throw new IOException(new IOException("Unexpected Error code " + statusCode + " trying to get universe domain from Compute Engine metadata for the default service account: " + o.parseAsString()));
                    }
                }
                synchronized (this) {
                    this.t = str2;
                }
                return str2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final MoreObjects.ToStringHelper n() {
        MoreObjects.ToStringHelper n;
        synchronized (this) {
            n = super.n();
            n.b(this.q, "transportFactoryClassName");
            n.b(this.r, "scopes");
            n.b(this.t, "universeDomainFromMetadata");
        }
        return n;
    }

    public final HttpResponse o(String str, MetricsUtils.RequestType requestType, boolean z) {
        String str2;
        String str3;
        HttpRequest buildGetRequest = this.s.a().createRequestFactory().buildGetRequest(new GenericUrl(str));
        buildGetRequest.setParser(new JsonObjectParser(OAuth2Utils.d));
        buildGetRequest.getHeaders().set("Metadata-Flavor", (Object) "Google");
        if (z) {
            buildGetRequest.getHeaders().set("x-goog-api-client", (Object) MetricsUtils.a(requestType, CredentialTypeForMetrics.VM_CREDENTIALS));
        }
        buildGetRequest.setThrowExceptionOnExecuteError(false);
        try {
            if (requestType.equals(MetricsUtils.RequestType.ID_TOKEN_REQUEST)) {
                str2 = "Sending request to get ID token";
                str3 = "Received response for ID token request";
            } else if (requestType.equals(MetricsUtils.RequestType.ACCESS_TOKEN_REQUEST)) {
                str2 = "Sending request to refresh access token";
                str3 = "Received response for refresh access token";
            } else {
                str2 = "Sending request for universe domain/default service account";
                str3 = "Received response for universe domain/default service account";
            }
            LoggerProvider loggerProvider = u;
            LoggingUtils.a(buildGetRequest, loggerProvider, str2);
            HttpResponse execute = buildGetRequest.execute();
            LoggingUtils.b(execute, loggerProvider, str3);
            if (execute.getStatusCode() != 503) {
                return execute;
            }
            throw GoogleAuthException.a(new HttpResponseException(execute), null);
        } catch (UnknownHostException e) {
            throw new IOException("ComputeEngineCredentials cannot find the metadata server. This is likely because code is not running on Google Compute Engine.", e);
        }
    }
}
