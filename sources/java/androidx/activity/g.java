package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.profileinstaller.DeviceProfileWriter;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f50c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ int g;
    public final /* synthetic */ Object h;

    public /* synthetic */ g(int i, int i2, Object obj, Object obj2) {
        this.f50c = i2;
        this.f = obj;
        this.g = i;
        this.h = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f50c) {
            case 0:
                ComponentActivity$activityResultRegistry$1 this$0 = (ComponentActivity$activityResultRegistry$1) this.f;
                ActivityResultContract.SynchronousResult synchronousResult = (ActivityResultContract.SynchronousResult) this.h;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                this$0.a(this.g, synchronousResult.f67a);
                return;
            case 1:
                ComponentActivity$activityResultRegistry$1 this$02 = (ComponentActivity$activityResultRegistry$1) this.f;
                IntentSender.SendIntentException e = (IntentSender.SendIntentException) this.h;
                Intrinsics.checkNotNullParameter(this$02, "this$0");
                Intrinsics.checkNotNullParameter(e, "$e");
                this$02.b(this.g, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", e));
                return;
            default:
                DeviceProfileWriter deviceProfileWriter = (DeviceProfileWriter) this.f;
                deviceProfileWriter.b.b(this.g, this.h);
                return;
        }
    }
}
