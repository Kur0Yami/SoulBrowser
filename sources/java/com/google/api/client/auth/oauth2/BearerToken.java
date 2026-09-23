package com.google.api.client.auth.oauth2;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.util.Data;
import com.google.api.client.util.Preconditions;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class BearerToken {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f12070a = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    /* loaded from: classes3.dex */
    public static final class AuthorizationHeaderAccessMethod implements Credential.AccessMethod {
        @Override // com.google.api.client.auth.oauth2.Credential.AccessMethod
        public final void a(HttpRequest httpRequest, String str) {
            httpRequest.getHeaders().setAuthorization("Bearer " + str);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.AccessMethod
        public final String b(HttpRequest httpRequest) {
            List<String> authorizationAsList = httpRequest.getHeaders().getAuthorizationAsList();
            if (authorizationAsList != null) {
                for (String str : authorizationAsList) {
                    if (str.startsWith("Bearer ")) {
                        return str.substring(7);
                    }
                }
                return null;
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FormEncodedBodyAccessMethod implements Credential.AccessMethod {
        @Override // com.google.api.client.auth.oauth2.Credential.AccessMethod
        public final void a(HttpRequest httpRequest, String str) {
            Preconditions.checkArgument(!HttpMethods.GET.equals(httpRequest.getRequestMethod()), "HTTP GET method is not supported");
            Data.mapOf(UrlEncodedContent.getContent(httpRequest).getData()).put("access_token", str);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.AccessMethod
        public final String b(HttpRequest httpRequest) {
            Object obj = Data.mapOf(UrlEncodedContent.getContent(httpRequest).getData()).get("access_token");
            if (obj == null) {
                return null;
            }
            return obj.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class QueryParameterAccessMethod implements Credential.AccessMethod {
        @Override // com.google.api.client.auth.oauth2.Credential.AccessMethod
        public final void a(HttpRequest httpRequest, String str) {
            httpRequest.getUrl().set("access_token", (Object) str);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.AccessMethod
        public final String b(HttpRequest httpRequest) {
            Object obj = httpRequest.getUrl().get("access_token");
            if (obj == null) {
                return null;
            }
            return obj.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.api.client.auth.oauth2.Credential$AccessMethod] */
    public static Credential.AccessMethod a() {
        return new Object();
    }
}
