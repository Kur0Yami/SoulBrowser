package com.mycompany.app.widget;

import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import com.mycompany.app.main.MainItem;
import java.util.List;

/* loaded from: classes3.dex */
public class WidgetBookServiceBody extends RemoteViewsService {

    /* renamed from: c, reason: collision with root package name */
    public boolean f20748c;

    /* loaded from: classes3.dex */
    public class RemoteFactory implements RemoteViewsService.RemoteViewsFactory {

        /* renamed from: a, reason: collision with root package name */
        public Context f20749a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public List f20750c;

        public RemoteFactory(Context context, Intent intent) {
            this.f20749a = context;
            this.b = intent.getIntExtra("appWidgetId", 0);
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final int getCount() {
            List list = this.f20750c;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final RemoteViews getLoadingView() {
            return null;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final RemoteViews getViewAt(int i) {
            MainItem.ChildItem childItem = null;
            if (this.f20749a == null) {
                return null;
            }
            List list = this.f20750c;
            if (list != null && i >= 0 && i < list.size()) {
                childItem = (MainItem.ChildItem) this.f20750c.get(i);
            }
            return WidgetBookProviderBody.c(this.f20749a, childItem, WidgetBookServiceBody.this.f20748c);
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onCreate() {
            int i;
            WidgetBookData b = WidgetBookData.b();
            SparseArray sparseArray = b.b;
            List list = null;
            if (sparseArray != null && sparseArray.size() != 0 && (i = this.b) != 0) {
                try {
                    list = (List) b.b.get(i);
                } catch (Exception unused) {
                }
            }
            this.f20750c = list;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDataSetChanged() {
            int i;
            WidgetBookData b = WidgetBookData.b();
            SparseArray sparseArray = b.b;
            List list = null;
            if (sparseArray != null && sparseArray.size() != 0 && (i = this.b) != 0) {
                try {
                    list = (List) b.b.get(i);
                } catch (Exception unused) {
                }
            }
            this.f20750c = list;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDestroy() {
            this.f20749a = null;
            this.f20750c = null;
        }
    }

    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new RemoteFactory(getApplicationContext(), intent);
    }
}
