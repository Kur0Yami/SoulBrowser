package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

@RestrictTo
@Deprecated
/* loaded from: classes.dex */
public class FingerprintManagerCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Context f696a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    /* loaded from: classes.dex */
    public static final class AuthenticationResult {

        /* renamed from: a, reason: collision with root package name */
        public final CryptoObject f698a;

        public AuthenticationResult(CryptoObject cryptoObject) {
            this.f698a = cryptoObject;
        }
    }

    public FingerprintManagerCompat(Context context) {
        this.f696a = context;
    }

    public static FingerprintManager b(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i == 23) {
            return (FingerprintManager) context.getSystemService(FingerprintManager.class);
        }
        if (i > 23 && context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
            return (FingerprintManager) context.getSystemService(FingerprintManager.class);
        }
        return null;
    }

    public final void a(CryptoObject cryptoObject, CancellationSignal cancellationSignal, final AuthenticationCallback authenticationCallback) {
        android.os.CancellationSignal cancellationSignal2;
        FingerprintManager.CryptoObject cryptoObject2 = null;
        if (cancellationSignal != null) {
            cancellationSignal2 = (android.os.CancellationSignal) cancellationSignal.b();
        } else {
            cancellationSignal2 = null;
        }
        FingerprintManager b = b(this.f696a);
        if (b != null) {
            if (cryptoObject != null) {
                Mac mac = cryptoObject.f700c;
                Signature signature = cryptoObject.f699a;
                Cipher cipher = cryptoObject.b;
                if (cipher != null) {
                    cryptoObject2 = new FingerprintManager.CryptoObject(cipher);
                } else if (signature != null) {
                    cryptoObject2 = new FingerprintManager.CryptoObject(signature);
                } else if (mac != null) {
                    cryptoObject2 = new FingerprintManager.CryptoObject(mac);
                }
            }
            b.authenticate(cryptoObject2, cancellationSignal2, 0, new FingerprintManager.AuthenticationCallback() { // from class: androidx.core.hardware.fingerprint.FingerprintManagerCompat.1
                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public final void onAuthenticationError(int i, CharSequence charSequence) {
                    AuthenticationCallback.this.a(i, charSequence);
                }

                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public final void onAuthenticationFailed() {
                    AuthenticationCallback.this.b();
                }

                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public final void onAuthenticationHelp(int i, CharSequence charSequence) {
                    AuthenticationCallback.this.c(charSequence);
                }

                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public final void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
                    CryptoObject cryptoObject3;
                    FingerprintManager.CryptoObject cryptoObject4 = authenticationResult.getCryptoObject();
                    if (cryptoObject4 != null) {
                        if (cryptoObject4.getCipher() != null) {
                            cryptoObject3 = new CryptoObject(cryptoObject4.getCipher());
                        } else if (cryptoObject4.getSignature() != null) {
                            cryptoObject3 = new CryptoObject(cryptoObject4.getSignature());
                        } else if (cryptoObject4.getMac() != null) {
                            cryptoObject3 = new CryptoObject(cryptoObject4.getMac());
                        }
                        AuthenticationCallback.this.d(new AuthenticationResult(cryptoObject3));
                    }
                    cryptoObject3 = null;
                    AuthenticationCallback.this.d(new AuthenticationResult(cryptoObject3));
                }
            }, null);
        }
    }

    /* loaded from: classes.dex */
    public static class CryptoObject {

        /* renamed from: a, reason: collision with root package name */
        public final Signature f699a;
        public final Cipher b;

        /* renamed from: c, reason: collision with root package name */
        public final Mac f700c;

        public CryptoObject(Signature signature) {
            this.f699a = signature;
            this.b = null;
            this.f700c = null;
        }

        public CryptoObject(Cipher cipher) {
            this.b = cipher;
            this.f699a = null;
            this.f700c = null;
        }

        public CryptoObject(Mac mac) {
            this.f700c = mac;
            this.b = null;
            this.f699a = null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class AuthenticationCallback {
        public void a(int i, CharSequence charSequence) {
        }

        public void b() {
        }

        public void d(AuthenticationResult authenticationResult) {
        }

        public void c(CharSequence charSequence) {
        }
    }
}
