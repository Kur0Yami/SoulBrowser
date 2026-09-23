package androidx.transition;

import androidx.core.os.CancellationSignal;
import androidx.fragment.app.j;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements CancellationSignal.OnCancelListener, SynchronizationGuard.CriticalSection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1728c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.f1728c = i;
        this.f = obj;
        this.g = obj2;
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        switch (this.f1728c) {
            case 1:
                ((Uploader) this.f).f2886c.q((Iterable) this.g);
                return null;
            default:
                Uploader uploader = (Uploader) this.f;
                Iterator it = ((HashMap) this.g).entrySet().iterator();
                while (it.hasNext()) {
                    uploader.i.e(((Integer) r2.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
                }
                return null;
        }
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        Transition transition = (Transition) this.f;
        j jVar = (j) this.g;
        transition.d();
        jVar.run();
    }
}
