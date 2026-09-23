.class public Lcom/mycompany/app/vpn/VpnSvc;
.super Landroid/net/VpnService;
.source "SourceFile"

# interfaces
.implements Lprotect/Protector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;
    }
.end annotation


# instance fields
.field public c:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

.field public f:Landroid/os/Handler;

.field public g:Lcom/mycompany/app/vpn/VpnAdapter;

.field public h:I

.field public i:Z

.field public j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/mycompany/app/vpn/VpnSvc;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/vpn/VpnSvc;->d(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->g:Lcom/mycompany/app/vpn/VpnAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/vpn/VpnAdapter;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->g:Lcom/mycompany/app/vpn/VpnAdapter;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/vpn/VpnAdapter;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/vpn/VpnAdapter;-><init>(Lcom/mycompany/app/vpn/VpnSvc;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->g:Lcom/mycompany/app/vpn/VpnAdapter;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_1
    invoke-virtual {v0}, Lcom/mycompany/app/vpn/VpnAdapter;->b()Z

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, v0}, Lcom/mycompany/app/vpn/VpnSvc;->d(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/vpn/VpnSvc;->e()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0

    .line 52
    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/mycompany/app/vpn/VpnSvc;->d(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mycompany/app/vpn/VpnSvc$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mycompany/app/vpn/VpnSvc$2;-><init>(Lcom/mycompany/app/vpn/VpnSvc;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/mycompany/app/vpn/VpnSvc;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->j:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->j:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    return-void
.end method

.method public final d(I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const v1, 0x7ffffff8

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq p1, v3, :cond_5

    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/vpn/VpnSvc;->i:Z

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->i:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 43
    .line 44
    .line 45
    :cond_4
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/net/VpnService;->setUnderlyingNetworks([Landroid/net/Network;)Z

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/vpn/VpnSvc;->i:Z

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-nez p1, :cond_7

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_7
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_8

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_8
    iput-boolean v3, p0, Lcom/mycompany/app/vpn/VpnSvc;->i:Z

    .line 74
    .line 75
    new-instance v5, Landroid/content/Intent;

    .line 76
    .line 77
    const-class v6, Lcom/mycompany/app/setting/SettingVpn;

    .line 78
    .line 79
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    const/high16 v6, 0x10000000

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x7

    .line 88
    const/high16 v7, 0xc000000

    .line 89
    .line 90
    invoke-static {p1, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    .line 96
    const-string v7, "DNS"

    .line 97
    .line 98
    invoke-direct {v6, p1, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_white_24:I

    .line 102
    .line 103
    iget-object v8, v6, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 104
    .line 105
    iput p1, v8, Landroid/app/Notification;->icon:I

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    sget v8, Lnet/kaki87/soul2/testing/R$string;->vpn_active:I

    .line 112
    .line 113
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, v6, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 122
    .line 123
    iput-object v5, v6, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 124
    .line 125
    iput v3, v6, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 126
    .line 127
    const/4 p1, -0x1

    .line 128
    iput p1, v6, Landroidx/core/app/NotificationCompat$Builder;->r:I

    .line 129
    .line 130
    const-string p1, "net.kaki87.soul2.testing.NOTI_GROUP_VPN"

    .line 131
    .line 132
    iput-object p1, v6, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 133
    .line 134
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 v5, 0x1a

    .line 137
    .line 138
    if-lt p1, v5, :cond_9

    .line 139
    .line 140
    new-instance v5, Landroid/app/NotificationChannel;

    .line 141
    .line 142
    sget v5, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 143
    .line 144
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v8, Landroid/app/NotificationChannel;

    .line 149
    .line 150
    invoke-direct {v8, v7, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 154
    .line 155
    .line 156
    :cond_9
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget v5, v2, Landroid/app/Notification;->flags:I

    .line 161
    .line 162
    or-int/lit8 v5, v5, 0x20

    .line 163
    .line 164
    and-int/lit8 v5, v5, -0x11

    .line 165
    .line 166
    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 167
    .line 168
    const/16 v5, 0x22

    .line 169
    .line 170
    if-lt p1, v5, :cond_a

    .line 171
    .line 172
    const/16 p1, 0x400

    .line 173
    .line 174
    invoke-virtual {p0, v1, v2, p1}, Landroid/net/VpnService;->startForeground(ILandroid/app/Notification;I)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_a
    const/16 v5, 0x18

    .line 179
    .line 180
    if-lt p1, v5, :cond_b

    .line 181
    .line 182
    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_b
    invoke-virtual {v4, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    const-class p1, Landroid/net/ConnectivityManager;

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    new-array v1, v3, [Landroid/net/Network;

    .line 202
    .line 203
    aput-object p1, v1, v0

    .line 204
    .line 205
    invoke-virtual {p0, v1}, Landroid/net/VpnService;->setUnderlyingNetworks([Landroid/net/Network;)Z

    .line 206
    .line 207
    .line 208
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/vpn/VpnSvc;->c:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

    .line 209
    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    iget v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 213
    .line 214
    invoke-interface {p1, v0}, Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;->a(I)V

    .line 215
    .line 216
    .line 217
    :cond_c
    iget p1, p0, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 218
    .line 219
    if-nez p1, :cond_e

    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/mycompany/app/vpn/VpnSvc;->f:Landroid/os/Handler;

    .line 225
    .line 226
    if-nez p1, :cond_d

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_d
    new-instance v0, Lcom/mycompany/app/vpn/VpnSvc$3;

    .line 230
    .line 231
    invoke-direct {v0, p0}, Lcom/mycompany/app/vpn/VpnSvc$3;-><init>(Lcom/mycompany/app/vpn/VpnSvc;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    .line 236
    .line 237
    :cond_e
    :goto_3
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/vpn/VpnSvc;->d(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->g:Lcom/mycompany/app/vpn/VpnAdapter;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/vpn/VpnAdapter;->a()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->g:Lcom/mycompany/app/vpn/VpnAdapter;

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/mycompany/app/vpn/VpnSvc;->d(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/vpn/VpnSvc;->c:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-interface {v1, v0}, Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;->a(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public final getResolvers()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->f:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/vpn/VpnSvc;->e()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc;->j:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainApp;->E()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    new-instance v0, Lcom/mycompany/app/vpn/VpnSvc$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mycompany/app/vpn/VpnSvc$1;-><init>(Lcom/mycompany/app/vpn/VpnSvc;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/mycompany/app/vpn/VpnSvc;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
