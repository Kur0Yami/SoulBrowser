package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.model.WorkSpec;

/* loaded from: classes.dex */
public class NetworkUnmeteredController extends ConstraintController<NetworkState> {
    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean b(WorkSpec workSpec) {
        NetworkType networkType = workSpec.j.f1828a;
        if (networkType != NetworkType.g) {
            if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.j) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean c(Object obj) {
        NetworkState networkState = (NetworkState) obj;
        if (networkState.f1904a && !networkState.f1905c) {
            return false;
        }
        return true;
    }
}
