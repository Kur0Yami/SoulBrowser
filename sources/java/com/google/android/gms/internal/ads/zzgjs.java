package com.google.android.gms.internal.ads;

import j$.util.Base64;
import j$.util.Optional;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzgjs {

    /* renamed from: a, reason: collision with root package name */
    public Optional f8034a;
    public Optional b;

    public final boolean a(zzbbo zzbboVar) {
        byte[] E = zzbboVar.D().E().E().E();
        byte[] E2 = zzbboVar.D().G().E();
        try {
            try {
                if (this.f8034a == null && this.b == null) {
                    try {
                        zzhtr.a();
                        zzhai a2 = zzhas.a(new String(Base64.getDecoder().decode("eyJwcmltYXJ5S2V5SWQiOjMzMTUxOTk4MTksImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQVNoRGZwOUM5QjcrMU1nMmJQbHJ5WExPOHVScDd6YWZJMldSYURmR1ZqVmlJaEFJNFZzTmVrcCs0bVY0d2toZlhVb3pQZWs5TjgxcUdIK2plNnhjOFpoQkhQIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMzE1MTk5ODE5LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0=")));
                        zzhkd zzhkdVar = zzhkd.f8610a;
                        this.f8034a = Optional.of((zzhaq) a2.f(zzhkdVar, zzhaq.class));
                        this.b = Optional.of((zzhaq) zzhas.a(new String(Base64.getDecoder().decode("eyJwcmltYXJ5S2V5SWQiOjMwODI3ODA4ODgsImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQkEyWW5HaWFpc3pEcGtJcWpjalorUTJ2alFUUldQZjhFcTlkZVlhNFpKa3lJaEFCQWFESTd6QWJkQXVpQmlnOWdHSkJ1VTUzSGg5Z0RCa0t2amswS2tabDhjIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMDgyNzgwODg4LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="))).f(zzhkdVar, zzhaq.class));
                    } catch (Exception e) {
                        throw new GeneralSecurityException("Failed to verify program", e);
                    }
                }
                this.f8034a.isPresent();
                ((zzhaq) this.f8034a.get()).a(E, E2);
                return true;
            } catch (GeneralSecurityException unused) {
                return false;
            }
        } catch (GeneralSecurityException unused2) {
            this.b.isPresent();
            ((zzhaq) this.b.get()).a(E, E2);
            return true;
        }
    }
}
