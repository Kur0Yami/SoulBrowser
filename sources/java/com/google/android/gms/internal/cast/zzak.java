package com.google.android.gms.internal.cast;

import android.util.Log;
import com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsCallback;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.internal.ListenerHolder;

/* loaded from: classes.dex */
final class zzak implements ListenerHolder.Notifier {
    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        ((DeviceSuggestionsCallback) obj).a();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
        Logger logger = zzav.f9623a;
        Log.w(logger.f3604a, logger.d("Failed to notify listener for onDeviceSuggestionReceived", new Object[0]));
    }
}
