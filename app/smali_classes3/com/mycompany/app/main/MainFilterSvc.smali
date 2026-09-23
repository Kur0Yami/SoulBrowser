.class public Lcom/mycompany/app/main/MainFilterSvc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainFilterSvc$DialogTask;,
        Lcom/mycompany/app/main/MainFilterSvc$EventReceiver;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

.field public c:Landroid/os/Handler;

.field public d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

.field public e:Z

.field public f:Z

.field public g:Landroidx/core/app/NotificationCompat$Builder;

.field public h:J

.field public i:Z

.field public j:Lcom/mycompany/app/main/MainFilterSvc$EventReceiver;

.field public k:Lcom/mycompany/app/main/MainFilterDown;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainFilterSvc;->b:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc;->c:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance p2, Lcom/mycompany/app/main/MainFilterSvc$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainFilterSvc$1;-><init>(Lcom/mycompany/app/main/MainFilterSvc;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static a(Lcom/mycompany/app/main/MainFilterSvc;)V
    .locals 6

    .line 1
    const-string v0, "AdBlockFilter"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/MainFilterSvc;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->i:Z

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 31
    .line 32
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_filter:I

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 47
    .line 48
    sget v4, Lnet/kaki87/soul2/testing/R$string;->update:I

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {v3, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_white_24:I

    .line 65
    .line 66
    iget-object v5, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 67
    .line 68
    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    iput v2, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 82
    .line 83
    const/4 v2, -0x1

    .line 84
    iput v2, v3, Landroidx/core/app/NotificationCompat$Builder;->r:I

    .line 85
    .line 86
    const-string v2, "net.kaki87.soul2.testing.NOTI_GROUP_FILTER"

    .line 87
    .line 88
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v3, p0, Lcom/mycompany/app/main/MainFilterSvc;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, v2, Landroid/app/Notification;->flags:I

    .line 97
    .line 98
    or-int/lit8 v3, v3, 0x20

    .line 99
    .line 100
    and-int/lit8 v3, v3, -0x11

    .line 101
    .line 102
    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 103
    .line 104
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    .line 106
    const/16 v4, 0x1a

    .line 107
    .line 108
    if-lt v3, v4, :cond_3

    .line 109
    .line 110
    new-instance v3, Landroid/app/NotificationChannel;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 113
    .line 114
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_block:I

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    new-instance v4, Landroid/app/NotificationChannel;

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    invoke-direct {v4, v0, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    const v0, 0x7ffffff7

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    iput-wide v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->e:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    if-eqz p2, :cond_3

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lt p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 28
    .line 29
    new-instance v0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 30
    .line 31
    invoke-direct {v0, p0, p2, p1}, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;-><init>(Lcom/mycompany/app/main/MainFilterSvc;Ljava/util/List;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainFilterSvc;->c()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->b:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->c:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/MainFilterSvc$2;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainFilterSvc$2;-><init>(Lcom/mycompany/app/main/MainFilterSvc;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainFilterSvc;->j:Lcom/mycompany/app/main/MainFilterSvc$EventReceiver;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->j:Lcom/mycompany/app/main/MainFilterSvc$EventReceiver;

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainFilterSvc$3;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainFilterSvc$3;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->b:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc;->c:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->c:Landroid/os/Handler;

    .line 51
    .line 52
    iput-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc;->k:Lcom/mycompany/app/main/MainFilterDown;

    .line 53
    .line 54
    return-void
.end method
