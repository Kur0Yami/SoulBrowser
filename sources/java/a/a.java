package a;

import android.app.job.JobParameters;
import android.graphics.Typeface;
import android.util.Log;
import androidx.core.content.res.ResourcesCompat;
import androidx.credentials.CreatePasswordResponse;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import androidx.lifecycle.DispatchQueue;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.f7c = i;
        this.f = obj;
        this.g = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f7c;
        CredentialManagerCallback credentialManagerCallback = null;
        Object obj = this.g;
        Object obj2 = this.f;
        switch (i) {
            case 0:
                Violation violation = (Violation) obj;
                FragmentStrictMode.Policy policy = FragmentStrictMode.f1161a;
                Intrinsics.checkNotNullParameter(violation, "$violation");
                Log.e("FragmentStrictMode", "Policy violation with PENALTY_DEATH in ".concat((String) obj2), violation);
                throw violation;
            case 1:
                ((ResourcesCompat.FontCallback) obj2).c((Typeface) obj);
                return;
            case 2:
                ((CredentialManagerCallback) obj2).a(((Ref.ObjectRef) obj).element);
                return;
            case 3:
                ((CredentialManagerCallback) obj2).a(new ClearCredentialUnknownException(((Exception) obj).getMessage()));
                return;
            case 4:
                CreateCredentialException createCredentialException = (CreateCredentialException) obj;
                CredentialManagerCallback credentialManagerCallback2 = ((CredentialProviderCreatePasswordController) obj2).f;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                } else {
                    credentialManagerCallback = credentialManagerCallback2;
                }
                credentialManagerCallback.a(createCredentialException);
                return;
            case 5:
                CreatePasswordResponse createPasswordResponse = (CreatePasswordResponse) obj;
                CredentialManagerCallback credentialManagerCallback3 = ((CredentialProviderCreatePasswordController) obj2).f;
                if (credentialManagerCallback3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                } else {
                    credentialManagerCallback = credentialManagerCallback3;
                }
                credentialManagerCallback.onResult(createPasswordResponse);
                return;
            case 6:
                CreatePublicKeyCredentialResponse createPublicKeyCredentialResponse = (CreatePublicKeyCredentialResponse) obj;
                CredentialManagerCallback credentialManagerCallback4 = ((CredentialProviderCreatePublicKeyCredentialController) obj2).f;
                if (credentialManagerCallback4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                } else {
                    credentialManagerCallback = credentialManagerCallback4;
                }
                credentialManagerCallback.onResult(createPublicKeyCredentialResponse);
                return;
            case 7:
                ((CredentialManagerCallback) obj2).a(obj);
                return;
            case 8:
                DispatchQueue this$0 = (DispatchQueue) obj2;
                Runnable runnable = (Runnable) obj;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                Intrinsics.checkNotNullParameter(runnable, "$runnable");
                this$0.getClass();
                throw null;
            default:
                int i2 = JobInfoSchedulerService.f2882c;
                ((JobInfoSchedulerService) obj2).jobFinished((JobParameters) obj, false);
                return;
        }
    }
}
