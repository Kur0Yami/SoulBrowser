package androidx.credentials.playservices.controllers.CreatePassword;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.carousel.CarouselLayoutManager;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f896c;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(int i, Object obj) {
        this.f896c = i;
        this.f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f896c;
        Object obj = this.f;
        switch (i) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = ((CredentialProviderCreatePasswordController) obj).f;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback = null;
                }
                credentialManagerCallback.a(new CreateCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
                return;
            case 1:
                ProcessLifecycleOwner this$0 = (ProcessLifecycleOwner) obj;
                LifecycleRegistry lifecycleRegistry = this$0.j;
                ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.m;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                if (this$0.f == 0) {
                    this$0.g = true;
                    lifecycleRegistry.f(Lifecycle.Event.ON_PAUSE);
                }
                if (this$0.f1209c == 0 && this$0.g) {
                    lifecycleRegistry.f(Lifecycle.Event.ON_STOP);
                    this$0.h = true;
                    return;
                }
                return;
            case 2:
                WorkInitializer workInitializer = (WorkInitializer) obj;
                workInitializer.d.b(new c(3, workInitializer));
                return;
            case 3:
                MaterialButton.a((MaterialButton) obj);
                return;
            default:
                ((CarouselLayoutManager) obj).f1();
                return;
        }
    }
}
