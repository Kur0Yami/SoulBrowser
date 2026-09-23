package org.jsoup.helper;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import org.jsoup.helper.RequestAuthenticator;

/* loaded from: classes4.dex */
class AuthenticationHandler extends Authenticator {

    /* renamed from: c, reason: collision with root package name */
    public static final AuthShim f22524c;

    /* renamed from: a, reason: collision with root package name */
    public RequestAuthenticator f22525a;
    public int b;

    /* loaded from: classes4.dex */
    public interface AuthShim {
        void a(RequestAuthenticator requestAuthenticator);

        AuthenticationHandler get();

        void remove();
    }

    /* loaded from: classes4.dex */
    public static class GlobalHandler implements AuthShim {

        /* renamed from: a, reason: collision with root package name */
        public static final ThreadLocal f22526a = new ThreadLocal();

        /* JADX WARN: Type inference failed for: r0v1, types: [java.net.Authenticator, org.jsoup.helper.AuthenticationHandler] */
        static {
            ?? authenticator = new Authenticator();
            authenticator.b = 0;
            Authenticator.setDefault(authenticator);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.net.Authenticator, org.jsoup.helper.AuthenticationHandler, java.lang.Object] */
        @Override // org.jsoup.helper.AuthenticationHandler.AuthShim
        public final void a(RequestAuthenticator requestAuthenticator) {
            ?? authenticator = new Authenticator();
            authenticator.b = 0;
            authenticator.f22525a = requestAuthenticator;
            f22526a.set(authenticator);
        }

        @Override // org.jsoup.helper.AuthenticationHandler.AuthShim
        public final AuthenticationHandler get() {
            return (AuthenticationHandler) f22526a.get();
        }

        @Override // org.jsoup.helper.AuthenticationHandler.AuthShim
        public final void remove() {
            f22526a.remove();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, org.jsoup.helper.AuthenticationHandler$AuthShim] */
    static {
        try {
            f22524c = (AuthShim) Class.forName("org.jsoup.helper.RequestAuthHandler").getConstructor(null).newInstance(null);
        } catch (ClassNotFoundException unused) {
            f22524c = new Object();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.net.Authenticator
    public final PasswordAuthentication getPasswordAuthentication() {
        AuthenticationHandler authenticationHandler = f22524c.get();
        if (authenticationHandler != null) {
            RequestAuthenticator requestAuthenticator = authenticationHandler.f22525a;
            int i = authenticationHandler.b + 1;
            authenticationHandler.b = i;
            if (i > 3 || requestAuthenticator == null) {
                return null;
            }
            return requestAuthenticator.authenticate(new RequestAuthenticator.Context(getRequestingURL(), getRequestorType(), getRequestingPrompt()));
        }
        return null;
    }
}
