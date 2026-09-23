package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.model.WorkSpec;

/* loaded from: classes.dex */
public class NetworkConnectedController extends ConstraintController<NetworkState> {
    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean b(WorkSpec workSpec) {
        if (workSpec.j.f1828a == NetworkType.f) {
            return true;
        }
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean c(Object obj) {
        NetworkState networkState = (NetworkState) obj;
        if (Build.VERSION.SDK_INT >= 26) {
            if (!networkState.f1904a || !networkState.b) {
                return true;
            }
            return false;
        }
        return !networkState.f1904a;
    }
}
