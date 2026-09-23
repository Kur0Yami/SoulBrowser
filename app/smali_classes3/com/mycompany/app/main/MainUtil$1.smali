.class Lcom/mycompany/app/main/MainUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainUtil$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v3, "net.kaki87.soul2.testing.ACTION_SECRET_EXIT"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x5

    .line 25
    const/high16 v4, 0xc000000

    .line 26
    .line 27
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    .line 32
    .line 33
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 34
    .line 35
    sget v5, Lnet/kaki87/soul2/testing/R$string;->secret_exit:I

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {v3, v4, v5, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 45
    .line 46
    const-string v5, "SecretMode"

    .line 47
    .line 48
    invoke-direct {v4, v0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_white_24:I

    .line 52
    .line 53
    iget-object v7, v4, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 54
    .line 55
    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 56
    .line 57
    sget v6, Lnet/kaki87/soul2/testing/R$string;->secret_exit:I

    .line 58
    .line 59
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iput-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 68
    .line 69
    iput-object v2, v4, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    iput v2, v4, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 73
    .line 74
    const/4 v2, -0x1

    .line 75
    iput v2, v4, Landroidx/core/app/NotificationCompat$Builder;->r:I

    .line 76
    .line 77
    const-string v2, "net.kaki87.soul2.testing.NOTI_GROUP_SECRET"

    .line 78
    .line 79
    iput-object v2, v4, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget v3, v2, Landroid/app/Notification;->flags:I

    .line 89
    .line 90
    or-int/lit8 v3, v3, 0x30

    .line 91
    .line 92
    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 93
    .line 94
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    const/16 v4, 0x1a

    .line 97
    .line 98
    if-lt v3, v4, :cond_1

    .line 99
    .line 100
    new-instance v3, Landroid/app/NotificationChannel;

    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$string;->secret_mode:I

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v3, Landroid/app/NotificationChannel;

    .line 109
    .line 110
    const/4 v4, 0x2

    .line 111
    invoke-direct {v3, v5, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    const v0, 0x7ffffffa

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
