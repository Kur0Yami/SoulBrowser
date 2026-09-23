package com.mycompany.app.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* loaded from: classes3.dex */
public class WidgetBookProviderDark extends WidgetBookProviderBody {
    @Override // android.appwidget.AppWidgetProvider
    public final void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        this.f20741a = true;
        super.onAppWidgetOptionsChanged(context, appWidgetManager, i, bundle);
    }

    @Override // com.mycompany.app.widget.WidgetBookProviderBody, android.appwidget.AppWidgetProvider
    public final void onDeleted(Context context, int[] iArr) {
        this.f20741a = true;
        super.onDeleted(context, iArr);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDisabled(Context context) {
        this.f20741a = true;
        super.onDisabled(context);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onEnabled(Context context) {
        this.f20741a = true;
        super.onEnabled(context);
    }

    @Override // com.mycompany.app.widget.WidgetBookProviderBody, android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f20741a = true;
        super.onReceive(context, intent);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onRestored(Context context, int[] iArr, int[] iArr2) {
        this.f20741a = true;
        super.onRestored(context, iArr, iArr2);
    }

    @Override // com.mycompany.app.widget.WidgetBookProviderBody, android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        this.f20741a = true;
        f(context, appWidgetManager, iArr);
    }
}
