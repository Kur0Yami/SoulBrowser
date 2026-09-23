package androidx.biometric;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.hardware.biometrics.BiometricPrompt;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.security.identity.IdentityCredential;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.biometric.AuthenticationCallbackProvider;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.BiometricViewModel;
import androidx.biometric.CancellationSignalProvider;
import androidx.biometric.CryptoObjectUtils;
import androidx.biometric.KeyguardUtils;
import androidx.biometric.PackageUtils;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.WeakReference;
import java.security.Signature;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.Mac;

@RestrictTo
/* loaded from: classes.dex */
public class BiometricFragment extends Fragment {

    /* renamed from: c, reason: collision with root package name */
    public final Handler f371c = new Handler(Looper.getMainLooper());
    public BiometricViewModel f;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @Nullable
        public static Intent a(@NonNull KeyguardManager keyguardManager, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
            return keyguardManager.createConfirmDeviceCredentialIntent(charSequence, charSequence2);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        public static void a(@NonNull android.hardware.biometrics.BiometricPrompt biometricPrompt, @NonNull BiometricPrompt.CryptoObject cryptoObject, @NonNull CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull android.hardware.biometrics.BiometricPrompt$AuthenticationCallback biometricPrompt$AuthenticationCallback) {
            biometricPrompt.authenticate(cryptoObject, cancellationSignal, executor, biometricPrompt$AuthenticationCallback);
        }

        public static void b(@NonNull android.hardware.biometrics.BiometricPrompt biometricPrompt, @NonNull CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull android.hardware.biometrics.BiometricPrompt$AuthenticationCallback biometricPrompt$AuthenticationCallback) {
            biometricPrompt.authenticate(cancellationSignal, executor, biometricPrompt$AuthenticationCallback);
        }

        @NonNull
        public static android.hardware.biometrics.BiometricPrompt c(@NonNull BiometricPrompt.Builder builder) {
            return builder.build();
        }

        @NonNull
        public static BiometricPrompt.Builder d(@NonNull Context context) {
            return new BiometricPrompt.Builder(context);
        }

        public static void e(@NonNull BiometricPrompt.Builder builder, @NonNull CharSequence charSequence, @NonNull Executor executor, @NonNull DialogInterface.OnClickListener onClickListener) {
            builder.setNegativeButton(charSequence, executor, onClickListener);
        }

        public static void f(@NonNull BiometricPrompt.Builder builder, @NonNull CharSequence charSequence) {
            builder.setTitle(charSequence);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static void a(@NonNull BiometricPrompt.Builder builder, boolean z) {
            builder.setConfirmationRequired(z);
        }

        public static void b(@NonNull BiometricPrompt.Builder builder, boolean z) {
            builder.setDeviceCredentialAllowed(z);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static void a(@NonNull BiometricPrompt.Builder builder, int i) {
            builder.setAllowedAuthenticators(i);
        }
    }

    /* loaded from: classes.dex */
    public static class PromptExecutor implements Executor {

        /* renamed from: c, reason: collision with root package name */
        public final Handler f383c = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f383c.post(runnable);
        }
    }

    /* loaded from: classes.dex */
    public static class ShowPromptForAuthenticationRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final WeakReference f384c;

        public ShowPromptForAuthenticationRunnable(BiometricFragment biometricFragment) {
            this.f384c = new WeakReference(biometricFragment);
        }

        @Override // java.lang.Runnable
        public final void run() {
            WeakReference weakReference = this.f384c;
            if (weakReference.get() != null) {
                ((BiometricFragment) weakReference.get()).p();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class StopDelayingPromptRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final WeakReference f385c;

        public StopDelayingPromptRunnable(BiometricViewModel biometricViewModel) {
            this.f385c = new WeakReference(biometricViewModel);
        }

        @Override // java.lang.Runnable
        public final void run() {
            WeakReference weakReference = this.f385c;
            if (weakReference.get() != null) {
                ((BiometricViewModel) weakReference.get()).p = false;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class StopIgnoringCancelRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final WeakReference f386c;

        public StopIgnoringCancelRunnable(BiometricViewModel biometricViewModel) {
            this.f386c = new WeakReference(biometricViewModel);
        }

        @Override // java.lang.Runnable
        public final void run() {
            WeakReference weakReference = this.f386c;
            if (weakReference.get() != null) {
                ((BiometricViewModel) weakReference.get()).q = false;
            }
        }
    }

    public final void dismiss() {
        this.f.m = false;
        g();
        if (!this.f.o && isAdded()) {
            FragmentTransaction d = getParentFragmentManager().d();
            d.g(this);
            d.d();
        }
        Context context = getContext();
        if (context != null) {
            String str = Build.MODEL;
            if (Build.VERSION.SDK_INT == 29) {
                int i = R.array.delay_showing_prompt_models;
                if (str != null) {
                    for (String str2 : context.getResources().getStringArray(i)) {
                        if (str.equals(str2)) {
                            BiometricViewModel biometricViewModel = this.f;
                            biometricViewModel.p = true;
                            this.f371c.postDelayed(new StopDelayingPromptRunnable(biometricViewModel), 600L);
                            return;
                        }
                    }
                }
            }
        }
    }

    public final void f(int i) {
        if (i == 3 || !this.f.q) {
            if (i()) {
                this.f.l = i;
                if (i == 1) {
                    l(10, ErrorUtils.a(getContext(), 10));
                }
            }
            BiometricViewModel biometricViewModel = this.f;
            if (biometricViewModel.i == null) {
                biometricViewModel.i = new CancellationSignalProvider();
            }
            CancellationSignalProvider cancellationSignalProvider = biometricViewModel.i;
            CancellationSignal cancellationSignal = cancellationSignalProvider.f399a;
            if (cancellationSignal != null) {
                try {
                    CancellationSignalProvider.Api16Impl.a(cancellationSignal);
                } catch (NullPointerException e) {
                    Log.e("CancelSignalProvider", "Got NPE while canceling biometric authentication.", e);
                }
                cancellationSignalProvider.f399a = null;
            }
            androidx.core.os.CancellationSignal cancellationSignal2 = cancellationSignalProvider.b;
            if (cancellationSignal2 != null) {
                try {
                    cancellationSignal2.a();
                } catch (NullPointerException e2) {
                    Log.e("CancelSignalProvider", "Got NPE while canceling fingerprint authentication.", e2);
                }
                cancellationSignalProvider.b = null;
            }
        }
    }

    public final void g() {
        this.f.m = false;
        if (isAdded()) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            FingerprintDialogFragment fingerprintDialogFragment = (FingerprintDialogFragment) parentFragmentManager.C("androidx.biometric.FingerprintDialogFragment");
            if (fingerprintDialogFragment != null) {
                if (fingerprintDialogFragment.isAdded()) {
                    fingerprintDialogFragment.dismissAllowingStateLoss();
                    return;
                }
                FragmentTransaction d = parentFragmentManager.d();
                d.g(fingerprintDialogFragment);
                d.d();
            }
        }
    }

    public final boolean h() {
        if (Build.VERSION.SDK_INT <= 28 && AuthenticatorUtils.a(this.f.c())) {
            return true;
        }
        return false;
    }

    public final boolean i() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            FragmentActivity activity = getActivity();
            if (activity != null && this.f.g != null) {
                String str = Build.MANUFACTURER;
                String str2 = Build.MODEL;
                if (i == 28) {
                    int i2 = R.array.crypto_fingerprint_fallback_vendors;
                    if (str != null) {
                        for (String str3 : activity.getResources().getStringArray(i2)) {
                            if (str.equalsIgnoreCase(str3)) {
                                break;
                            }
                        }
                    }
                    int i3 = R.array.crypto_fingerprint_fallback_prefixes;
                    String str4 = Build.MODEL;
                    if (str4 != null) {
                        for (String str5 : activity.getResources().getStringArray(i3)) {
                            if (!str4.startsWith(str5)) {
                            }
                        }
                    }
                }
            }
            if (Build.VERSION.SDK_INT != 28) {
                return false;
            }
            Context context = getContext();
            if (context == null || context.getPackageManager() == null || !PackageUtils.Api23Impl.a(context.getPackageManager())) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void j() {
        CharSequence charSequence;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Log.e("BiometricFragment", "Failed to check device credential. Client FragmentActivity not found.");
            return;
        }
        KeyguardManager a2 = KeyguardUtils.Api23Impl.a(activity);
        if (a2 == null) {
            k(12, getString(R.string.generic_error_no_keyguard));
            return;
        }
        BiometricViewModel biometricViewModel = this.f;
        BiometricPrompt.PromptInfo promptInfo = biometricViewModel.f;
        if (promptInfo != null) {
            charSequence = promptInfo.f394a;
        } else {
            charSequence = null;
        }
        biometricViewModel.getClass();
        this.f.getClass();
        Intent a3 = Api21Impl.a(a2, charSequence, null);
        if (a3 == null) {
            k(14, getString(R.string.generic_error_no_device_credential));
            return;
        }
        this.f.o = true;
        if (i()) {
            g();
        }
        a3.setFlags(134742016);
        startActivityForResult(a3, 1);
    }

    public final void k(int i, CharSequence charSequence) {
        l(i, charSequence);
        dismiss();
    }

    public final void l(final int i, final CharSequence charSequence) {
        BiometricViewModel biometricViewModel = this.f;
        if (biometricViewModel.o) {
            Log.v("BiometricFragment", "Error not sent to client. User is confirming their device credential.");
            return;
        }
        if (!biometricViewModel.n) {
            Log.w("BiometricFragment", "Error not sent to client. Client is not awaiting a result.");
            return;
        }
        biometricViewModel.n = false;
        Executor executor = biometricViewModel.d;
        if (executor == null) {
            executor = new BiometricViewModel.DefaultExecutor();
        }
        executor.execute(new Runnable() { // from class: androidx.biometric.BiometricFragment.10
            /* JADX WARN: Type inference failed for: r1v2, types: [androidx.biometric.BiometricPrompt$AuthenticationCallback, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                BiometricViewModel biometricViewModel2 = BiometricFragment.this.f;
                if (biometricViewModel2.e == null) {
                    biometricViewModel2.e = new Object();
                }
                biometricViewModel2.e.a(i, charSequence);
            }
        });
    }

    public final void m(BiometricPrompt.AuthenticationResult authenticationResult) {
        BiometricViewModel biometricViewModel = this.f;
        if (!biometricViewModel.n) {
            Log.w("BiometricFragment", "Success not sent to client. Client is not awaiting a result.");
        } else {
            biometricViewModel.n = false;
            Executor executor = biometricViewModel.d;
            if (executor == null) {
                executor = new BiometricViewModel.DefaultExecutor();
            }
            executor.execute(new Runnable(authenticationResult) { // from class: androidx.biometric.BiometricFragment.9
                /* JADX WARN: Type inference failed for: r1v1, types: [androidx.biometric.BiometricPrompt$AuthenticationCallback, java.lang.Object] */
                @Override // java.lang.Runnable
                public final void run() {
                    BiometricViewModel biometricViewModel2 = BiometricFragment.this.f;
                    if (biometricViewModel2.e == null) {
                        biometricViewModel2.e = new Object();
                    }
                    biometricViewModel2.e.c();
                }
            });
        }
        dismiss();
    }

    public final void o(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = getString(R.string.default_error_msg);
        }
        this.f.f(2);
        this.f.e(charSequence);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            this.f.o = false;
            if (i2 == -1) {
                m(new BiometricPrompt.AuthenticationResult(null, 1));
            } else {
                k(10, getString(R.string.generic_error_user_canceled));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() == null) {
            return;
        }
        BiometricViewModel biometricViewModel = (BiometricViewModel) new ViewModelProvider(getActivity()).a(BiometricViewModel.class);
        this.f = biometricViewModel;
        if (biometricViewModel.r == null) {
            biometricViewModel.r = new LiveData();
        }
        biometricViewModel.r.d(this, new Observer<BiometricPrompt.AuthenticationResult>() { // from class: androidx.biometric.BiometricFragment.1
            /* JADX WARN: Type inference failed for: r0v3, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
            @Override // androidx.lifecycle.Observer
            public final void a(Object obj) {
                BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                if (authenticationResult != null) {
                    BiometricFragment biometricFragment = BiometricFragment.this;
                    biometricFragment.m(authenticationResult);
                    BiometricViewModel biometricViewModel2 = biometricFragment.f;
                    if (biometricViewModel2.r == null) {
                        biometricViewModel2.r = new LiveData();
                    }
                    BiometricViewModel.h(biometricViewModel2.r, null);
                }
            }
        });
        BiometricViewModel biometricViewModel2 = this.f;
        if (biometricViewModel2.s == null) {
            biometricViewModel2.s = new LiveData();
        }
        biometricViewModel2.s.d(this, new Observer<BiometricErrorData>() { // from class: androidx.biometric.BiometricFragment.2
            /* JADX WARN: Code restructure failed: missing block: B:45:0x00a8, code lost:
            
                if (r10 == false) goto L54;
             */
            @Override // androidx.lifecycle.Observer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void a(java.lang.Object r10) {
                /*
                    Method dump skipped, instructions count: 256
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.biometric.BiometricFragment.AnonymousClass2.a(java.lang.Object):void");
            }
        });
        BiometricViewModel biometricViewModel3 = this.f;
        if (biometricViewModel3.t == null) {
            biometricViewModel3.t = new LiveData();
        }
        biometricViewModel3.t.d(this, new Observer<CharSequence>() { // from class: androidx.biometric.BiometricFragment.3
            @Override // androidx.lifecycle.Observer
            public final void a(Object obj) {
                CharSequence charSequence = (CharSequence) obj;
                if (charSequence != null) {
                    BiometricFragment biometricFragment = BiometricFragment.this;
                    if (biometricFragment.i()) {
                        biometricFragment.o(charSequence);
                    }
                    biometricFragment.f.d(null);
                }
            }
        });
        BiometricViewModel biometricViewModel4 = this.f;
        if (biometricViewModel4.u == null) {
            biometricViewModel4.u = new LiveData();
        }
        biometricViewModel4.u.d(this, new Observer<Boolean>() { // from class: androidx.biometric.BiometricFragment.4
            /* JADX WARN: Type inference failed for: r0v7, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
            @Override // androidx.lifecycle.Observer
            public final void a(Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    final BiometricFragment biometricFragment = BiometricFragment.this;
                    if (biometricFragment.i()) {
                        biometricFragment.o(biometricFragment.getString(R.string.fingerprint_not_recognized));
                    }
                    BiometricViewModel biometricViewModel5 = biometricFragment.f;
                    if (!biometricViewModel5.n) {
                        Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                    } else {
                        Executor executor = biometricViewModel5.d;
                        if (executor == null) {
                            executor = new BiometricViewModel.DefaultExecutor();
                        }
                        executor.execute(new Runnable() { // from class: androidx.biometric.BiometricFragment.11
                            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.biometric.BiometricPrompt$AuthenticationCallback, java.lang.Object] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                BiometricViewModel biometricViewModel6 = BiometricFragment.this.f;
                                if (biometricViewModel6.e == null) {
                                    biometricViewModel6.e = new Object();
                                }
                                biometricViewModel6.e.b();
                            }
                        });
                    }
                    BiometricViewModel biometricViewModel6 = biometricFragment.f;
                    if (biometricViewModel6.u == null) {
                        biometricViewModel6.u = new LiveData();
                    }
                    BiometricViewModel.h(biometricViewModel6.u, Boolean.FALSE);
                }
            }
        });
        BiometricViewModel biometricViewModel5 = this.f;
        if (biometricViewModel5.v == null) {
            biometricViewModel5.v = new LiveData();
        }
        biometricViewModel5.v.d(this, new Observer<Boolean>() { // from class: androidx.biometric.BiometricFragment.5
            @Override // androidx.lifecycle.Observer
            public final void a(Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    BiometricFragment biometricFragment = BiometricFragment.this;
                    if (biometricFragment.h()) {
                        biometricFragment.j();
                    } else {
                        BiometricViewModel biometricViewModel6 = biometricFragment.f;
                        CharSequence charSequence = biometricViewModel6.k;
                        if (charSequence == null) {
                            BiometricPrompt.PromptInfo promptInfo = biometricViewModel6.f;
                            if (promptInfo != null) {
                                charSequence = promptInfo.b;
                                if (charSequence == null) {
                                    charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                }
                            } else {
                                charSequence = null;
                            }
                        }
                        if (charSequence == null) {
                            charSequence = biometricFragment.getString(R.string.default_error_msg);
                        }
                        biometricFragment.k(13, charSequence);
                        biometricFragment.f(2);
                    }
                    biometricFragment.f.g(false);
                }
            }
        });
        BiometricViewModel biometricViewModel6 = this.f;
        if (biometricViewModel6.x == null) {
            biometricViewModel6.x = new LiveData();
        }
        biometricViewModel6.x.d(this, new Observer<Boolean>() { // from class: androidx.biometric.BiometricFragment.6
            /* JADX WARN: Type inference failed for: r0v3, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
            @Override // androidx.lifecycle.Observer
            public final void a(Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    BiometricFragment biometricFragment = BiometricFragment.this;
                    biometricFragment.f(1);
                    biometricFragment.dismiss();
                    BiometricViewModel biometricViewModel7 = biometricFragment.f;
                    if (biometricViewModel7.x == null) {
                        biometricViewModel7.x = new LiveData();
                    }
                    BiometricViewModel.h(biometricViewModel7.x, Boolean.FALSE);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        if (Build.VERSION.SDK_INT == 29 && AuthenticatorUtils.a(this.f.c())) {
            BiometricViewModel biometricViewModel = this.f;
            biometricViewModel.q = true;
            this.f371c.postDelayed(new StopIgnoringCancelRunnable(biometricViewModel), 250L);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        if (Build.VERSION.SDK_INT < 29 && !this.f.o) {
            FragmentActivity activity = getActivity();
            if (activity == null || !activity.isChangingConfigurations()) {
                f(0);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v35, types: [androidx.core.os.CancellationSignal, java.lang.Object] */
    public final void p() {
        CharSequence charSequence;
        IdentityCredential identityCredential;
        int i;
        if (!this.f.m) {
            if (getContext() == null) {
                Log.w("BiometricFragment", "Not showing biometric prompt. Context is null.");
                return;
            }
            BiometricViewModel biometricViewModel = this.f;
            biometricViewModel.m = true;
            biometricViewModel.n = true;
            CharSequence charSequence2 = null;
            r3 = null;
            r3 = null;
            r3 = null;
            FingerprintManagerCompat.CryptoObject cryptoObject = null;
            if (i()) {
                Context applicationContext = requireContext().getApplicationContext();
                FingerprintManagerCompat fingerprintManagerCompat = new FingerprintManagerCompat(applicationContext);
                FingerprintManager b = FingerprintManagerCompat.b(applicationContext);
                if (b != null && b.isHardwareDetected()) {
                    FingerprintManager b2 = FingerprintManagerCompat.b(applicationContext);
                    if (b2 != null && b2.hasEnrolledFingerprints()) {
                        i = 0;
                    } else {
                        i = 11;
                    }
                } else {
                    i = 12;
                }
                if (i != 0) {
                    k(i, ErrorUtils.a(applicationContext, i));
                    return;
                }
                if (isAdded()) {
                    this.f.w = true;
                    String str = Build.MODEL;
                    if (Build.VERSION.SDK_INT == 28) {
                        int i2 = R.array.hide_fingerprint_instantly_prefixes;
                        if (str != null) {
                            for (String str2 : applicationContext.getResources().getStringArray(i2)) {
                                if (str.startsWith(str2)) {
                                    break;
                                }
                            }
                        }
                    }
                    this.f371c.postDelayed(new Runnable() { // from class: androidx.biometric.BiometricFragment.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            BiometricFragment.this.f.w = false;
                        }
                    }, 500L);
                    new FingerprintDialogFragment().show(getParentFragmentManager(), "androidx.biometric.FingerprintDialogFragment");
                    BiometricViewModel biometricViewModel2 = this.f;
                    biometricViewModel2.l = 0;
                    BiometricPrompt.CryptoObject cryptoObject2 = biometricViewModel2.g;
                    if (cryptoObject2 != null) {
                        Cipher cipher = cryptoObject2.b;
                        if (cipher != null) {
                            cryptoObject = new FingerprintManagerCompat.CryptoObject(cipher);
                        } else {
                            Signature signature = cryptoObject2.f392a;
                            if (signature != null) {
                                cryptoObject = new FingerprintManagerCompat.CryptoObject(signature);
                            } else {
                                Mac mac = cryptoObject2.f393c;
                                if (mac != null) {
                                    cryptoObject = new FingerprintManagerCompat.CryptoObject(mac);
                                } else if (Build.VERSION.SDK_INT >= 30 && cryptoObject2.d != null) {
                                    Log.e("CryptoObjectUtils", "Identity credential is not supported by FingerprintManager.");
                                }
                            }
                        }
                    }
                    BiometricViewModel biometricViewModel3 = this.f;
                    if (biometricViewModel3.i == null) {
                        biometricViewModel3.i = new CancellationSignalProvider();
                    }
                    CancellationSignalProvider cancellationSignalProvider = biometricViewModel3.i;
                    if (cancellationSignalProvider.b == null) {
                        cancellationSignalProvider.b = new Object();
                    }
                    androidx.core.os.CancellationSignal cancellationSignal = cancellationSignalProvider.b;
                    BiometricViewModel biometricViewModel4 = this.f;
                    if (biometricViewModel4.h == null) {
                        biometricViewModel4.h = new AuthenticationCallbackProvider(new BiometricViewModel.CallbackListener(biometricViewModel4));
                    }
                    final AuthenticationCallbackProvider authenticationCallbackProvider = biometricViewModel4.h;
                    if (authenticationCallbackProvider.b == null) {
                        authenticationCallbackProvider.b = new FingerprintManagerCompat.AuthenticationCallback() { // from class: androidx.biometric.AuthenticationCallbackProvider.1
                            public AnonymousClass1() {
                            }

                            @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public final void a(int i3, CharSequence charSequence3) {
                                AuthenticationCallbackProvider.this.f367c.a(i3, charSequence3);
                            }

                            @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public final void b() {
                                AuthenticationCallbackProvider.this.f367c.b();
                            }

                            /* JADX WARN: Type inference failed for: r1v2, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
                            @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public final void c(CharSequence charSequence3) {
                                WeakReference weakReference = AuthenticationCallbackProvider.this.f367c.f396a;
                                if (weakReference.get() != null) {
                                    BiometricViewModel biometricViewModel5 = (BiometricViewModel) weakReference.get();
                                    if (biometricViewModel5.t == null) {
                                        biometricViewModel5.t = new LiveData();
                                    }
                                    BiometricViewModel.h(biometricViewModel5.t, charSequence3);
                                }
                            }

                            @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public final void d(FingerprintManagerCompat.AuthenticationResult authenticationResult) {
                                FingerprintManagerCompat.CryptoObject cryptoObject3 = authenticationResult.f698a;
                                BiometricPrompt.CryptoObject cryptoObject4 = null;
                                if (cryptoObject3 != null) {
                                    Cipher cipher2 = cryptoObject3.b;
                                    if (cipher2 != null) {
                                        cryptoObject4 = new BiometricPrompt.CryptoObject(cipher2);
                                    } else {
                                        Signature signature2 = cryptoObject3.f699a;
                                        if (signature2 != null) {
                                            cryptoObject4 = new BiometricPrompt.CryptoObject(signature2);
                                        } else {
                                            Mac mac2 = cryptoObject3.f700c;
                                            if (mac2 != null) {
                                                cryptoObject4 = new BiometricPrompt.CryptoObject(mac2);
                                            }
                                        }
                                    }
                                }
                                AuthenticationCallbackProvider.this.f367c.c(new BiometricPrompt.AuthenticationResult(cryptoObject4, 2));
                            }
                        };
                    }
                    try {
                        fingerprintManagerCompat.a(cryptoObject, cancellationSignal, authenticationCallbackProvider.b);
                        return;
                    } catch (NullPointerException e) {
                        Log.e("BiometricFragment", "Got NPE while authenticating with fingerprint.", e);
                        k(1, ErrorUtils.a(applicationContext, 1));
                        return;
                    }
                }
                return;
            }
            BiometricPrompt.Builder d = Api28Impl.d(requireContext().getApplicationContext());
            BiometricViewModel biometricViewModel5 = this.f;
            BiometricPrompt.PromptInfo promptInfo = biometricViewModel5.f;
            if (promptInfo != null) {
                charSequence = promptInfo.f394a;
            } else {
                charSequence = null;
            }
            biometricViewModel5.getClass();
            this.f.getClass();
            if (charSequence != null) {
                Api28Impl.f(d, charSequence);
            }
            BiometricViewModel biometricViewModel6 = this.f;
            String str3 = biometricViewModel6.k;
            String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (str3 != null) {
                charSequence2 = str3;
            } else {
                BiometricPrompt.PromptInfo promptInfo2 = biometricViewModel6.f;
                if (promptInfo2 != null && (charSequence2 = promptInfo2.b) == null) {
                    charSequence2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
            }
            if (!TextUtils.isEmpty(charSequence2)) {
                Executor executor = this.f.d;
                if (executor == null) {
                    executor = new BiometricViewModel.DefaultExecutor();
                }
                BiometricViewModel biometricViewModel7 = this.f;
                if (biometricViewModel7.j == null) {
                    biometricViewModel7.j = new BiometricViewModel.NegativeButtonListener(biometricViewModel7);
                }
                Api28Impl.e(d, charSequence2, executor, biometricViewModel7.j);
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 29) {
                BiometricPrompt.PromptInfo promptInfo3 = this.f.f;
                Api29Impl.a(d, true);
            }
            int c2 = this.f.c();
            if (i3 >= 30) {
                Api30Impl.a(d, c2);
            } else if (i3 >= 29) {
                Api29Impl.b(d, AuthenticatorUtils.a(c2));
            }
            android.hardware.biometrics.BiometricPrompt c3 = Api28Impl.c(d);
            Context context = getContext();
            BiometricPrompt.CryptoObject cryptoObject3 = this.f.g;
            BiometricPrompt.CryptoObject cryptoObject4 = null;
            if (cryptoObject3 != null) {
                Cipher cipher2 = cryptoObject3.b;
                if (cipher2 != null) {
                    cryptoObject4 = CryptoObjectUtils.Api28Impl.b(cipher2);
                } else {
                    Signature signature2 = cryptoObject3.f392a;
                    if (signature2 != null) {
                        cryptoObject4 = CryptoObjectUtils.Api28Impl.a(signature2);
                    } else {
                        Mac mac2 = cryptoObject3.f393c;
                        if (mac2 != null) {
                            cryptoObject4 = CryptoObjectUtils.Api28Impl.c(mac2);
                        } else if (Build.VERSION.SDK_INT >= 30 && (identityCredential = cryptoObject3.d) != null) {
                            cryptoObject4 = CryptoObjectUtils.Api30Impl.a(identityCredential);
                        }
                    }
                }
            }
            BiometricViewModel biometricViewModel8 = this.f;
            if (biometricViewModel8.i == null) {
                biometricViewModel8.i = new CancellationSignalProvider();
            }
            CancellationSignalProvider cancellationSignalProvider2 = biometricViewModel8.i;
            if (cancellationSignalProvider2.f399a == null) {
                cancellationSignalProvider2.f399a = CancellationSignalProvider.Api16Impl.b();
            }
            CancellationSignal cancellationSignal2 = cancellationSignalProvider2.f399a;
            PromptExecutor promptExecutor = new PromptExecutor();
            BiometricViewModel biometricViewModel9 = this.f;
            if (biometricViewModel9.h == null) {
                biometricViewModel9.h = new AuthenticationCallbackProvider(new BiometricViewModel.CallbackListener(biometricViewModel9));
            }
            AuthenticationCallbackProvider authenticationCallbackProvider2 = biometricViewModel9.h;
            if (authenticationCallbackProvider2.f366a == null) {
                authenticationCallbackProvider2.f366a = AuthenticationCallbackProvider.Api28Impl.a(authenticationCallbackProvider2.f367c);
            }
            android.hardware.biometrics.BiometricPrompt$AuthenticationCallback biometricPrompt$AuthenticationCallback = authenticationCallbackProvider2.f366a;
            try {
                if (cryptoObject4 == null) {
                    Api28Impl.b(c3, cancellationSignal2, promptExecutor, biometricPrompt$AuthenticationCallback);
                } else {
                    Api28Impl.a(c3, cryptoObject4, cancellationSignal2, promptExecutor, biometricPrompt$AuthenticationCallback);
                }
            } catch (NullPointerException e2) {
                Log.e("BiometricFragment", "Got NPE while authenticating with biometric prompt.", e2);
                if (context != null) {
                    str4 = context.getString(R.string.default_error_msg);
                }
                k(1, str4);
            }
        }
    }
}
