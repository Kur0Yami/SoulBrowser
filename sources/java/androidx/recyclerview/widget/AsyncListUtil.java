package androidx.recyclerview.widget;

import androidx.recyclerview.widget.ThreadUtil;

/* loaded from: classes.dex */
public class AsyncListUtil<T> {

    /* renamed from: androidx.recyclerview.widget.AsyncListUtil$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ThreadUtil.MainThreadCallback<T> {
    }

    /* renamed from: androidx.recyclerview.widget.AsyncListUtil$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements ThreadUtil.BackgroundCallback<T> {
    }

    /* loaded from: classes.dex */
    public static abstract class DataCallback<T> {
    }

    /* loaded from: classes.dex */
    public static abstract class ViewCallback {
    }
}
