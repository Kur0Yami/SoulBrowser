package androidx.credentials.playservices;

import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements OnFailureListener, SynchronizationGuard.CriticalSection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f889c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3) {
        this.f889c = obj;
        this.f = obj2;
        this.g = obj3;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void c(Exception exc) {
        CredentialProviderPlayServicesImpl.onClearCredential$lambda$1((CancellationSignal) this.f889c, (Executor) this.f, (CredentialManagerCallback) this.g, exc);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        DefaultScheduler defaultScheduler = (DefaultScheduler) this.f889c;
        TransportContext transportContext = (TransportContext) this.f;
        defaultScheduler.d.o0(transportContext, (EventInternal) this.g);
        defaultScheduler.f2868a.a(transportContext, 1);
        return null;
    }
}
