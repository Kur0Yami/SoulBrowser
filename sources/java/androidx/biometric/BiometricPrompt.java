package androidx.biometric;

import android.os.Build;
import android.security.identity.IdentityCredential;
import android.text.TextUtils;
import android.util.Log;
import androidx.biometric.BiometricFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public class BiometricPrompt {

    /* renamed from: a, reason: collision with root package name */
    public FragmentManager f390a;

    /* loaded from: classes.dex */
    public static class AuthenticationResult {

        /* renamed from: a, reason: collision with root package name */
        public final CryptoObject f391a;
        public final int b;

        public AuthenticationResult(CryptoObject cryptoObject, int i) {
            this.f391a = cryptoObject;
            this.b = i;
        }
    }

    /* loaded from: classes.dex */
    public static class PromptInfo {

        /* renamed from: a, reason: collision with root package name */
        public final CharSequence f394a;
        public final CharSequence b;

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public String f395a;
            public String b;

            public final PromptInfo a() {
                if (!TextUtils.isEmpty(this.f395a)) {
                    if (AuthenticatorUtils.b(0)) {
                        if (!TextUtils.isEmpty(this.b)) {
                            TextUtils.isEmpty(this.b);
                            return new PromptInfo(this.f395a, this.b);
                        }
                        throw new IllegalArgumentException("Negative text must be set and non-empty.");
                    }
                    throw new IllegalArgumentException("Authenticator combination is unsupported on API " + Build.VERSION.SDK_INT + ": " + String.valueOf(0));
                }
                throw new IllegalArgumentException("Title must be set and non-empty.");
            }
        }

        public PromptInfo(String str, String str2) {
            this.f394a = str;
            this.b = str2;
        }
    }

    /* loaded from: classes.dex */
    public static class ResetCallbackObserver implements LifecycleObserver {
        @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        public void resetCallback() {
            throw null;
        }
    }

    public final void a(PromptInfo promptInfo) {
        if (promptInfo != null) {
            FragmentManager fragmentManager = this.f390a;
            if (fragmentManager == null) {
                Log.e("BiometricPromptCompat", "Unable to start authentication. Client fragment manager was null.");
                return;
            }
            if (fragmentManager.N()) {
                Log.e("BiometricPromptCompat", "Unable to start authentication. Called after onSaveInstanceState().");
                return;
            }
            FragmentManager fragmentManager2 = this.f390a;
            BiometricFragment biometricFragment = (BiometricFragment) fragmentManager2.C("androidx.biometric.BiometricFragment");
            if (biometricFragment == null) {
                biometricFragment = new BiometricFragment();
                FragmentTransaction d = fragmentManager2.d();
                d.f(0, biometricFragment, "androidx.biometric.BiometricFragment", 1);
                d.d();
                fragmentManager2.y(true);
                fragmentManager2.D();
            }
            FragmentActivity activity = biometricFragment.getActivity();
            if (activity == null) {
                Log.e("BiometricFragment", "Not launching prompt. Client activity was null.");
                return;
            }
            BiometricViewModel biometricViewModel = biometricFragment.f;
            biometricViewModel.f = promptInfo;
            biometricViewModel.g = null;
            if (biometricFragment.h()) {
                biometricFragment.f.k = biometricFragment.getString(R.string.confirm_device_credential_password);
            } else {
                biometricFragment.f.k = null;
            }
            if (biometricFragment.h() && BiometricManager.c(activity).a() != 0) {
                biometricFragment.f.n = true;
                biometricFragment.j();
                return;
            } else if (biometricFragment.f.p) {
                biometricFragment.f371c.postDelayed(new BiometricFragment.ShowPromptForAuthenticationRunnable(biometricFragment), 600L);
                return;
            } else {
                biometricFragment.p();
                return;
            }
        }
        throw new IllegalArgumentException("PromptInfo cannot be null.");
    }

    /* loaded from: classes.dex */
    public static class CryptoObject {

        /* renamed from: a, reason: collision with root package name */
        public final Signature f392a;
        public final Cipher b;

        /* renamed from: c, reason: collision with root package name */
        public final Mac f393c;
        public final IdentityCredential d;

        public CryptoObject(Signature signature) {
            this.f392a = signature;
            this.b = null;
            this.f393c = null;
            this.d = null;
        }

        public CryptoObject(Cipher cipher) {
            this.f392a = null;
            this.b = cipher;
            this.f393c = null;
            this.d = null;
        }

        public CryptoObject(Mac mac) {
            this.f392a = null;
            this.b = null;
            this.f393c = mac;
            this.d = null;
        }

        public CryptoObject(IdentityCredential identityCredential) {
            this.f392a = null;
            this.b = null;
            this.f393c = null;
            this.d = identityCredential;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class AuthenticationCallback {
        public void a(int i, CharSequence charSequence) {
        }

        public void b() {
        }

        public void c() {
        }
    }
}
