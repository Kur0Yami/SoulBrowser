package com.google.auth.http;

import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import com.google.api.client.util.Preconditions;
import com.google.auth.Credentials;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class HttpCredentialsAdapter implements HttpRequestInitializer, HttpUnsuccessfulResponseHandler {
    public static final Logger b = Logger.getLogger(HttpCredentialsAdapter.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f12099c = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    /* renamed from: a, reason: collision with root package name */
    public final Credentials f12100a;

    public HttpCredentialsAdapter(Credentials credentials) {
        Preconditions.checkNotNull(credentials);
        this.f12100a = credentials;
    }

    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public final boolean handleResponse(HttpRequest httpRequest, HttpResponse httpResponse, boolean z) {
        boolean z2;
        boolean z3;
        List<String> authenticateAsList = httpResponse.getHeaders().getAuthenticateAsList();
        if (authenticateAsList != null) {
            for (String str : authenticateAsList) {
                if (str.startsWith("Bearer ")) {
                    z2 = f12099c.matcher(str).find();
                    z3 = true;
                    break;
                }
            }
        }
        z2 = false;
        z3 = false;
        if (!z3) {
            if (httpResponse.getStatusCode() == 401) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z2) {
            try {
                this.f12100a.b();
                initialize(httpRequest);
                return true;
            } catch (IOException e) {
                b.log(Level.SEVERE, "unable to refresh token", (Throwable) e);
            }
        }
        return false;
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public final void initialize(HttpRequest httpRequest) {
        URI uri;
        httpRequest.setUnsuccessfulResponseHandler(this);
        Credentials credentials = this.f12100a;
        credentials.getClass();
        HttpHeaders headers = httpRequest.getHeaders();
        if (httpRequest.getUrl() != null) {
            uri = httpRequest.getUrl().toURI();
        } else {
            uri = null;
        }
        Map a2 = credentials.a(uri);
        if (a2 != null) {
            for (Map.Entry entry : a2.entrySet()) {
                String str = (String) entry.getKey();
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((Collection) entry.getValue());
                headers.put(str, (Object) arrayList);
            }
        }
    }
}
