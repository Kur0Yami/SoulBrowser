package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;
import android.security.identity.IdentityCredential;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* loaded from: classes.dex */
class CryptoObjectUtils {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        @NonNull
        public static BiometricPrompt.CryptoObject a(@NonNull Signature signature) {
            return new BiometricPrompt.CryptoObject(signature);
        }

        @NonNull
        public static BiometricPrompt.CryptoObject b(@NonNull Cipher cipher) {
            return new BiometricPrompt.CryptoObject(cipher);
        }

        @NonNull
        public static BiometricPrompt.CryptoObject c(@NonNull Mac mac) {
            return new BiometricPrompt.CryptoObject(mac);
        }

        @Nullable
        public static Cipher d(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getCipher();
        }

        @Nullable
        public static Mac e(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getMac();
        }

        @Nullable
        public static Signature f(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getSignature();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        @NonNull
        public static BiometricPrompt.CryptoObject a(@NonNull IdentityCredential identityCredential) {
            return new BiometricPrompt.CryptoObject(identityCredential);
        }

        @Nullable
        public static IdentityCredential b(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getIdentityCredential();
        }
    }
}
