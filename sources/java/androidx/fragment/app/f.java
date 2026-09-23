package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements SavedStateRegistry.SavedStateProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1155a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f(int i, Object obj) {
        this.f1155a = i;
        this.b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle a() {
        int i = this.f1155a;
        Object obj = this.b;
        switch (i) {
            case 0:
                FragmentActivity fragmentActivity = (FragmentActivity) obj;
                int i2 = FragmentActivity.D;
                do {
                } while (FragmentActivity.U(fragmentActivity.T()));
                fragmentActivity.z.f(Lifecycle.Event.ON_STOP);
                return new Bundle();
            default:
                return ((FragmentManager) obj).W();
        }
    }
}
