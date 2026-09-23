package androidx.biometric;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.biometric.AuthenticationCallbackProvider;
import androidx.biometric.BiometricPrompt;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import kotlin.KotlinVersion;

@RestrictTo
/* loaded from: classes.dex */
public class BiometricViewModel extends ViewModel {
    public MutableLiveData A;
    public Executor d;
    public BiometricPrompt.AuthenticationCallback e;
    public BiometricPrompt.PromptInfo f;
    public BiometricPrompt.CryptoObject g;
    public AuthenticationCallbackProvider h;
    public CancellationSignalProvider i;
    public DialogInterface.OnClickListener j;
    public String k;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public MutableLiveData r;
    public MutableLiveData s;
    public MutableLiveData t;
    public MutableLiveData u;
    public MutableLiveData v;
    public MutableLiveData x;
    public MutableLiveData z;
    public int l = 0;
    public boolean w = true;
    public int y = 0;

    /* renamed from: androidx.biometric.BiometricViewModel$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends BiometricPrompt.AuthenticationCallback {
    }

    /* loaded from: classes.dex */
    public static final class CallbackListener extends AuthenticationCallbackProvider.Listener {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f396a;

        public CallbackListener(BiometricViewModel biometricViewModel) {
            this.f396a = new WeakReference(biometricViewModel);
        }

        @Override // androidx.biometric.AuthenticationCallbackProvider.Listener
        public final void a(int i, CharSequence charSequence) {
            WeakReference weakReference = this.f396a;
            if (weakReference.get() != null && !((BiometricViewModel) weakReference.get()).o && ((BiometricViewModel) weakReference.get()).n) {
                ((BiometricViewModel) weakReference.get()).d(new BiometricErrorData(i, charSequence));
            }
        }

        /* JADX WARN: Type inference failed for: r1v6, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
        @Override // androidx.biometric.AuthenticationCallbackProvider.Listener
        public final void b() {
            WeakReference weakReference = this.f396a;
            if (weakReference.get() != null && ((BiometricViewModel) weakReference.get()).n) {
                BiometricViewModel biometricViewModel = (BiometricViewModel) weakReference.get();
                if (biometricViewModel.u == null) {
                    biometricViewModel.u = new LiveData();
                }
                BiometricViewModel.h(biometricViewModel.u, Boolean.TRUE);
            }
        }

        /* JADX WARN: Type inference failed for: r1v6, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
        @Override // androidx.biometric.AuthenticationCallbackProvider.Listener
        public final void c(BiometricPrompt.AuthenticationResult authenticationResult) {
            WeakReference weakReference = this.f396a;
            if (weakReference.get() != null && ((BiometricViewModel) weakReference.get()).n) {
                int i = -1;
                if (authenticationResult.b == -1) {
                    BiometricPrompt.CryptoObject cryptoObject = authenticationResult.f391a;
                    int c2 = ((BiometricViewModel) weakReference.get()).c();
                    if ((c2 & 32767) != 0 && !AuthenticatorUtils.a(c2)) {
                        i = 2;
                    }
                    authenticationResult = new BiometricPrompt.AuthenticationResult(cryptoObject, i);
                }
                BiometricViewModel biometricViewModel = (BiometricViewModel) weakReference.get();
                if (biometricViewModel.r == null) {
                    biometricViewModel.r = new LiveData();
                }
                BiometricViewModel.h(biometricViewModel.r, authenticationResult);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class DefaultExecutor implements Executor {

        /* renamed from: c, reason: collision with root package name */
        public final Handler f397c = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f397c.post(runnable);
        }
    }

    /* loaded from: classes.dex */
    public static class NegativeButtonListener implements DialogInterface.OnClickListener {

        /* renamed from: c, reason: collision with root package name */
        public final WeakReference f398c;

        public NegativeButtonListener(BiometricViewModel biometricViewModel) {
            this.f398c = new WeakReference(biometricViewModel);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            WeakReference weakReference = this.f398c;
            if (weakReference.get() != null) {
                ((BiometricViewModel) weakReference.get()).g(true);
            }
        }
    }

    public static void h(MutableLiveData mutableLiveData, Object obj) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            mutableLiveData.i(obj);
        } else {
            mutableLiveData.j(obj);
        }
    }

    public final int c() {
        if (this.f != null) {
            if (this.g != null) {
                return 15;
            }
            return KotlinVersion.MAX_COMPONENT_VALUE;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    public final void d(BiometricErrorData biometricErrorData) {
        if (this.s == null) {
            this.s = new LiveData();
        }
        h(this.s, biometricErrorData);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    public final void e(CharSequence charSequence) {
        if (this.A == null) {
            this.A = new LiveData();
        }
        h(this.A, charSequence);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    public final void f(int i) {
        if (this.z == null) {
            this.z = new LiveData();
        }
        h(this.z, Integer.valueOf(i));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    public final void g(boolean z) {
        if (this.v == null) {
            this.v = new LiveData();
        }
        h(this.v, Boolean.valueOf(z));
    }
}
