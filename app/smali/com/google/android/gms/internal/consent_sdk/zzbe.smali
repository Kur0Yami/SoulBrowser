.class public final Lcom/google/android/gms/internal/consent_sdk/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentForm;


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zzbz;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zzaq;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field public final e:Lcom/google/android/gms/internal/consent_sdk/zzby;

.field public final f:Lcom/google/android/gms/internal/consent_sdk/zzcr;

.field public g:Landroid/app/Dialog;

.field public h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzbz;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzbs;Lcom/google/android/gms/internal/consent_sdk/zzby;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->n:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a:Landroid/app/Application;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->b:Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->c:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->d:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 44
    .line 45
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->e:Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 46
    .line 47
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->f:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/web/WebViewActivity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzcz;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->f:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcr;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Queue;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x3

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 39
    .line 40
    if-eq v2, v0, :cond_0

    .line 41
    .line 42
    const-string v0, "ConsentForm#show can only be invoked once."

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "Privacy options form is being loading. Please try again later."

    .line 46
    .line 47
    :goto_0
    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->d(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->a()Lcom/google/android/ump/FormError;

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->a()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbx;->f:Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 63
    .line 64
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzbu;

    .line 68
    .line 69
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbu;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzcd;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzbx;->c:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbb;

    .line 78
    .line 79
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbb;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Landroid/app/Activity;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a:Landroid/app/Application;

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->b:Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 93
    .line 94
    iput-object p1, v0, Lcom/google/android/gms/internal/consent_sdk/zzbz;->a:Landroid/app/Activity;

    .line 95
    .line 96
    new-instance v0, Landroid/app/Dialog;

    .line 97
    .line 98
    const v2, 0x1030010

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_2

    .line 117
    .line 118
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 119
    .line 120
    const-string v0, "Activity with null windows is passed in."

    .line 121
    .line 122
    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->d(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->a()Lcom/google/android/ump/FormError;

    .line 129
    .line 130
    .line 131
    invoke-interface {p2}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->a()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    const/4 v2, -0x1

    .line 136
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 137
    .line 138
    .line 139
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 140
    .line 141
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    const/high16 v2, 0x1000000

    .line 148
    .line 149
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->a(Landroid/view/Window;Z)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->g:Landroid/app/Dialog;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 166
    .line 167
    const-string p2, "UMP_messagePresented"

    .line 168
    .line 169
    const-string v0, ""

    .line 170
    .line 171
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->d(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final b(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->e:Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzby;->a:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzcz;->a:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zztj;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzby;->b:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzce;->a()Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 23
    .line 24
    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbx;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbz;Landroid/os/Handler;Lcom/google/android/gms/internal/consent_sdk/zzcd;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->f:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, v1, Lcom/google/android/gms/internal/consent_sdk/zzcr;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Queue;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbv;

    .line 83
    .line 84
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbx;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 91
    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    iget-object v0, v1, Lcom/google/android/gms/internal/consent_sdk/zzcr;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/util/Queue;

    .line 101
    .line 102
    const/4 v3, 0x3

    .line 103
    const/4 v4, 0x2

    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    .line 109
    .line 110
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbc;-><init>(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->h:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->d:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 121
    .line 122
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbs;->a:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v5, p1, Lcom/google/android/gms/internal/consent_sdk/zzbs;->b:Ljava/lang/String;

    .line 125
    .line 126
    const-string v7, "UTF-8"

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    const-string v6, "text/html"

    .line 130
    .line 131
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzba;

    .line 135
    .line 136
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzba;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;)V

    .line 137
    .line 138
    .line 139
    const-wide/16 v0, 0x2710

    .line 140
    .line 141
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-boolean v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->n:Z

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->f:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object v2, v3, Lcom/google/android/gms/internal/consent_sdk/zzcr;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Queue;

    .line 35
    .line 36
    const/16 v4, 0xa

    .line 37
    .line 38
    const/16 v5, 0xb

    .line 39
    .line 40
    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v2, v3, Lcom/google/android/gms/internal/consent_sdk/zzcr;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Queue;

    .line 51
    .line 52
    const/4 v4, 0x4

    .line 53
    const/4 v5, 0x5

    .line 54
    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->a()Lcom/google/android/ump/FormError;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbc;->a(Lcom/google/android/ump/FormError;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->n:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->f:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v1, Lcom/google/android/gms/internal/consent_sdk/zzcr;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Queue;

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    const/16 v3, 0xb

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/consent_sdk/zzcr;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/Queue;

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    const/4 v3, 0x7

    .line 46
    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
