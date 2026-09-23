package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;
import android.os.Build;
import android.security.identity.IdentityCredential;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.BiometricViewModel;
import androidx.biometric.CryptoObjectUtils;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* loaded from: classes.dex */
class AuthenticationCallbackProvider {

    /* renamed from: a, reason: collision with root package name */
    public android.hardware.biometrics.BiometricPrompt$AuthenticationCallback f366a;
    public FingerprintManagerCompat.AuthenticationCallback b;

    /* renamed from: c, reason: collision with root package name */
    public final BiometricViewModel.CallbackListener f367c;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        @NonNull
        public static android.hardware.biometrics.BiometricPrompt$AuthenticationCallback a(@NonNull final Listener listener) {
            return new android.hardware.biometrics.BiometricPrompt$AuthenticationCallback() { // from class: androidx.biometric.AuthenticationCallbackProvider.Api28Impl.1
                public void onAuthenticationError(int i, CharSequence charSequence) {
                    Listener.this.a(i, charSequence);
                }

                public void onAuthenticationFailed() {
                    Listener.this.b();
                }

                public void onAuthenticationHelp(int i, CharSequence charSequence) {
                }

                public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                    BiometricPrompt.CryptoObject cryptoObject;
                    IdentityCredential b;
                    BiometricPrompt.CryptoObject cryptoObject2 = null;
                    if (authenticationResult != null && (cryptoObject = authenticationResult.getCryptoObject()) != null) {
                        Cipher d = CryptoObjectUtils.Api28Impl.d(cryptoObject);
                        if (d != null) {
                            cryptoObject2 = new BiometricPrompt.CryptoObject(d);
                        } else {
                            Signature f = CryptoObjectUtils.Api28Impl.f(cryptoObject);
                            if (f != null) {
                                cryptoObject2 = new BiometricPrompt.CryptoObject(f);
                            } else {
                                Mac e = CryptoObjectUtils.Api28Impl.e(cryptoObject);
                                if (e != null) {
                                    cryptoObject2 = new BiometricPrompt.CryptoObject(e);
                                } else if (Build.VERSION.SDK_INT >= 30 && (b = CryptoObjectUtils.Api30Impl.b(cryptoObject)) != null) {
                                    cryptoObject2 = new BiometricPrompt.CryptoObject(b);
                                }
                            }
                        }
                    }
                    int i = Build.VERSION.SDK_INT;
                    int i2 = -1;
                    if (i >= 30) {
                        if (authenticationResult != null) {
                            i2 = Api30Impl.a(authenticationResult);
                        }
                    } else if (i != 29) {
                        i2 = 2;
                    }
                    Listener.this.c(new BiometricPrompt.AuthenticationResult(cryptoObject2, i2));
                }
            };
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static int a(@NonNull BiometricPrompt.AuthenticationResult authenticationResult) {
            return authenticationResult.getAuthenticationType();
        }
    }

    /* loaded from: classes.dex */
    public static class Listener {
        public void a(int i, CharSequence charSequence) {
        }

        public void b() {
        }

        public void c(BiometricPrompt.AuthenticationResult authenticationResult) {
        }
    }

    public AuthenticationCallbackProvider(BiometricViewModel.CallbackListener callbackListener) {
        this.f367c = callbackListener;
    }
}
