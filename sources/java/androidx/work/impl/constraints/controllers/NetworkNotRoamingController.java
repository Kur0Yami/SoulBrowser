package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.model.WorkSpec;

/* loaded from: classes.dex */
public class NetworkNotRoamingController extends ConstraintController<NetworkState> {
    public static final String e = Logger.e("NetworkNotRoamingCtrlr");

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean b(WorkSpec workSpec) {
        if (workSpec.j.f1828a == NetworkType.h) {
            return true;
        }
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean c(Object obj) {
        NetworkState networkState = (NetworkState) obj;
        if (Build.VERSION.SDK_INT < 24) {
            Logger.c().a(e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
            return !networkState.f1904a;
        }
        if (!networkState.f1904a || !networkState.d) {
            return true;
        }
        return false;
    }
}
