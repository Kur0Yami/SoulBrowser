package org.jsoup.helper;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.net.URL;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface RequestAuthenticator {

    /* loaded from: classes4.dex */
    public static class Context {

        /* renamed from: a, reason: collision with root package name */
        public final URL f22538a;
        public final Authenticator.RequestorType b;

        /* renamed from: c, reason: collision with root package name */
        public final String f22539c;

        public Context(URL url, Authenticator.RequestorType requestorType, String str) {
            this.f22538a = url;
            this.b = requestorType;
            this.f22539c = str;
        }

        public PasswordAuthentication credentials(String str, String str2) {
            return new PasswordAuthentication(str, str2.toCharArray());
        }

        public boolean isProxy() {
            if (this.b == Authenticator.RequestorType.PROXY) {
                return true;
            }
            return false;
        }

        public boolean isServer() {
            if (this.b == Authenticator.RequestorType.SERVER) {
                return true;
            }
            return false;
        }

        public String realm() {
            return this.f22539c;
        }

        public Authenticator.RequestorType type() {
            return this.b;
        }

        public URL url() {
            return this.f22538a;
        }
    }

    PasswordAuthentication authenticate(Context context);
}
