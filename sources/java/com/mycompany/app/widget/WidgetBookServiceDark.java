package com.mycompany.app.widget;

import android.content.Intent;
import android.os.IBinder;
import android.widget.RemoteViewsService;

/* loaded from: classes3.dex */
public class WidgetBookServiceDark extends WidgetBookServiceBody {
    @Override // android.widget.RemoteViewsService, android.app.Service
    public final IBinder onBind(Intent intent) {
        this.f20748c = true;
        return super.onBind(intent);
    }

    @Override // com.mycompany.app.widget.WidgetBookServiceBody, android.widget.RemoteViewsService
    public final RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        this.f20748c = true;
        return super.onGetViewFactory(intent);
    }
}
