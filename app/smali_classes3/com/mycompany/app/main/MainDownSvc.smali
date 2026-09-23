.class public Lcom/mycompany/app/main/MainDownSvc;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;,
        Lcom/mycompany/app/main/MainDownSvc$DownListListener;,
        Lcom/mycompany/app/main/MainDownSvc$DownItem;,
        Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;,
        Lcom/mycompany/app/main/MainDownSvc$ParseItem;,
        Lcom/mycompany/app/main/MainDownSvc$M3u8Item;,
        Lcom/mycompany/app/main/MainDownSvc$DownImageListener;,
        Lcom/mycompany/app/main/MainDownSvc$SortDown;,
        Lcom/mycompany/app/main/MainDownSvc$EventReceiver;,
        Lcom/mycompany/app/main/MainDownSvc$DownZipListener;,
        Lcom/mycompany/app/main/MainDownSvc$ImageItem;,
        Lcom/mycompany/app/main/MainDownSvc$EncItem;
    }
.end annotation


# static fields
.field public static V:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/lang/String;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:J

.field public K:J

.field public L:Landroidx/core/app/NotificationCompat$Builder;

.field public M:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/util/concurrent/ExecutorService;

.field public final S:Ljava/lang/Runnable;

.field public T:Z

.field public final U:Ljava/lang/Runnable;

.field public final c:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public j:Landroid/content/Context;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Landroid/os/Handler;

.field public p:J

.field public q:Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;

.field public r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Ljava/util/ArrayList;

.field public x:Z

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->g:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->h:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->i:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$3;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$3;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->S:Ljava/lang/Runnable;

    .line 45
    .line 46
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$31;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$31;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 52
    .line 53
    return-void
.end method

.method public static R(Landroid/app/Notification;I)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x20

    .line 10
    .line 11
    and-int/lit8 p1, p1, -0x11

    .line 12
    .line 13
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x2

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 20
    .line 21
    and-int/lit8 p1, p1, -0x31

    .line 22
    .line 23
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 27
    .line 28
    and-int/lit8 p1, p1, -0x21

    .line 29
    .line 30
    or-int/lit8 p1, p1, 0x10

    .line 31
    .line 32
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 33
    .line 34
    return-void
.end method

.method public static a(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->C:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->D:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->D:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 25
    .line 26
    iget v1, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 27
    .line 28
    if-gez v1, :cond_2

    .line 29
    .line 30
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 31
    .line 32
    :cond_2
    iget v1, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 35
    .line 36
    if-le v1, v2, :cond_3

    .line 37
    .line 38
    iput v2, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 39
    .line 40
    :cond_3
    iget v1, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 41
    .line 42
    if-le v1, v2, :cond_4

    .line 43
    .line 44
    iput v2, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 45
    .line 46
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 49
    .line 50
    const-class v3, Lcom/mycompany/app/main/list/MainListDown;

    .line 51
    .line 52
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    const/high16 v2, 0x10000000

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/high16 v4, 0xc000000

    .line 67
    .line 68
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    sget v3, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 78
    .line 79
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, " ("

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v4, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 92
    .line 93
    iget v5, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 94
    .line 95
    sub-int/2addr v4, v5

    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v4, ")  "

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    sget v4, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v3, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, ")"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 127
    .line 128
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 129
    .line 130
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 131
    .line 132
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->H:I

    .line 133
    .line 134
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->I:I

    .line 135
    .line 136
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 137
    .line 138
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 139
    .line 140
    const-string v5, "Download"

    .line 141
    .line 142
    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_done_white_24:I

    .line 146
    .line 147
    iget-object v5, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 148
    .line 149
    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 150
    .line 151
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_image:I

    .line 152
    .line 153
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 172
    .line 173
    invoke-virtual {v3, v0, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 174
    .line 175
    .line 176
    iput-object v1, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    iput v1, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 180
    .line 181
    const-string v2, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 182
    .line 183
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 190
    .line 191
    .line 192
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {v3}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-eqz v3, :cond_5

    .line 199
    .line 200
    const v4, 0x7ffffffc

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/MainDownSvc;->L(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainDownSvc;->V(Z)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public static b(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_3

    .line 15
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-wide v4, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 45
    .line 46
    iget-wide v6, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 47
    .line 48
    cmp-long v4, v4, v6

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    :cond_4
    if-lez v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-lez p1, :cond_5

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainDownSvc;->j()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->V(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 80
    :goto_2
    return-void

    .line 81
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p0
.end method

.method public static c(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "net.kaki87.soul2.testing.ACTION_DOWN_COMPLETE"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "EXTRA_ID"

    .line 24
    .line 25
    iget-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "EXTRA_STATUS"

    .line 31
    .line 32
    iget v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v1, "EXTRA_TYPE"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string p2, "secretMode"

    .line 43
    .line 44
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 45
    .line 46
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object p0, p0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    invoke-interface {p0, p1}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public static d(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    const-wide/16 v2, 0xc8

    .line 9
    .line 10
    if-ne v0, v1, :cond_a

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->Q:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->Q:Z

    .line 20
    .line 21
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->R:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->S:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v1, v4, v0}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->S:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/main/MainDownSvc;->B(Lcom/mycompany/app/main/MainDownSvc$DownItem;Z)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_6

    .line 46
    .line 47
    iget v6, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 48
    .line 49
    const/16 v7, 0xf

    .line 50
    .line 51
    if-ne v6, v7, :cond_4

    .line 52
    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, p1, v5, v1}, Lcom/mycompany/app/main/MainDownSvc;->A(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->x:I

    .line 72
    .line 73
    if-lez v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainDownSvc;->B(Lcom/mycompany/app/main/MainDownSvc$DownItem;Z)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, p1, v5, v0}, Lcom/mycompany/app/main/MainDownSvc;->A(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    goto :goto_0

    .line 97
    :cond_6
    move v0, v4

    .line 98
    :goto_0
    if-eqz v0, :cond_7

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    iput v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    const/4 v1, 0x4

    .line 105
    iput v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 106
    .line 107
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->E(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_c

    .line 122
    .line 123
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 124
    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_9
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$21;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$21;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_a
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->E(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_c

    .line 142
    .line 143
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 144
    .line 145
    if-nez p1, :cond_b

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_b
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$21;

    .line 149
    .line 150
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$21;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    .line 155
    .line 156
    :cond_c
    :goto_3
    return-void
.end method

.method public static e(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainDownSvc;->A:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_2
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainDownSvc;->A:Z

    .line 29
    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    new-instance v1, Landroid/content/Intent;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 34
    .line 35
    const-class v4, Lcom/mycompany/app/main/list/MainListDown;

    .line 36
    .line 37
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    const/high16 v3, 0x10000000

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/high16 v5, 0xc000000

    .line 52
    .line 53
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v3, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v4, "net.kaki87.soul2.testing.ACTION_DOWN_EXIT"

    .line 60
    .line 61
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-static {v4, v6, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Landroidx/core/app/NotificationCompat$Action;

    .line 82
    .line 83
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 84
    .line 85
    sget v6, Lnet/kaki87/soul2/testing/R$string;->down_exit:I

    .line 86
    .line 87
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-direct {v4, v5, v6, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    .line 96
    iget-object v5, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 97
    .line 98
    const-string v6, "Download"

    .line 99
    .line 100
    invoke-direct {v3, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_file_download_white_24:I

    .line 104
    .line 105
    iget-object v6, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 106
    .line 107
    iput v5, v6, Landroid/app/Notification;->icon:I

    .line 108
    .line 109
    sget v5, Lnet/kaki87/soul2/testing/R$string;->down_manager:I

    .line 110
    .line 111
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iput-object v5, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 120
    .line 121
    iput-object v1, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 122
    .line 123
    iput v2, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 124
    .line 125
    const-string v1, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 126
    .line 127
    iput-object v1, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .line 138
    const/16 v4, 0x1a

    .line 139
    .line 140
    if-lt v3, v4, :cond_3

    .line 141
    .line 142
    new-instance v4, Landroid/app/NotificationChannel;

    .line 143
    .line 144
    sget v4, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 145
    .line 146
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const-string v5, "Download"

    .line 151
    .line 152
    new-instance v6, Landroid/app/NotificationChannel;

    .line 153
    .line 154
    const/4 v7, 0x2

    .line 155
    invoke-direct {v6, v5, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    const/16 v4, 0x1d

    .line 162
    .line 163
    const v5, 0x7ffffffe

    .line 164
    .line 165
    .line 166
    if-lt v3, v4, :cond_4

    .line 167
    .line 168
    :try_start_1
    invoke-virtual {p0, v5, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_4
    const/16 v2, 0x18

    .line 173
    .line 174
    if-lt v3, v2, :cond_5

    .line 175
    .line 176
    invoke-virtual {p0, v5, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_5
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    .line 182
    .line 183
    :catch_0
    :goto_0
    return-void

    .line 184
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    throw p0
.end method

.method public static f(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/high16 v2, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    const/high16 v4, 0xc000000

    .line 28
    .line 29
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    .line 34
    .line 35
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 36
    .line 37
    sget v4, Lnet/kaki87/soul2/testing/R$string;->resume:I

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 49
    .line 50
    const-string v5, "Download"

    .line 51
    .line 52
    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_file_download_white_24:I

    .line 56
    .line 57
    iget-object v6, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 58
    .line 59
    iput v4, v6, Landroid/app/Notification;->icon:I

    .line 60
    .line 61
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_timeout:I

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 72
    .line 73
    iput-object v1, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    iput v1, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 77
    .line 78
    const-string v1, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 79
    .line 80
    iput-object v1, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v2, v1, Landroid/app/Notification;->flags:I

    .line 90
    .line 91
    or-int/lit8 v2, v2, 0x30

    .line 92
    .line 93
    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 94
    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v3, 0x1a

    .line 98
    .line 99
    if-lt v2, v3, :cond_2

    .line 100
    .line 101
    new-instance v2, Landroid/app/NotificationChannel;

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance v2, Landroid/app/NotificationChannel;

    .line 110
    .line 111
    const/4 v3, 0x2

    .line 112
    invoke-direct {v2, v5, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    const p0, 0x7ffffffb

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public static m(Lcom/mycompany/app/main/MainDownSvc$DownItem;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget p0, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    sget p0, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    sget p0, Lnet/kaki87/soul2/testing/R$string;->out_of_memory:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_2
    iget-object p0, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/mycompany/app/main/MainDownSvc;->z(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    sget p0, Lnet/kaki87/soul2/testing/R$string;->live_fail:I

    .line 30
    .line 31
    return p0

    .line 32
    :cond_3
    sget p0, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 33
    .line 34
    return p0
.end method

.method public static n(Ljava/lang/StringBuilder;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    div-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ".0 B"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-wide/32 v0, 0x100000

    .line 21
    .line 22
    .line 23
    div-long v0, p1, v0

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    const-string v5, "%.1f"

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    long-to-float p1, p1

    .line 36
    const/high16 p2, 0x44800000    # 1024.0f

    .line 37
    .line 38
    div-float/2addr p1, p2

    .line 39
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-array p2, v4, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p1, p2, v1

    .line 46
    .line 47
    invoke-static {v0, v5, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " KB"

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const-wide/32 v6, 0x40000000

    .line 61
    .line 62
    .line 63
    div-long v6, p1, v6

    .line 64
    .line 65
    cmp-long v0, v6, v2

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    .line 71
    long-to-float p1, p1

    .line 72
    const/high16 p2, 0x49800000    # 1048576.0f

    .line 73
    .line 74
    div-float/2addr p1, p2

    .line 75
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-array p2, v4, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p1, p2, v1

    .line 82
    .line 83
    invoke-static {v0, v5, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, " MB"

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 97
    .line 98
    long-to-float p1, p1

    .line 99
    const/high16 p2, 0x4e800000

    .line 100
    .line 101
    div-float/2addr p1, p2

    .line 102
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-array p2, v4, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object p1, p2, v1

    .line 109
    .line 110
    invoke-static {v0, v5, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p1, " GB"

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static s(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "m3u8:"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_1
    const-string v0, "reddit:"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x4

    .line 28
    return p0

    .line 29
    :cond_2
    const-string v0, "https://v.redd.it/"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x3

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const-string v0, "DASHPlaylist.mpd"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    const-string v0, "https://www.redditmedia.com/mediaembed/"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_14

    .line 54
    .line 55
    const-string v0, "https://cdn.embedly.com/widgets/media.html"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_4
    const-string v0, "kakao1:"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    const/4 p0, 0x5

    .line 74
    return p0

    .line 75
    :cond_5
    const-string v0, "kakao2:"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    const/4 p0, 0x6

    .line 84
    return p0

    .line 85
    :cond_6
    const-string v0, "dzen1:"

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    const/4 p0, 0x7

    .line 94
    return p0

    .line 95
    :cond_7
    const-string v0, "dzen2:"

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    const/16 p0, 0x8

    .line 104
    .line 105
    return p0

    .line 106
    :cond_8
    const-string v0, "vimeo1:"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_9

    .line 113
    .line 114
    const/16 p0, 0x9

    .line 115
    .line 116
    return p0

    .line 117
    :cond_9
    const-string v0, "vimeo2:"

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    const/16 p0, 0xa

    .line 126
    .line 127
    return p0

    .line 128
    :cond_a
    const-string v0, "tsfile:"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_b

    .line 135
    .line 136
    const/16 p0, 0xb

    .line 137
    .line 138
    return p0

    .line 139
    :cond_b
    const-string v0, "tsfake:"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_c

    .line 146
    .line 147
    const/16 p0, 0xc

    .line 148
    .line 149
    return p0

    .line 150
    :cond_c
    const-string v0, "m3fake:"

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    const/4 v2, 0x1

    .line 157
    if-eqz v0, :cond_d

    .line 158
    .line 159
    return v2

    .line 160
    :cond_d
    const-string v0, "izle:"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_e

    .line 167
    .line 168
    return v2

    .line 169
    :cond_e
    const-string v0, "torrent:"

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_f

    .line 176
    .line 177
    const/16 p0, 0xd

    .line 178
    .line 179
    return p0

    .line 180
    :cond_f
    const-string v0, "blob:"

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_10

    .line 187
    .line 188
    const/16 p0, 0xe

    .line 189
    .line 190
    return p0

    .line 191
    :cond_10
    const-string v0, "mix:"

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_11

    .line 198
    .line 199
    const/16 p0, 0xf

    .line 200
    .line 201
    return p0

    .line 202
    :cond_11
    const-string v0, ".m3u8"

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_12

    .line 209
    .line 210
    return v2

    .line 211
    :cond_12
    invoke-static {p0, v1}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const-string v0, "m3u8"

    .line 216
    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    if-eqz p0, :cond_13

    .line 222
    .line 223
    return v2

    .line 224
    :cond_13
    return v1

    .line 225
    :cond_14
    :goto_0
    return v2
.end method

.method public static u()I
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const v1, 0x7ffffff4

    .line 6
    .line 7
    .line 8
    rem-int/2addr v0, v1

    .line 9
    sput v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    sput v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 16
    .line 17
    :cond_0
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 18
    .line 19
    return v0
.end method

.method public static v(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->x1(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "v"

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static z(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lt v1, v2, :cond_1

    .line 24
    .line 25
    return v3

    .line 26
    :cond_1
    const-string v2, "live"

    .line 27
    .line 28
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq p0, v1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    return v3
.end method


# virtual methods
.method public final A(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    const/4 v6, 0x1

    .line 14
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v8, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainUtil;->K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v8, ".mp4"

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 39
    :try_start_1
    new-instance v8, Landroid/media/MediaMuxer;

    .line 40
    .line 41
    invoke-direct {v8, v7, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    new-instance v9, Landroid/media/MediaExtractor;

    .line 45
    .line 46
    invoke-direct {v9}, Landroid/media/MediaExtractor;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v8, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    new-instance v12, Landroid/media/MediaExtractor;

    .line 64
    .line 65
    invoke-direct {v12}, Landroid/media/MediaExtractor;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v12, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v12, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    invoke-virtual {v8, v13}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 79
    .line 80
    .line 81
    move-result v14
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 82
    :try_start_2
    const-string v15, "width"

    .line 83
    .line 84
    invoke-virtual {v10, v15}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const-string v5, "height"

    .line 89
    .line 90
    invoke-virtual {v10, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5

    .line 94
    mul-int/2addr v15, v5

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move v15, v4

    .line 97
    :goto_0
    :try_start_3
    const-string v5, "is-adts"

    .line 98
    .line 99
    invoke-virtual {v13, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    .line 103
    if-ne v5, v6, :cond_1

    .line 104
    .line 105
    move v5, v6

    .line 106
    goto :goto_1

    .line 107
    :catch_1
    :cond_1
    move v5, v4

    .line 108
    :goto_1
    const v10, 0x38400

    .line 109
    .line 110
    .line 111
    :try_start_4
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    .line 120
    .line 121
    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 125
    .line 126
    move-object/from16 v16, v7

    .line 127
    .line 128
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 133
    .line 134
    const-wide/16 v6, 0x0

    .line 135
    .line 136
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 137
    .line 138
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 139
    .line 140
    new-instance v15, Ljava/io/File;

    .line 141
    .line 142
    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15}, Ljava/io/File;->length()J

    .line 146
    .line 147
    .line 148
    move-result-wide v18

    .line 149
    new-instance v15, Ljava/io/File;

    .line 150
    .line 151
    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15}, Ljava/io/File;->length()J

    .line 155
    .line 156
    .line 157
    move-result-wide v20

    .line 158
    move/from16 v22, v5

    .line 159
    .line 160
    add-long v4, v18, v20

    .line 161
    .line 162
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 163
    .line 164
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 165
    .line 166
    invoke-virtual {v8}, Landroid/media/MediaMuxer;->start()V

    .line 167
    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    invoke-virtual {v9, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 171
    .line 172
    .line 173
    const/4 v15, 0x0

    .line 174
    :goto_2
    const/4 v5, 0x0

    .line 175
    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 176
    .line 177
    invoke-virtual {v9, v10, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    iput v4, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 182
    .line 183
    const-wide/16 v19, 0x320

    .line 184
    .line 185
    if-gez v4, :cond_2

    .line 186
    .line 187
    move v4, v15

    .line 188
    goto :goto_3

    .line 189
    :cond_2
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 190
    .line 191
    .line 192
    move-result-wide v4

    .line 193
    iput-wide v4, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 194
    .line 195
    const/4 v15, 0x1

    .line 196
    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 197
    .line 198
    invoke-virtual {v8, v11, v10, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_b

    .line 206
    .line 207
    const/4 v4, 0x1

    .line 208
    :goto_3
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    .line 209
    .line 210
    .line 211
    const/4 v5, 0x2

    .line 212
    invoke-virtual {v12, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 213
    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    :goto_4
    if-eqz v4, :cond_4

    .line 217
    .line 218
    if-eqz v22, :cond_3

    .line 219
    .line 220
    const/4 v9, 0x7

    .line 221
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 222
    .line 223
    const/4 v11, 0x0

    .line 224
    invoke-virtual {v12, v10, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 225
    .line 226
    .line 227
    move-result v17

    .line 228
    add-int/lit8 v9, v17, -0x7

    .line 229
    .line 230
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :catch_2
    move-object/from16 v7, v16

    .line 234
    .line 235
    goto/16 :goto_8

    .line 236
    .line 237
    :cond_3
    const/4 v11, 0x0

    .line 238
    iput v11, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 239
    .line 240
    invoke-virtual {v12, v10, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 245
    .line 246
    :goto_5
    iget v9, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 247
    .line 248
    if-gez v9, :cond_5

    .line 249
    .line 250
    :cond_4
    move v11, v4

    .line 251
    goto :goto_6

    .line 252
    :cond_5
    move-wide/from16 v17, v6

    .line 253
    .line 254
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    iput-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 259
    .line 260
    const/4 v15, 0x1

    .line 261
    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 262
    .line 263
    invoke-virtual {v8, v14, v10, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->advance()Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-nez v5, :cond_6

    .line 271
    .line 272
    move v11, v4

    .line 273
    const/4 v5, 0x1

    .line 274
    goto :goto_6

    .line 275
    :cond_6
    iget-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 276
    .line 277
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 278
    .line 279
    move v11, v4

    .line 280
    move-wide/from16 v23, v5

    .line 281
    .line 282
    int-to-long v4, v7

    .line 283
    add-long v4, v23, v4

    .line 284
    .line 285
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 286
    .line 287
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 288
    .line 289
    cmp-long v9, v6, v17

    .line 290
    .line 291
    if-eqz v9, :cond_7

    .line 292
    .line 293
    cmp-long v6, v6, v4

    .line 294
    .line 295
    if-gez v6, :cond_7

    .line 296
    .line 297
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 298
    .line 299
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 300
    .line 301
    .line 302
    move-result-wide v4

    .line 303
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 304
    .line 305
    cmp-long v9, v6, v17

    .line 306
    .line 307
    if-eqz v9, :cond_8

    .line 308
    .line 309
    sub-long v6, v4, v6

    .line 310
    .line 311
    cmp-long v6, v6, v19

    .line 312
    .line 313
    if-lez v6, :cond_9

    .line 314
    .line 315
    :cond_8
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 316
    .line 317
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 321
    .line 322
    .line 323
    :cond_9
    move v4, v11

    .line 324
    move-wide/from16 v6, v17

    .line 325
    .line 326
    const/4 v5, 0x1

    .line 327
    goto :goto_4

    .line 328
    :goto_6
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->release()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8}, Landroid/media/MediaMuxer;->stop()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8}, Landroid/media/MediaMuxer;->release()V

    .line 335
    .line 336
    .line 337
    if-eqz v11, :cond_a

    .line 338
    .line 339
    if-eqz v5, :cond_a

    .line 340
    .line 341
    const/4 v4, 0x1

    .line 342
    goto :goto_7

    .line 343
    :cond_a
    const/4 v4, 0x0

    .line 344
    :goto_7
    move v5, v4

    .line 345
    move-object/from16 v7, v16

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_b
    move-wide/from16 v17, v6

    .line 349
    .line 350
    const/4 v5, 0x2

    .line 351
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 352
    .line 353
    iget v4, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 354
    .line 355
    move-wide/from16 v23, v6

    .line 356
    .line 357
    int-to-long v5, v4

    .line 358
    add-long v5, v23, v5

    .line 359
    .line 360
    iput-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 361
    .line 362
    move-object v4, v8

    .line 363
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 364
    .line 365
    cmp-long v23, v7, v17

    .line 366
    .line 367
    if-eqz v23, :cond_c

    .line 368
    .line 369
    cmp-long v7, v7, v5

    .line 370
    .line 371
    if-gez v7, :cond_c

    .line 372
    .line 373
    iput-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 374
    .line 375
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    .line 377
    .line 378
    move-result-wide v5

    .line 379
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 380
    .line 381
    cmp-long v23, v7, v17

    .line 382
    .line 383
    if-eqz v23, :cond_d

    .line 384
    .line 385
    sub-long v7, v5, v7

    .line 386
    .line 387
    cmp-long v7, v7, v19

    .line 388
    .line 389
    if-lez v7, :cond_e

    .line 390
    .line 391
    :cond_d
    iput-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 392
    .line 393
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 397
    .line 398
    .line 399
    :cond_e
    move-object v8, v4

    .line 400
    move-wide/from16 v6, v17

    .line 401
    .line 402
    const/4 v4, 0x2

    .line 403
    const/4 v15, 0x1

    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :catch_3
    move-object/from16 v16, v7

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :catch_4
    const/4 v7, 0x0

    .line 410
    :catch_5
    :goto_8
    const/4 v5, 0x0

    .line 411
    :goto_9
    if-eqz v5, :cond_11

    .line 412
    .line 413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-eqz v4, :cond_f

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_f
    new-instance v4, Ljava/io/File;

    .line 421
    .line 422
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 426
    .line 427
    .line 428
    :goto_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_10

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_10
    new-instance v2, Ljava/io/File;

    .line 436
    .line 437
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 441
    .line 442
    .line 443
    :goto_b
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 444
    .line 445
    const/4 v15, 0x1

    .line 446
    invoke-virtual {v0, v1, v7, v2, v15}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    goto/16 :goto_d

    .line 451
    .line 452
    :cond_11
    const/4 v15, 0x1

    .line 453
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-eqz v4, :cond_12

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_12
    new-instance v4, Ljava/io/File;

    .line 461
    .line 462
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 466
    .line 467
    .line 468
    :goto_c
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v0, v1, v2, v4, v15}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 475
    .line 476
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 477
    .line 478
    .line 479
    move-result-wide v28

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 486
    .line 487
    iget-object v5, v5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v5, ".aac"

    .line 497
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    iget-object v5, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 506
    .line 507
    invoke-static {v5}, Lcom/mycompany/app/pref/PrefPath;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    iget-object v6, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 512
    .line 513
    const/4 v7, 0x0

    .line 514
    invoke-static {v6, v5, v7, v4}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    if-eqz v4, :cond_13

    .line 519
    .line 520
    iget-object v5, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 521
    .line 522
    iget-object v6, v4, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 523
    .line 524
    invoke-static {v5, v3, v6}, Lcom/mycompany/app/main/MainUtil;->w6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 528
    .line 529
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 530
    .line 531
    iget-object v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 532
    .line 533
    iget-boolean v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 534
    .line 535
    sget-wide v34, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 536
    .line 537
    const/16 v36, 0x0

    .line 538
    .line 539
    const/16 v23, 0x3

    .line 540
    .line 541
    const/16 v24, 0x6

    .line 542
    .line 543
    const/16 v32, 0x0

    .line 544
    .line 545
    move-wide/from16 v30, v28

    .line 546
    .line 547
    move-object/from16 v22, v3

    .line 548
    .line 549
    move-object/from16 v27, v4

    .line 550
    .line 551
    move-object/from16 v25, v5

    .line 552
    .line 553
    move-object/from16 v26, v6

    .line 554
    .line 555
    move/from16 v33, v7

    .line 556
    .line 557
    invoke-static/range {v22 .. v36}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 558
    .line 559
    .line 560
    move-object/from16 v3, v27

    .line 561
    .line 562
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 563
    .line 564
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 565
    .line 566
    iget-object v3, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 567
    .line 568
    const/4 v11, 0x0

    .line 569
    invoke-static {v11, v4, v5, v3}, Lcom/mycompany/app/db/book/DbBookSub;->d(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    const/4 v15, 0x1

    .line 573
    iput-boolean v15, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->O:Z

    .line 574
    .line 575
    :cond_13
    move v1, v2

    .line 576
    :goto_d
    return v1
.end method

.method public final B(Lcom/mycompany/app/main/MainDownSvc$DownItem;Z)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    array-length v4, v3

    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-eqz p2, :cond_3

    .line 29
    .line 30
    const-string v4, "af"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const-string v4, "vf"

    .line 34
    .line 35
    :goto_1
    array-length v5, v3

    .line 36
    const/4 v6, 0x0

    .line 37
    move v7, v6

    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_2
    const-wide/16 v9, 0x0

    .line 40
    .line 41
    if-ge v7, v5, :cond_8

    .line 42
    .line 43
    aget-object v11, v3, v7

    .line 44
    .line 45
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    if-eqz v13, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-nez v13, :cond_5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 64
    .line 65
    .line 66
    move-result-wide v13

    .line 67
    cmp-long v9, v13, v9

    .line 68
    .line 69
    if-nez v9, :cond_6

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_6
    if-nez v8, :cond_7

    .line 73
    .line 74
    new-instance v8, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    :cond_7
    new-instance v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 80
    .line 81
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    iput-object v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v12, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_8
    if-eqz v8, :cond_0

    .line 99
    .line 100
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_9

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_9
    new-instance v3, Lcom/mycompany/app/main/MainDownSvc$SortDown;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    :catch_0
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 120
    .line 121
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v4, Ljava/io/File;

    .line 124
    .line 125
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    const/4 v7, 0x1

    .line 133
    iput-boolean v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v11

    .line 139
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 140
    .line 141
    iput-wide v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 142
    .line 143
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 144
    .line 145
    iget-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 146
    .line 147
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 148
    .line 149
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 150
    .line 151
    :try_start_1
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v4, v3, v7}, Lcom/mycompany/app/main/MainUtil;->V2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 154
    .line 155
    .line 156
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    goto :goto_4

    .line 158
    :catch_1
    const/4 v4, 0x0

    .line 159
    :goto_4
    if-nez v4, :cond_a

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    move v11, v7

    .line 168
    :goto_5
    if-ge v11, v5, :cond_12

    .line 169
    .line 170
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 175
    .line 176
    iget-object v12, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 177
    .line 178
    new-instance v13, Ljava/io/File;

    .line 179
    .line 180
    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 184
    .line 185
    .line 186
    move-result-wide v13

    .line 187
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    if-eqz v15, :cond_b

    .line 192
    .line 193
    move v2, v6

    .line 194
    move-wide/from16 v17, v9

    .line 195
    .line 196
    const/16 v16, 0x0

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_b
    :try_start_2
    iget-object v15, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 200
    .line 201
    invoke-static {v15, v12}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 202
    .line 203
    .line 204
    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const/16 v2, 0x2000

    .line 208
    .line 209
    :try_start_3
    new-array v7, v2, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 210
    .line 211
    move-wide/from16 v17, v9

    .line 212
    .line 213
    :goto_6
    :try_start_4
    invoke-virtual {v15, v7, v6, v2}, Ljava/io/InputStream;->read([BII)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    const/4 v10, -0x1

    .line 218
    if-eq v9, v10, :cond_c

    .line 219
    .line 220
    invoke-virtual {v4, v7, v6, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    const/4 v2, 0x1

    .line 225
    goto :goto_8

    .line 226
    :catch_2
    move-wide/from16 v17, v9

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :catch_3
    move-wide/from16 v17, v9

    .line 230
    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    move-object/from16 v15, v16

    .line 234
    .line 235
    :catch_4
    :goto_7
    move v2, v6

    .line 236
    :goto_8
    if-eqz v15, :cond_d

    .line 237
    .line 238
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 239
    .line 240
    .line 241
    :catch_5
    :cond_d
    :goto_9
    if-nez v2, :cond_e

    .line 242
    .line 243
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 244
    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_e
    iget-wide v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 248
    .line 249
    add-long/2addr v9, v13

    .line 250
    iput-wide v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 251
    .line 252
    iget-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 253
    .line 254
    cmp-long v2, v13, v17

    .line 255
    .line 256
    if-eqz v2, :cond_f

    .line 257
    .line 258
    cmp-long v2, v13, v9

    .line 259
    .line 260
    if-gez v2, :cond_f

    .line 261
    .line 262
    iput-wide v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 263
    .line 264
    :cond_f
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 265
    .line 266
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 270
    .line 271
    .line 272
    move-result-wide v9

    .line 273
    iget-wide v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 274
    .line 275
    cmp-long v2, v12, v17

    .line 276
    .line 277
    if-eqz v2, :cond_10

    .line 278
    .line 279
    sub-long v12, v9, v12

    .line 280
    .line 281
    const-wide/16 v14, 0x320

    .line 282
    .line 283
    cmp-long v2, v12, v14

    .line 284
    .line 285
    if-lez v2, :cond_11

    .line 286
    .line 287
    :cond_10
    iput-wide v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 288
    .line 289
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 293
    .line 294
    .line 295
    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 296
    .line 297
    move-wide/from16 v9, v17

    .line 298
    .line 299
    const/4 v7, 0x1

    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :cond_12
    move-wide/from16 v17, v9

    .line 303
    .line 304
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 305
    .line 306
    .line 307
    :catch_6
    new-instance v2, Ljava/io/File;

    .line 308
    .line 309
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 313
    .line 314
    .line 315
    move-result-wide v4

    .line 316
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 317
    .line 318
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 319
    .line 320
    cmp-long v2, v6, v17

    .line 321
    .line 322
    if-eqz v2, :cond_13

    .line 323
    .line 324
    cmp-long v2, v6, v4

    .line 325
    .line 326
    if-gez v2, :cond_13

    .line 327
    .line 328
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 329
    .line 330
    :cond_13
    return-object v3

    .line 331
    :catch_7
    :goto_a
    return-object v16
.end method

.method public final C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_8

    .line 11
    .line 12
    if-eqz v1, :cond_8

    .line 13
    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_8

    .line 19
    .line 20
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    iget-object v6, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v6, Ljava/io/File;

    .line 48
    .line 49
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUri;->d(J)[B

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    array-length v9, v8

    .line 61
    const/4 v10, 0x1

    .line 62
    const-wide/16 v11, 0x0

    .line 63
    .line 64
    if-eqz p4, :cond_1

    .line 65
    .line 66
    iput-boolean v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    iput-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 73
    .line 74
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 75
    .line 76
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 77
    .line 78
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 79
    .line 80
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-object v1, v3

    .line 84
    move-object v3, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {v5, v8, v4, v9}, Ljava/io/InputStream;->read([BII)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v7, -0x1

    .line 91
    if-eq v6, v7, :cond_5

    .line 92
    .line 93
    iget-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 94
    .line 95
    move-wide v15, v11

    .line 96
    int-to-long v10, v6

    .line 97
    add-long/2addr v13, v10

    .line 98
    iput-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 99
    .line 100
    iget-wide v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 101
    .line 102
    cmp-long v7, v10, v15

    .line 103
    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    cmp-long v7, v10, v13

    .line 107
    .line 108
    if-gez v7, :cond_2

    .line 109
    .line 110
    iput-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 111
    .line 112
    :cond_2
    invoke-virtual {v3, v8, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    iget-wide v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 120
    .line 121
    cmp-long v12, v10, v15

    .line 122
    .line 123
    if-eqz v12, :cond_3

    .line 124
    .line 125
    sub-long v10, v6, v10

    .line 126
    .line 127
    const-wide/16 v12, 0x320

    .line 128
    .line 129
    cmp-long v10, v10, v12

    .line 130
    .line 131
    if-lez v10, :cond_4

    .line 132
    .line 133
    :cond_3
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    :cond_4
    move-wide v11, v15

    .line 142
    const/4 v10, 0x1

    .line 143
    goto :goto_0

    .line 144
    :cond_5
    const/4 v4, 0x1

    .line 145
    goto :goto_2

    .line 146
    :catch_1
    move-object v1, v3

    .line 147
    :goto_1
    move-object v5, v3

    .line 148
    move-object v3, v1

    .line 149
    :goto_2
    if-eqz v3, :cond_6

    .line 150
    .line 151
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    .line 153
    .line 154
    :catch_2
    :cond_6
    if-eqz v5, :cond_7

    .line 155
    .line 156
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    .line 158
    .line 159
    :catch_3
    :cond_7
    if-eqz v4, :cond_8

    .line 160
    .line 161
    new-instance v1, Ljava/io/File;

    .line 162
    .line 163
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    .line 168
    .line 169
    :cond_8
    :goto_3
    return v4
.end method

.method public final D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 22
    .line 23
    const/4 v5, 0x6

    .line 24
    if-ne v4, v5, :cond_3

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x1

    .line 32
    const/4 v8, 0x5

    .line 33
    const/4 v9, 0x3

    .line 34
    if-eq v4, v9, :cond_4

    .line 35
    .line 36
    if-ne v4, v8, :cond_8

    .line 37
    .line 38
    :cond_4
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v10

    .line 44
    iput-wide v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 45
    .line 46
    iput-wide v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 47
    .line 48
    const-wide/16 v12, 0x0

    .line 49
    .line 50
    cmp-long v2, v10, v12

    .line 51
    .line 52
    if-nez v2, :cond_7

    .line 53
    .line 54
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 67
    .line 68
    const-string v4, "http://"

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v4, 0x7

    .line 83
    if-le v2, v4, :cond_5

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "https://"

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 106
    .line 107
    iput v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->G(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_5
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 114
    .line 115
    if-ne v2, v9, :cond_6

    .line 116
    .line 117
    iput v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 118
    .line 119
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 120
    .line 121
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 128
    .line 129
    if-ne v2, v8, :cond_8

    .line 130
    .line 131
    iput v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 132
    .line 133
    :cond_8
    :goto_1
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 134
    .line 135
    if-ne v2, v6, :cond_9

    .line 136
    .line 137
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 138
    .line 139
    if-ne v2, v9, :cond_9

    .line 140
    .line 141
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->L0(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    iget-object v12, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 150
    .line 151
    iget-wide v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 152
    .line 153
    iget-object v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    const/4 v15, 0x1

    .line 160
    invoke-static/range {v10 .. v15}, Lcom/mycompany/app/db/book/DbBookDown;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    iput-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 168
    .line 169
    iput-boolean v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->O:Z

    .line 170
    .line 171
    :cond_9
    iget-object v10, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 172
    .line 173
    iget v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 174
    .line 175
    iget v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 176
    .line 177
    iget-object v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v15, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 182
    .line 183
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 184
    .line 185
    move-object/from16 v25, v3

    .line 186
    .line 187
    iget-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 188
    .line 189
    iget-boolean v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 190
    .line 191
    sget-wide v22, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 192
    .line 193
    const/16 v24, 0x0

    .line 194
    .line 195
    const/16 v20, 0x0

    .line 196
    .line 197
    move-wide/from16 v18, v2

    .line 198
    .line 199
    move/from16 v21, v4

    .line 200
    .line 201
    move-wide/from16 v16, v7

    .line 202
    .line 203
    invoke-static/range {v10 .. v24}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 204
    .line 205
    .line 206
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 207
    .line 208
    if-ne v2, v9, :cond_b

    .line 209
    .line 210
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 211
    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    iget v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 215
    .line 216
    if-eq v3, v6, :cond_b

    .line 217
    .line 218
    const/4 v4, 0x5

    .line 219
    if-eq v3, v4, :cond_b

    .line 220
    .line 221
    if-eq v3, v5, :cond_b

    .line 222
    .line 223
    iget-object v3, v2, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v3}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    const/4 v4, 0x1

    .line 230
    if-eq v3, v4, :cond_a

    .line 231
    .line 232
    const/4 v4, 0x2

    .line 233
    if-eq v3, v4, :cond_a

    .line 234
    .line 235
    if-ne v3, v9, :cond_b

    .line 236
    .line 237
    :cond_a
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 238
    .line 239
    invoke-static {v4, v3, v2}, Lcom/mycompany/app/data/DataUtil;->a(Landroid/content/Context;ILcom/mycompany/app/main/MainUri$UriItem;)V

    .line 240
    .line 241
    .line 242
    :cond_b
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$23;

    .line 243
    .line 244
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/main/MainDownSvc$23;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 245
    .line 246
    .line 247
    const-wide/16 v3, 0xc8

    .line 248
    .line 249
    move-object/from16 v1, v25

    .line 250
    .line 251
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final E(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_5

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->i:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->Q:Z

    .line 9
    .line 10
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->R:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->S:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    monitor-exit v1

    .line 36
    return v0

    .line 37
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    :catch_0
    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->i:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 42
    :try_start_4
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_3

    .line 54
    :catchall_1
    move-exception v1

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    move v1, v0

    .line 57
    :goto_3
    monitor-exit p1

    .line 58
    return v1

    .line 59
    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 61
    :catch_1
    :goto_5
    return v0
.end method

.method public final F(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->R:Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->R:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method

.method public final G(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    if-eqz v2, :cond_24

    .line 6
    .line 7
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_24

    .line 14
    .line 15
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_13

    .line 24
    .line 25
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_13

    .line 30
    .line 31
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto/16 :goto_13

    .line 36
    .line 37
    :cond_2
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 38
    .line 39
    const/16 v7, 0xf

    .line 40
    .line 41
    if-ne v0, v7, :cond_3

    .line 42
    .line 43
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->N0(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_0
    move-object/from16 v28, v3

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    move-object/from16 v0, v28

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    iget-wide v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 66
    .line 67
    iget v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 68
    .line 69
    const-wide/16 v8, 0x0

    .line 70
    .line 71
    cmp-long v10, v4, v8

    .line 72
    .line 73
    if-nez v10, :cond_4

    .line 74
    .line 75
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v10, v3, v11}, Lcom/mycompany/app/main/MainUtil;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    iput-wide v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    .line 84
    .line 85
    iput-wide v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 86
    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_4

    .line 92
    .line 93
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 94
    .line 95
    iget-object v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v10, v0, v11}, Lcom/mycompany/app/main/MainUtil;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    iput-wide v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->B:J

    .line 102
    .line 103
    iget-wide v12, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 104
    .line 105
    add-long/2addr v12, v10

    .line 106
    iput-wide v12, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 107
    .line 108
    :cond_4
    iget v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 109
    .line 110
    const/4 v11, 0x2

    .line 111
    const/4 v12, 0x1

    .line 112
    if-ge v10, v11, :cond_5

    .line 113
    .line 114
    iput v12, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 115
    .line 116
    :cond_5
    iget v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 117
    .line 118
    if-ge v10, v11, :cond_6

    .line 119
    .line 120
    move-wide/from16 v17, v8

    .line 121
    .line 122
    :goto_2
    move-wide/from16 v7, v17

    .line 123
    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_6
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-nez v13, :cond_7

    .line 135
    .line 136
    const-string v13, "fbcdn.net"

    .line 137
    .line 138
    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    if-eqz v10, :cond_7

    .line 143
    .line 144
    const-wide/32 v13, 0x400000

    .line 145
    .line 146
    .line 147
    :goto_3
    move-wide v15, v8

    .line 148
    goto :goto_4

    .line 149
    :cond_7
    const-wide/32 v13, 0x100000

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :goto_4
    iget-wide v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    .line 154
    .line 155
    sub-long/2addr v8, v13

    .line 156
    cmp-long v10, v8, v15

    .line 157
    .line 158
    if-gtz v10, :cond_8

    .line 159
    .line 160
    move-wide v7, v15

    .line 161
    move-wide/from16 v17, v7

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    :goto_5
    iget v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 165
    .line 166
    move-wide/from16 v17, v15

    .line 167
    .line 168
    add-int/lit8 v15, v10, -0x1

    .line 169
    .line 170
    move-wide/from16 v19, v8

    .line 171
    .line 172
    int-to-long v7, v15

    .line 173
    mul-long/2addr v7, v13

    .line 174
    cmp-long v7, v19, v7

    .line 175
    .line 176
    if-gez v7, :cond_a

    .line 177
    .line 178
    iput v15, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 179
    .line 180
    if-ge v15, v11, :cond_9

    .line 181
    .line 182
    :goto_6
    goto :goto_2

    .line 183
    :cond_9
    move-wide/from16 v15, v17

    .line 184
    .line 185
    move-wide/from16 v8, v19

    .line 186
    .line 187
    const/16 v7, 0xf

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_a
    if-ge v10, v11, :cond_b

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_b
    iget-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    .line 194
    .line 195
    int-to-long v9, v10

    .line 196
    div-long/2addr v7, v9

    .line 197
    const-wide/16 v9, 0x400

    .line 198
    .line 199
    rem-long v13, v7, v9

    .line 200
    .line 201
    cmp-long v15, v13, v17

    .line 202
    .line 203
    if-eqz v15, :cond_c

    .line 204
    .line 205
    sub-long v13, v9, v13

    .line 206
    .line 207
    add-long/2addr v7, v13

    .line 208
    :cond_c
    iget v13, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 209
    .line 210
    sub-int/2addr v13, v12

    .line 211
    int-to-long v13, v13

    .line 212
    mul-long/2addr v13, v7

    .line 213
    cmp-long v13, v19, v13

    .line 214
    .line 215
    if-gez v13, :cond_d

    .line 216
    .line 217
    sub-long/2addr v7, v9

    .line 218
    cmp-long v13, v7, v17

    .line 219
    .line 220
    if-gez v13, :cond_c

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_d
    cmp-long v9, v7, v17

    .line 224
    .line 225
    if-gez v9, :cond_e

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_e
    :goto_7
    iput-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->F:J

    .line 229
    .line 230
    iget v9, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 231
    .line 232
    if-lt v9, v11, :cond_f

    .line 233
    .line 234
    cmp-long v7, v7, v17

    .line 235
    .line 236
    if-nez v7, :cond_10

    .line 237
    .line 238
    :cond_f
    iput v12, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 239
    .line 240
    :cond_10
    iget v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 241
    .line 242
    iput v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 243
    .line 244
    add-int/lit8 v8, v7, -0x1

    .line 245
    .line 246
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->y0(I)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    iget-object v9, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 251
    .line 252
    const-string v10, "bytes="

    .line 253
    .line 254
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    const/16 v19, 0x0

    .line 259
    .line 260
    if-nez v11, :cond_16

    .line 261
    .line 262
    iget-object v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    if-eqz v11, :cond_11

    .line 269
    .line 270
    goto :goto_c

    .line 271
    :cond_11
    iget v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 272
    .line 273
    if-ne v11, v12, :cond_12

    .line 274
    .line 275
    move v13, v12

    .line 276
    goto :goto_8

    .line 277
    :cond_12
    move/from16 v13, v19

    .line 278
    .line 279
    :goto_8
    if-eqz v13, :cond_13

    .line 280
    .line 281
    iget-wide v14, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    .line 282
    .line 283
    move/from16 v20, v12

    .line 284
    .line 285
    move/from16 v21, v13

    .line 286
    .line 287
    move-wide/from16 v24, v14

    .line 288
    .line 289
    move-wide/from16 v22, v17

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_13
    int-to-long v14, v8

    .line 293
    move/from16 v20, v12

    .line 294
    .line 295
    move/from16 v21, v13

    .line 296
    .line 297
    iget-wide v12, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->F:J

    .line 298
    .line 299
    mul-long/2addr v14, v12

    .line 300
    add-int/lit8 v11, v11, -0x1

    .line 301
    .line 302
    if-ne v8, v11, :cond_14

    .line 303
    .line 304
    iget-wide v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    .line 305
    .line 306
    sub-long/2addr v11, v14

    .line 307
    move-wide/from16 v24, v11

    .line 308
    .line 309
    :goto_9
    move-wide/from16 v22, v14

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_14
    move-wide/from16 v24, v12

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :goto_a
    iget-object v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v8, v7, v11}, Lcom/mycompany/app/main/MainDownSvc;->v(IILjava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-static {v9, v8}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v26

    .line 325
    cmp-long v8, v26, v17

    .line 326
    .line 327
    if-lez v8, :cond_15

    .line 328
    .line 329
    move/from16 v8, v20

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_15
    move/from16 v8, v19

    .line 333
    .line 334
    :goto_b
    if-eqz v21, :cond_17

    .line 335
    .line 336
    if-nez v8, :cond_17

    .line 337
    .line 338
    :cond_16
    :goto_c
    move-wide/from16 v28, v17

    .line 339
    .line 340
    move-wide/from16 v17, v4

    .line 341
    .line 342
    move-wide/from16 v4, v28

    .line 343
    .line 344
    move-object v9, v3

    .line 345
    :goto_d
    move/from16 v12, v19

    .line 346
    .line 347
    goto :goto_f

    .line 348
    :cond_17
    move-object v8, v10

    .line 349
    iget-object v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 350
    .line 351
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->J0()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v14

    .line 355
    const/4 v15, 0x1

    .line 356
    const/4 v11, 0x0

    .line 357
    const/4 v12, 0x0

    .line 358
    const/4 v13, 0x0

    .line 359
    move-object/from16 v28, v9

    .line 360
    .line 361
    move-object v9, v3

    .line 362
    move-object v3, v8

    .line 363
    move-object/from16 v8, v28

    .line 364
    .line 365
    move-wide/from16 v28, v17

    .line 366
    .line 367
    move-wide/from16 v17, v4

    .line 368
    .line 369
    move-wide/from16 v4, v28

    .line 370
    .line 371
    invoke-static/range {v8 .. v15}, Lcom/mycompany/app/main/MainUtil;->T3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    if-nez v8, :cond_18

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_18
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    add-long v11, v22, v26

    .line 384
    .line 385
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v3, "-"

    .line 389
    .line 390
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    cmp-long v3, v24, v4

    .line 394
    .line 395
    if-lez v3, :cond_19

    .line 396
    .line 397
    add-long v22, v22, v24

    .line 398
    .line 399
    const-wide/16 v11, 0x1

    .line 400
    .line 401
    sub-long v11, v22, v11

    .line 402
    .line 403
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    :cond_19
    const-string v3, "Accept-Ranges"

    .line 407
    .line 408
    const-string v11, "bytes"

    .line 409
    .line 410
    invoke-virtual {v8, v3, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const-string v3, "Range"

    .line 414
    .line 415
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    invoke-virtual {v8, v3, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const/4 v3, 0x1

    .line 423
    invoke-virtual {v8, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 430
    .line 431
    .line 432
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/16 v10, 0x1a0

    .line 434
    .line 435
    if-ne v3, v10, :cond_1a

    .line 436
    .line 437
    const/4 v12, 0x1

    .line 438
    goto :goto_e

    .line 439
    :catch_0
    :cond_1a
    move/from16 v12, v19

    .line 440
    .line 441
    :goto_e
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 442
    .line 443
    .line 444
    :goto_f
    if-eqz v12, :cond_1c

    .line 445
    .line 446
    move/from16 v3, v19

    .line 447
    .line 448
    :goto_10
    iget v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 449
    .line 450
    if-ge v3, v8, :cond_1b

    .line 451
    .line 452
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 453
    .line 454
    invoke-static {v3, v7, v8}, Lcom/mycompany/app/main/MainDownSvc;->v(IILjava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 459
    .line 460
    invoke-static {v10, v8}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 461
    .line 462
    .line 463
    add-int/lit8 v3, v3, 0x1

    .line 464
    .line 465
    goto :goto_10

    .line 466
    :cond_1b
    iput-wide v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->F:J

    .line 467
    .line 468
    const/4 v3, 0x1

    .line 469
    iput v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 470
    .line 471
    iput v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 472
    .line 473
    :cond_1c
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    iput-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 480
    .line 481
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_1d

    .line 486
    .line 487
    const/4 v0, 0x4

    .line 488
    iput v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 489
    .line 490
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 491
    .line 492
    .line 493
    return-void

    .line 494
    :cond_1d
    iget-wide v13, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 495
    .line 496
    cmp-long v3, v13, v17

    .line 497
    .line 498
    if-nez v3, :cond_1e

    .line 499
    .line 500
    iget v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 501
    .line 502
    if-eq v3, v6, :cond_1f

    .line 503
    .line 504
    :cond_1e
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 505
    .line 506
    iget-wide v11, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 507
    .line 508
    iget v15, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 509
    .line 510
    invoke-static/range {v10 .. v15}, Lcom/mycompany/app/db/book/DbBookDown;->o(Landroid/content/Context;JJI)V

    .line 511
    .line 512
    .line 513
    :cond_1f
    iput-wide v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 514
    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 516
    .line 517
    .line 518
    move-result-wide v6

    .line 519
    iput-wide v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 520
    .line 521
    iput-wide v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 522
    .line 523
    iget-wide v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 524
    .line 525
    cmp-long v3, v6, v4

    .line 526
    .line 527
    if-lez v3, :cond_20

    .line 528
    .line 529
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 530
    .line 531
    if-eqz v3, :cond_20

    .line 532
    .line 533
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 534
    .line 535
    .line 536
    goto :goto_11

    .line 537
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 538
    .line 539
    .line 540
    :goto_11
    iget v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 541
    .line 542
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->y0(I)I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    new-instance v6, Lcom/mycompany/app/main/MainDownSvc$11;

    .line 547
    .line 548
    invoke-direct {v6, v1}, Lcom/mycompany/app/main/MainDownSvc$11;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 549
    .line 550
    .line 551
    move/from16 v4, v19

    .line 552
    .line 553
    :goto_12
    iget v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 554
    .line 555
    if-ge v4, v3, :cond_21

    .line 556
    .line 557
    move-object v3, v0

    .line 558
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$12;

    .line 559
    .line 560
    move-object v7, v3

    .line 561
    move-object v3, v9

    .line 562
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/main/MainDownSvc$12;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IILcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 566
    .line 567
    .line 568
    add-int/lit8 v4, v4, 0x1

    .line 569
    .line 570
    move-object v0, v7

    .line 571
    goto :goto_12

    .line 572
    :cond_21
    move-object v7, v0

    .line 573
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 574
    .line 575
    const/16 v3, 0xf

    .line 576
    .line 577
    if-ne v0, v3, :cond_22

    .line 578
    .line 579
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$13;

    .line 580
    .line 581
    invoke-direct {v0, v1, v2, v7, v6}, Lcom/mycompany/app/main/MainDownSvc$13;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 585
    .line 586
    .line 587
    :cond_22
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 588
    .line 589
    if-nez v0, :cond_23

    .line 590
    .line 591
    goto :goto_13

    .line 592
    :cond_23
    new-instance v3, Lcom/mycompany/app/main/MainDownSvc$30;

    .line 593
    .line 594
    invoke-direct {v3, v1, v2}, Lcom/mycompany/app/main/MainDownSvc$30;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 595
    .line 596
    .line 597
    const-wide/16 v4, 0x3e8

    .line 598
    .line 599
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    .line 601
    .line 602
    :cond_24
    :goto_13
    return-void
.end method

.method public final H(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/main/MainDownSvc$ParseItem;Ljava/util/List;)V
    .locals 10

    .line 1
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_d

    .line 8
    .line 9
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    if-eqz p4, :cond_c

    .line 26
    .line 27
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 40
    .line 41
    iget v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v7, 0x1

    .line 45
    if-ne v2, v7, :cond_6

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    iget-object v4, p3, Lcom/mycompany/app/main/MainDownSvc$ParseItem;->a:Ljava/lang/String;

    .line 51
    .line 52
    iget-boolean v8, p3, Lcom/mycompany/app/main/MainDownSvc$ParseItem;->b:Z

    .line 53
    .line 54
    iget-boolean v0, p3, Lcom/mycompany/app/main/MainDownSvc$ParseItem;->c:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v0, v2

    .line 58
    move v8, v0

    .line 59
    move-object v4, v3

    .line 60
    :goto_0
    if-eqz v8, :cond_5

    .line 61
    .line 62
    const-string v0, "a1"

    .line 63
    .line 64
    invoke-static {v4, v0}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v7, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2, v0, v7}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    const-string v0, "a2"

    .line 79
    .line 80
    invoke-static {v4, v0}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v2, v0, v4}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    :cond_4
    if-eqz v2, :cond_b

    .line 93
    .line 94
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    new-instance v3, Lcom/mycompany/app/down/DownParseM3u8;

    .line 99
    .line 100
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 101
    .line 102
    invoke-direct {v3, v4}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v7, Lcom/mycompany/app/main/MainDownSvc$16;

    .line 108
    .line 109
    invoke-direct {v7, p0, v3, p1, p4}, Lcom/mycompany/app/main/MainDownSvc$16;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0, v4, v2, v7}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    if-eqz v0, :cond_b

    .line 117
    .line 118
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne v0, v7, :cond_b

    .line 123
    .line 124
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_b

    .line 135
    .line 136
    const-string v4, "_mp4_hd.audio.mp4"

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_b

    .line 143
    .line 144
    const-string v3, "_mp4_hd.mp4"

    .line 145
    .line 146
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-interface {p4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    new-instance v3, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :cond_6
    const/4 v0, 0x2

    .line 164
    if-ne v2, v0, :cond_7

    .line 165
    .line 166
    if-eqz p2, :cond_b

    .line 167
    .line 168
    iget-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_b

    .line 175
    .line 176
    iget-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v2, Lcom/mycompany/app/down/DownParseM3u8;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 185
    .line 186
    invoke-direct {v2, v3}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    iget-object v7, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v8, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v9, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 194
    .line 195
    move-object v5, v0

    .line 196
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$17;

    .line 197
    .line 198
    move-object v1, p0

    .line 199
    move-object v3, p1

    .line 200
    move-object v4, p2

    .line 201
    move-object v6, p4

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/main/MainDownSvc$17;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/lang/String;Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    move-object v1, v2

    .line 206
    const/4 v2, 0x0

    .line 207
    move-object v3, v7

    .line 208
    move-object v4, v8

    .line 209
    move-object v6, v9

    .line 210
    move-object v7, v0

    .line 211
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/down/DownParseM3u8;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_7
    const/4 v0, 0x4

    .line 216
    if-ne v2, v0, :cond_8

    .line 217
    .line 218
    if-eqz p2, :cond_b

    .line 219
    .line 220
    iget-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseReddit;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    goto :goto_1

    .line 227
    :cond_8
    const/4 v0, 0x6

    .line 228
    if-ne v2, v0, :cond_9

    .line 229
    .line 230
    if-eqz p2, :cond_b

    .line 231
    .line 232
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 233
    .line 234
    iget-object v1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v3, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 239
    .line 240
    iget-object v4, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    move-object v5, p1

    .line 244
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseKakao;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    goto :goto_1

    .line 249
    :cond_9
    const/16 v0, 0x8

    .line 250
    .line 251
    if-ne v2, v0, :cond_a

    .line 252
    .line 253
    if-eqz p2, :cond_b

    .line 254
    .line 255
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 256
    .line 257
    iget-object v1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v3, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v4, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    move-object v5, p1

    .line 267
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseDzen;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    goto :goto_1

    .line 272
    :cond_a
    const/16 v0, 0xa

    .line 273
    .line 274
    if-ne v2, v0, :cond_b

    .line 275
    .line 276
    if-eqz p2, :cond_b

    .line 277
    .line 278
    iget-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->j:Lcom/google/gson/JsonObject;

    .line 279
    .line 280
    iget-object v1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v0, v1, v3, v7}, Lcom/mycompany/app/down/DownParseVimeo;->d(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    :cond_b
    :goto_1
    invoke-virtual {p0, p1, p4, v3}, Lcom/mycompany/app/main/MainDownSvc;->I(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_c
    :goto_2
    const/4 v0, 0x5

    .line 291
    iput v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 292
    .line 293
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 294
    .line 295
    .line 296
    :cond_d
    :goto_3
    return-void
.end method

.method public final I(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Ljava/util/List;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_14

    .line 14
    .line 15
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    iget-wide v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 32
    .line 33
    iget v5, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v7, v6

    .line 44
    :goto_0
    iput v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->x:I

    .line 45
    .line 46
    if-lez v7, :cond_3

    .line 47
    .line 48
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iput v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 56
    .line 57
    iget v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 58
    .line 59
    const/4 v9, 0x2

    .line 60
    const/4 v10, 0x1

    .line 61
    if-ge v8, v9, :cond_4

    .line 62
    .line 63
    iput v10, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 64
    .line 65
    :cond_4
    iget v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 66
    .line 67
    if-le v8, v7, :cond_5

    .line 68
    .line 69
    iput v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 70
    .line 71
    :cond_5
    iget v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 72
    .line 73
    div-int v11, v7, v8

    .line 74
    .line 75
    rem-int/2addr v7, v8

    .line 76
    if-eqz v7, :cond_6

    .line 77
    .line 78
    add-int/lit8 v11, v11, 0x1

    .line 79
    .line 80
    :cond_6
    const/4 v8, 0x4

    .line 81
    if-nez v11, :cond_7

    .line 82
    .line 83
    if-nez v7, :cond_7

    .line 84
    .line 85
    iput v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 86
    .line 87
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_7
    iget-object v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v7}, Lcom/mycompany/app/main/MainDownSvc;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    iput-object v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_8

    .line 104
    .line 105
    iput v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_8
    iget-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 112
    .line 113
    const-wide/16 v12, 0x0

    .line 114
    .line 115
    cmp-long v7, v7, v12

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    iget-object v7, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 120
    .line 121
    iget v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 122
    .line 123
    div-int/2addr v8, v9

    .line 124
    move-object/from16 v14, p2

    .line 125
    .line 126
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Ljava/lang/String;

    .line 131
    .line 132
    iget-object v15, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v7, v8, v15}, Lcom/mycompany/app/main/MainUtil;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    iget v15, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 139
    .line 140
    move/from16 v16, v9

    .line 141
    .line 142
    int-to-long v9, v15

    .line 143
    mul-long/2addr v7, v9

    .line 144
    iput-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 145
    .line 146
    iget v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->x:I

    .line 147
    .line 148
    if-lez v7, :cond_a

    .line 149
    .line 150
    iget-object v8, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 151
    .line 152
    div-int/lit8 v7, v7, 0x2

    .line 153
    .line 154
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v8, v0, v7}, Lcom/mycompany/app/main/MainUtil;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v7

    .line 166
    iput-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->E:J

    .line 167
    .line 168
    iget-wide v9, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 169
    .line 170
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->x:I

    .line 171
    .line 172
    int-to-long v12, v0

    .line 173
    mul-long/2addr v7, v12

    .line 174
    add-long/2addr v7, v9

    .line 175
    iput-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_9
    move-object/from16 v14, p2

    .line 179
    .line 180
    :cond_a
    :goto_1
    iget-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 181
    .line 182
    cmp-long v0, v7, v3

    .line 183
    .line 184
    if-nez v0, :cond_b

    .line 185
    .line 186
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 187
    .line 188
    if-eq v0, v5, :cond_c

    .line 189
    .line 190
    :cond_b
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 191
    .line 192
    iget-wide v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 193
    .line 194
    iget v5, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 195
    .line 196
    move-object/from16 v17, v0

    .line 197
    .line 198
    move-wide/from16 v18, v3

    .line 199
    .line 200
    move/from16 v22, v5

    .line 201
    .line 202
    move-wide/from16 v20, v7

    .line 203
    .line 204
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/book/DbBookDown;->o(Landroid/content/Context;JJI)V

    .line 205
    .line 206
    .line 207
    :cond_c
    iput v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    .line 208
    .line 209
    iput v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    .line 210
    .line 211
    const-wide/16 v3, 0x0

    .line 212
    .line 213
    iput-wide v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    .line 214
    .line 215
    iput-wide v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    .line 216
    .line 217
    iput-wide v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 218
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v7

    .line 223
    iput-wide v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 224
    .line 225
    iput-wide v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 228
    .line 229
    .line 230
    iput-boolean v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z

    .line 231
    .line 232
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 233
    .line 234
    const/4 v3, 0x1

    .line 235
    if-eq v0, v3, :cond_d

    .line 236
    .line 237
    goto/16 :goto_6

    .line 238
    .line 239
    :cond_d
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 240
    .line 241
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->y0(I)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    new-instance v7, Lcom/mycompany/app/main/MainDownSvc$18;

    .line 246
    .line 247
    invoke-direct {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$18;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 248
    .line 249
    .line 250
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 251
    .line 252
    iget-object v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->h:Ljava/util/List;

    .line 253
    .line 254
    if-eqz v4, :cond_e

    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-nez v4, :cond_e

    .line 261
    .line 262
    iget-object v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->h:Ljava/util/List;

    .line 263
    .line 264
    invoke-static {v6, v4}, Lcom/mycompany/app/down/DownSaveSplit;->c(ILjava/util/List;)Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    if-eqz v4, :cond_e

    .line 269
    .line 270
    iget-object v5, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v3, v5, v8}, Lcom/mycompany/app/down/DownSaveSplit;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    if-eqz v5, :cond_e

    .line 279
    .line 280
    iput-object v5, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 281
    .line 282
    iget-object v4, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_e
    const/4 v5, 0x0

    .line 286
    move-object v4, v5

    .line 287
    :goto_2
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->j:Ljava/util/List;

    .line 288
    .line 289
    if-eqz v8, :cond_10

    .line 290
    .line 291
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-nez v8, :cond_10

    .line 296
    .line 297
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->j:Ljava/util/List;

    .line 298
    .line 299
    invoke-static {v6, v8}, Lcom/mycompany/app/down/DownSaveSplit;->c(ILjava/util/List;)Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    if-eqz v8, :cond_10

    .line 304
    .line 305
    iget-object v9, v8, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v9, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eqz v4, :cond_f

    .line 312
    .line 313
    iput-object v5, v8, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_f
    iget-object v4, v8, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 317
    .line 318
    iget-object v5, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {v3, v4, v5}, Lcom/mycompany/app/down/DownSaveSplit;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    if-eqz v3, :cond_10

    .line 325
    .line 326
    iput-object v3, v8, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 327
    .line 328
    :cond_10
    :goto_3
    iget v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 329
    .line 330
    move v5, v6

    .line 331
    :goto_4
    if-ge v5, v8, :cond_12

    .line 332
    .line 333
    iget v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 334
    .line 335
    const/4 v9, 0x1

    .line 336
    if-eq v3, v9, :cond_11

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_11
    move v6, v0

    .line 340
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$19;

    .line 341
    .line 342
    move v4, v11

    .line 343
    move-object v3, v14

    .line 344
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/main/MainDownSvc$19;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 348
    .line 349
    .line 350
    add-int/lit8 v5, v5, 0x1

    .line 351
    .line 352
    move-object/from16 v14, p2

    .line 353
    .line 354
    move v0, v6

    .line 355
    goto :goto_4

    .line 356
    :cond_12
    :goto_5
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 357
    .line 358
    if-nez v0, :cond_13

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_13
    new-instance v3, Lcom/mycompany/app/main/MainDownSvc$30;

    .line 362
    .line 363
    invoke-direct {v3, v1, v2}, Lcom/mycompany/app/main/MainDownSvc$30;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 364
    .line 365
    .line 366
    const-wide/16 v4, 0x3e8

    .line 367
    .line 368
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    .line 370
    .line 371
    :cond_14
    :goto_6
    return-void
.end method

.method public final J(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public final K(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->a(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final L(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->f(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final M(IJ)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v6, v2, v4

    .line 8
    .line 9
    if-eqz v6, :cond_d

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object v7, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v7, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    sget-object v8, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    if-gtz v6, :cond_2

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string v7, "DbBookDown_table"

    .line 37
    .line 38
    invoke-static {v6, v7, v9, v2, v3}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    const-string v7, "_id"

    .line 51
    .line 52
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v10, "_secret"

    .line 57
    .line 58
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const-string v11, "_status"

    .line 63
    .line 64
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const-string v12, "_type"

    .line 69
    .line 70
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    const-string v13, "_url"

    .line 75
    .line 76
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const-string v14, "_rsv1"

    .line 81
    .line 82
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const-string v15, "_dir"

    .line 87
    .line 88
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    const-string v9, "_dname"

    .line 93
    .line 94
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    const-string v4, "_path"

    .line 99
    .line 100
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const-string v5, "_name"

    .line 105
    .line 106
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const-string v8, "_size"

    .line 111
    .line 112
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const-string v2, "_read"

    .line 117
    .line 118
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const-string v3, "_fast"

    .line 123
    .line 124
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    new-instance v0, Lcom/mycompany/app/main/MainUri$UriItem;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    iput-object v15, v0, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    iput-object v9, v0, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 144
    .line 145
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iput-object v4, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 150
    .line 151
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iput-object v4, v0, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    iput-wide v4, v0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 162
    .line 163
    new-instance v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 164
    .line 165
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .line 167
    .line 168
    :try_start_2
    iput-object v0, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 169
    .line 170
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    const/4 v8, 0x1

    .line 175
    if-ne v5, v8, :cond_3

    .line 176
    .line 177
    move v5, v8

    .line 178
    goto :goto_0

    .line 179
    :cond_3
    const/4 v5, 0x0

    .line 180
    :goto_0
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 181
    .line 182
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v9

    .line 186
    iput-wide v9, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 187
    .line 188
    const-wide/32 v15, 0x7ffffff3

    .line 189
    .line 190
    .line 191
    rem-long/2addr v9, v15

    .line 192
    long-to-int v5, v9

    .line 193
    add-int/2addr v5, v8

    .line 194
    iput v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 195
    .line 196
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    iput v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 201
    .line 202
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    iput v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 207
    .line 208
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    iput-object v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    iput-object v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v5, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 221
    .line 222
    iput-object v5, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 223
    .line 224
    iget-wide v7, v0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 225
    .line 226
    iput-wide v7, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 227
    .line 228
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v7

    .line 232
    iput-wide v7, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 233
    .line 234
    iget-object v0, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/mycompany/app/main/MainDownSvc;->s(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    iput v0, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 241
    .line 242
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    iput v0, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 247
    .line 248
    const/4 v0, 0x0

    .line 249
    iput-boolean v0, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    .line 251
    move-object v9, v4

    .line 252
    goto :goto_3

    .line 253
    :catch_0
    move-object/from16 v16, v4

    .line 254
    .line 255
    move-object v9, v6

    .line 256
    goto :goto_2

    .line 257
    :catch_1
    move-object v9, v6

    .line 258
    :goto_1
    const/16 v16, 0x0

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_4
    const/4 v9, 0x0

    .line 262
    goto :goto_3

    .line 263
    :catch_2
    const/4 v9, 0x0

    .line 264
    goto :goto_1

    .line 265
    :goto_2
    move-object v6, v9

    .line 266
    move-object/from16 v9, v16

    .line 267
    .line 268
    :goto_3
    if-eqz v6, :cond_5

    .line 269
    .line 270
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    .line 272
    .line 273
    :catch_3
    :cond_5
    :goto_4
    if-nez v9, :cond_6

    .line 274
    .line 275
    goto/16 :goto_7

    .line 276
    .line 277
    :cond_6
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 278
    .line 279
    monitor-enter v2

    .line 280
    :try_start_4
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 281
    .line 282
    if-eqz v0, :cond_8

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    const/4 v4, 0x0

    .line 289
    :cond_7
    if-ge v4, v3, :cond_8

    .line 290
    .line 291
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    add-int/lit8 v4, v4, 0x1

    .line 296
    .line 297
    check-cast v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 298
    .line 299
    if-eqz v5, :cond_7

    .line 300
    .line 301
    iget-wide v5, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 302
    .line 303
    iget-wide v7, v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 304
    .line 305
    cmp-long v5, v5, v7

    .line 306
    .line 307
    if-nez v5, :cond_7

    .line 308
    .line 309
    monitor-exit v2

    .line 310
    goto :goto_7

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    goto :goto_6

    .line 313
    :cond_8
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 314
    .line 315
    if-nez v0, :cond_9

    .line 316
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .line 321
    .line 322
    iput-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 323
    .line 324
    :cond_9
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    const-wide/16 v3, 0x0

    .line 330
    .line 331
    iput-wide v3, v1, Lcom/mycompany/app/main/MainDownSvc;->z:J

    .line 332
    .line 333
    const/4 v0, 0x2

    .line 334
    move/from16 v3, p1

    .line 335
    .line 336
    if-ne v3, v0, :cond_a

    .line 337
    .line 338
    move-wide/from16 v3, p2

    .line 339
    .line 340
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/main/MainDownSvc;->U(J)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_a
    move-wide/from16 v3, p2

    .line 345
    .line 346
    const/4 v0, 0x0

    .line 347
    invoke-virtual {v1, v3, v4, v0}, Lcom/mycompany/app/main/MainDownSvc;->S(JZ)V

    .line 348
    .line 349
    .line 350
    :goto_5
    invoke-virtual {v1, v9}, Lcom/mycompany/app/main/MainDownSvc;->Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 354
    .line 355
    if-nez v0, :cond_b

    .line 356
    .line 357
    monitor-exit v2

    .line 358
    goto :goto_7

    .line 359
    :cond_b
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget v3, v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 364
    .line 365
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v9}, Lcom/mycompany/app/main/MainDownSvc;->g(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 369
    .line 370
    .line 371
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 372
    .line 373
    invoke-static {v3}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    if-eqz v3, :cond_c

    .line 378
    .line 379
    iget v4, v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 380
    .line 381
    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 382
    .line 383
    .line 384
    :cond_c
    const/4 v0, 0x0

    .line 385
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->L(Z)V

    .line 386
    .line 387
    .line 388
    monitor-exit v2

    .line 389
    goto :goto_7

    .line 390
    :goto_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    throw v0

    .line 392
    :cond_d
    :goto_7
    return-void
.end method

.method public final N(JZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v1, :cond_b

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :cond_2
    :goto_0
    if-ge v4, v2, :cond_a

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    check-cast v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    iget-wide v6, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 43
    .line 44
    cmp-long v6, v6, p1

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-eqz p3, :cond_4

    .line 50
    .line 51
    const/4 p1, 0x3

    .line 52
    iput p1, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_6

    .line 57
    :cond_4
    const/4 p1, 0x6

    .line 58
    iput p1, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 59
    .line 60
    :goto_1
    iget-object p1, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->T:Lcom/mycompany/app/torrent/TorrentStream;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/mycompany/app/torrent/TorrentStream;->d()V

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-virtual {p0, v5}, Lcom/mycompany/app/main/MainDownSvc;->x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    iget-wide v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 100
    .line 101
    iget-wide v6, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 102
    .line 103
    cmp-long v1, v1, v6

    .line 104
    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 109
    .line 110
    .line 111
    add-int/lit8 p2, p2, -0x1

    .line 112
    .line 113
    :cond_8
    if-lez p2, :cond_9

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-lez p2, :cond_9

    .line 120
    .line 121
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainDownSvc;->j()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_9
    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p0, v3}, Lcom/mycompany/app/main/MainDownSvc;->V(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    :catch_0
    :cond_a
    :goto_3
    :try_start_2
    monitor-exit v0

    .line 134
    :goto_4
    return-void

    .line 135
    :cond_b
    :goto_5
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    throw p1
.end method

.method public final O()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->k:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->M:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->M:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->c:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_1
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainDownSvc;->A:Z

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->A:Z

    .line 32
    .line 33
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const v3, 0x7ffffffe

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainDownSvc;->w()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 60
    .line 61
    iput-object v2, v1, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 62
    .line 63
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainApp;->w:Z

    .line 64
    .line 65
    iget-object v0, v1, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->c()V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->q:Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;

    .line 80
    .line 81
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 82
    .line 83
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->Q:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->R:Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    return-void

    .line 96
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    throw v0
.end method

.method public final P(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$10;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/main/MainDownSvc$10;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Q(ZZ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainDownSvc;->m:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v5, v3

    .line 28
    :goto_0
    if-nez v5, :cond_2

    .line 29
    .line 30
    iget-boolean v6, v1, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 31
    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->V(Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-object v6, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 39
    .line 40
    if-nez v6, :cond_3

    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :cond_3
    iput-boolean v4, v1, Lcom/mycompany/app/main/MainDownSvc;->m:Z

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 48
    .line 49
    if-nez v7, :cond_4

    .line 50
    .line 51
    sput-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 52
    .line 53
    const/16 v7, 0xe

    .line 54
    .line 55
    const-string v8, "mCheckDown"

    .line 56
    .line 57
    invoke-static {v7, v6, v8, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object v6, v1, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v6

    .line 63
    :try_start_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainDownSvc;->b0()V

    .line 64
    .line 65
    .line 66
    if-eqz v5, :cond_b

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    move v7, v3

    .line 73
    :goto_2
    if-ge v7, v5, :cond_b

    .line 74
    .line 75
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    check-cast v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 82
    .line 83
    if-nez v8, :cond_5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 87
    .line 88
    const/4 v10, 0x2

    .line 89
    if-ne v9, v4, :cond_9

    .line 90
    .line 91
    iput-boolean v4, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    const/4 v9, 0x6

    .line 96
    iput v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 97
    .line 98
    iget-object v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->T:Lcom/mycompany/app/torrent/TorrentStream;

    .line 99
    .line 100
    if-eqz v9, :cond_6

    .line 101
    .line 102
    invoke-virtual {v9}, Lcom/mycompany/app/torrent/TorrentStream;->d()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto :goto_5

    .line 108
    :cond_6
    :goto_3
    iget-object v11, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 109
    .line 110
    iget-wide v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 111
    .line 112
    iget-object v12, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    const/4 v14, 0x1

    .line 119
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/book/DbBookDown;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    iget-object v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_7
    iput v10, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 129
    .line 130
    iget-object v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->T:Lcom/mycompany/app/torrent/TorrentStream;

    .line 131
    .line 132
    if-eqz v9, :cond_8

    .line 133
    .line 134
    invoke-virtual {v9}, Lcom/mycompany/app/torrent/TorrentStream;->b()V

    .line 135
    .line 136
    .line 137
    :cond_8
    iget-object v9, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 138
    .line 139
    iget-wide v10, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 140
    .line 141
    iget-wide v12, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 142
    .line 143
    iget-wide v14, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 144
    .line 145
    const/16 v16, 0x1

    .line 146
    .line 147
    invoke-static/range {v9 .. v16}, Lcom/mycompany/app/db/book/DbBookDown;->n(Landroid/content/Context;JJJZ)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    if-ne v9, v10, :cond_a

    .line 152
    .line 153
    iget-boolean v9, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 154
    .line 155
    if-eqz v9, :cond_a

    .line 156
    .line 157
    iput-boolean v4, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 158
    .line 159
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 160
    .line 161
    iget-wide v11, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 162
    .line 163
    const-wide/16 v15, 0x0

    .line 164
    .line 165
    const/16 v17, 0x1

    .line 166
    .line 167
    const-wide/16 v13, 0x0

    .line 168
    .line 169
    invoke-static/range {v10 .. v17}, Lcom/mycompany/app/db/book/DbBookDown;->n(Landroid/content/Context;JJJZ)V

    .line 170
    .line 171
    .line 172
    :cond_a
    :goto_4
    invoke-virtual {v1, v8}, Lcom/mycompany/app/main/MainDownSvc;->x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 173
    .line 174
    .line 175
    iput-boolean v3, v8, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_b
    invoke-virtual {v1, v4}, Lcom/mycompany/app/main/MainDownSvc;->L(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->V(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    :catch_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainDownSvc;->m:Z

    .line 186
    .line 187
    return-void

    .line 188
    :goto_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    throw v0
.end method

.method public final S(JZ)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_8

    .line 15
    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/mycompany/app/main/MainDownSvc;->z:J

    .line 22
    .line 23
    sub-long v3, v1, v3

    .line 24
    .line 25
    const-wide/16 v5, 0x1f4

    .line 26
    .line 27
    cmp-long v0, v3, v5

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    iput-wide v1, p0, Lcom/mycompany/app/main/MainDownSvc;->z:J

    .line 34
    .line 35
    iget-object v9, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v9

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v10, 0x0

    .line 45
    move v2, v10

    .line 46
    :goto_0
    const/4 v11, 0x1

    .line 47
    if-ge v2, v1, :cond_b

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    move-object v12, v3

    .line 56
    check-cast v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 57
    .line 58
    if-eqz v12, :cond_a

    .line 59
    .line 60
    iget-wide v3, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 61
    .line 62
    cmp-long v3, v3, p1

    .line 63
    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v0, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    iget-boolean v0, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    :cond_3
    move-wide v3, p1

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    const/4 v0, 0x2

    .line 78
    if-eqz p3, :cond_8

    .line 79
    .line 80
    iget v1, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 81
    .line 82
    if-ne v1, v11, :cond_7

    .line 83
    .line 84
    iput-boolean v11, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 85
    .line 86
    iput v0, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 87
    .line 88
    iget-object v0, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->T:Lcom/mycompany/app/torrent/TorrentStream;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/torrent/TorrentStream;->b()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_7

    .line 98
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 99
    .line 100
    iget-wide v4, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 101
    .line 102
    iget-wide v6, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 103
    .line 104
    move-wide v2, p1

    .line 105
    move/from16 v8, p3

    .line 106
    .line 107
    invoke-static/range {v1 .. v8}, Lcom/mycompany/app/db/book/DbBookDown;->n(Landroid/content/Context;JJJZ)V

    .line 108
    .line 109
    .line 110
    iget v0, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 111
    .line 112
    invoke-virtual {p0, v0, p1, p2}, Lcom/mycompany/app/main/MainDownSvc;->K(IJ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v12}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    move-wide v3, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_7
    move-wide v3, p1

    .line 121
    goto :goto_2

    .line 122
    :cond_8
    move-wide v2, p1

    .line 123
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 124
    .line 125
    iget v4, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 126
    .line 127
    if-ne v4, v0, :cond_6

    .line 128
    .line 129
    iput-boolean v11, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 130
    .line 131
    iput v11, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 132
    .line 133
    iput-boolean v10, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 134
    .line 135
    iget-wide v4, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 136
    .line 137
    iget-wide v6, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 138
    .line 139
    move/from16 v8, p3

    .line 140
    .line 141
    invoke-static/range {v1 .. v8}, Lcom/mycompany/app/db/book/DbBookDown;->n(Landroid/content/Context;JJJZ)V

    .line 142
    .line 143
    .line 144
    move-wide v3, v2

    .line 145
    iget v0, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 146
    .line 147
    invoke-virtual {p0, v0, p1, p2}, Lcom/mycompany/app/main/MainDownSvc;->K(IJ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v12}, Lcom/mycompany/app/main/MainDownSvc;->P(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    iput-boolean v10, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 157
    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    new-instance v1, Lcom/mycompany/app/main/MainDownSvc$26;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainDownSvc$26;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_4
    move v10, v11

    .line 169
    goto :goto_5

    .line 170
    :cond_a
    move-wide v3, p1

    .line 171
    goto :goto_0

    .line 172
    :cond_b
    move-wide v3, p1

    .line 173
    :goto_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-nez v10, :cond_c

    .line 175
    .line 176
    if-nez p3, :cond_c

    .line 177
    .line 178
    invoke-virtual {p0, v11, p1, p2}, Lcom/mycompany/app/main/MainDownSvc;->M(IJ)V

    .line 179
    .line 180
    .line 181
    :cond_c
    :goto_6
    return-void

    .line 182
    :goto_7
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    throw v0

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    goto :goto_9

    .line 186
    :cond_d
    :goto_8
    :try_start_3
    monitor-exit v1

    .line 187
    return-void

    .line 188
    :goto_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    throw v0
.end method

.method public final T()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_8

    .line 8
    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :try_start_0
    const-string v4, "3"

    .line 11
    .line 12
    filled-new-array {v4}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "DbBookDown_table"

    .line 25
    .line 26
    const-string v8, "_status!=?"

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_6

    .line 41
    .line 42
    const-string v4, "_secret"

    .line 43
    .line 44
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "_status"

    .line 49
    .line 50
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "_url"

    .line 55
    .line 56
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "_rsv1"

    .line 61
    .line 62
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "_dir"

    .line 67
    .line 68
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "_dname"

    .line 73
    .line 74
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "_path"

    .line 79
    .line 80
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "_name"

    .line 85
    .line 86
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "_size"

    .line 91
    .line 92
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "_fast"

    .line 97
    .line 98
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    :cond_1
    :try_start_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    const/4 v15, 0x3

    .line 107
    if-eq v14, v15, :cond_2

    .line 108
    .line 109
    const/4 v15, 0x4

    .line 110
    if-eq v14, v15, :cond_2

    .line 111
    .line 112
    const/4 v15, 0x5

    .line 113
    if-ne v14, v15, :cond_3

    .line 114
    .line 115
    :cond_2
    move-object/from16 v16, v3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    new-instance v14, Lcom/mycompany/app/main/MainUri$UriItem;

    .line 119
    .line 120
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    iput-object v15, v14, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v15

    .line 133
    iput-object v15, v14, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    iput-object v15, v14, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    iput-object v15, v14, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .line 147
    move-object/from16 v16, v3

    .line 148
    .line 149
    :try_start_3
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    iput-wide v2, v14, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 154
    .line 155
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v14, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 161
    .line 162
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    const/4 v14, 0x1

    .line 167
    if-ne v3, v14, :cond_4

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    const/4 v14, 0x0

    .line 171
    :goto_0
    iput-boolean v14, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 172
    .line 173
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iput-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    iput v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 190
    .line 191
    if-nez v16, :cond_5

    .line 192
    .line 193
    new-instance v3, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :catch_0
    move-object/from16 v3, v16

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_5
    move-object/from16 v3, v16

    .line 203
    .line 204
    :goto_1
    :try_start_4
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catch_1
    move-object/from16 v16, v3

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :goto_2
    move-object/from16 v3, v16

    .line 212
    .line 213
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 214
    .line 215
    .line 216
    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 217
    if-nez v2, :cond_1

    .line 218
    .line 219
    :catch_2
    :cond_6
    :goto_4
    move-object v7, v3

    .line 220
    goto :goto_5

    .line 221
    :catch_3
    move-object v1, v3

    .line 222
    goto :goto_4

    .line 223
    :goto_5
    if-eqz v1, :cond_7

    .line 224
    .line 225
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 226
    .line 227
    .line 228
    :catch_4
    :cond_7
    if-eqz v7, :cond_a

    .line 229
    .line 230
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_8

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    const/4 v2, 0x0

    .line 242
    :goto_6
    if-ge v2, v8, :cond_a

    .line 243
    .line 244
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    add-int/lit8 v9, v2, 0x1

    .line 249
    .line 250
    check-cast v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 251
    .line 252
    if-nez v1, :cond_9

    .line 253
    .line 254
    :goto_7
    move v2, v9

    .line 255
    goto :goto_6

    .line 256
    :cond_9
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 257
    .line 258
    move-object v3, v2

    .line 259
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 260
    .line 261
    move-object v4, v3

    .line 262
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 263
    .line 264
    move-object v5, v4

    .line 265
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 266
    .line 267
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 268
    .line 269
    const/4 v6, 0x1

    .line 270
    move-object/from16 v17, v5

    .line 271
    .line 272
    move v5, v1

    .line 273
    move-object/from16 v1, v17

    .line 274
    .line 275
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/main/MainDownSvc;->i(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZZ)V

    .line 276
    .line 277
    .line 278
    move-object/from16 v0, p0

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_a
    :goto_8
    return-void
.end method

.method public final U(J)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/mycompany/app/main/MainDownSvc;->z:J

    .line 22
    .line 23
    sub-long v3, v1, v3

    .line 24
    .line 25
    const-wide/16 v5, 0x1f4

    .line 26
    .line 27
    cmp-long v0, v3, v5

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_1
    iput-wide v1, p0, Lcom/mycompany/app/main/MainDownSvc;->z:J

    .line 34
    .line 35
    iget-object v9, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v9

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v10, 0x0

    .line 45
    move v2, v10

    .line 46
    :goto_0
    if-ge v2, v1, :cond_7

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    move-object v11, v3

    .line 55
    check-cast v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 56
    .line 57
    if-eqz v11, :cond_6

    .line 58
    .line 59
    iget-wide v3, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 60
    .line 61
    cmp-long v3, v3, p1

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-boolean v0, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/main/MainDownSvc$29;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainDownSvc$29;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_3
    move-wide v3, p1

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_5

    .line 87
    :cond_4
    iget v0, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 88
    .line 89
    if-eq v0, v12, :cond_5

    .line 90
    .line 91
    iput-boolean v12, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 92
    .line 93
    iput v12, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 94
    .line 95
    iput-boolean v10, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 96
    .line 97
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 98
    .line 99
    iget-wide v4, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 100
    .line 101
    iget-wide v6, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    move-wide v2, p1

    .line 105
    invoke-static/range {v1 .. v8}, Lcom/mycompany/app/db/book/DbBookDown;->n(Landroid/content/Context;JJJZ)V

    .line 106
    .line 107
    .line 108
    move-wide v3, v2

    .line 109
    iget v0, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 110
    .line 111
    invoke-virtual {p0, v0, p1, p2}, Lcom/mycompany/app/main/MainDownSvc;->K(IJ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v11}, Lcom/mycompany/app/main/MainDownSvc;->P(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move-wide v3, p1

    .line 119
    :goto_1
    iput-boolean v10, v11, Lcom/mycompany/app/main/MainDownSvc$DownItem;->H:Z

    .line 120
    .line 121
    :goto_2
    move v10, v12

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move-wide v3, p1

    .line 124
    goto :goto_0

    .line 125
    :cond_7
    move-wide v3, p1

    .line 126
    :goto_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-nez v10, :cond_8

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    invoke-virtual {p0, v0, p1, p2}, Lcom/mycompany/app/main/MainDownSvc;->M(IJ)V

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_4
    return-void

    .line 134
    :goto_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    throw v0

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    goto :goto_7

    .line 138
    :cond_9
    :goto_6
    :try_start_3
    monitor-exit v1

    .line 139
    return-void

    .line 140
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    throw v0
.end method

.method public final V(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->l:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainDownSvc;->n:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->n:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->n:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainDownSvc;->T:Z

    .line 27
    .line 28
    new-instance p1, Lcom/mycompany/app/main/MainDownSvc$5;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainDownSvc$5;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public final W(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mycompany/app/main/MainDownSvc;->p:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->S:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    iput-wide v2, p0, Lcom/mycompany/app/main/MainDownSvc;->p:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iput-wide v2, p0, Lcom/mycompany/app/main/MainDownSvc;->p:J

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const-wide/32 v2, 0x927c0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public final X(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/4 v1, 0x0

    .line 23
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/MainDownSvc;->m(Lcom/mycompany/app/main/MainDownSvc$DownItem;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    new-instance v3, Landroid/content/Intent;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 42
    .line 43
    const-class v5, Lcom/mycompany/app/main/list/MainListDown;

    .line 44
    .line 45
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "EXTRA_ID"

    .line 49
    .line 50
    iget-wide v5, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const/high16 v4, 0x10000000

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/high16 v6, 0xc000000

    .line 67
    .line 68
    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 75
    .line 76
    const-string v6, "Download"

    .line 77
    .line 78
    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_white_24:I

    .line 82
    .line 83
    iget-object v7, v4, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 84
    .line 85
    iput v5, v7, Landroid/app/Notification;->icon:I

    .line 86
    .line 87
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 102
    .line 103
    iput-object v3, v4, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    iput v1, v4, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 107
    .line 108
    const-string v1, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 109
    .line 110
    iput-object v1, v4, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 113
    .line 114
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_error_gray_20:I

    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B3(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget p1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 134
    .line 135
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 136
    .line 137
    .line 138
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    const/16 v2, 0x1a

    .line 141
    .line 142
    if-lt p1, v2, :cond_5

    .line 143
    .line 144
    new-instance p1, Landroid/app/NotificationChannel;

    .line 145
    .line 146
    sget p1, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v2, Landroid/app/NotificationChannel;

    .line 153
    .line 154
    const/4 v3, 0x2

    .line 155
    invoke-direct {v2, v6, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    const p1, 0x7ffffffd

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v2, :cond_c

    .line 8
    .line 9
    if-eqz v1, :cond_c

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 12
    .line 13
    if-eqz v2, :cond_c

    .line 14
    .line 15
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 16
    .line 17
    if-gtz v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 42
    .line 43
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 44
    .line 45
    const-class v5, Lcom/mycompany/app/main/list/MainListDown;

    .line 46
    .line 47
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    const-string v4, "EXTRA_ID"

    .line 51
    .line 52
    iget-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 53
    .line 54
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const/high16 v4, 0x10000000

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/high16 v6, 0xc000000

    .line 69
    .line 70
    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 75
    .line 76
    iput v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->d:I

    .line 77
    .line 78
    const/4 v5, 0x2

    .line 79
    const-string v6, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 80
    .line 81
    const-string v7, "Download"

    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    if-ne v4, v5, :cond_4

    .line 85
    .line 86
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 87
    .line 88
    iget-object v9, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 89
    .line 90
    invoke-direct {v4, v9, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->baseline_file_download_white_24:I

    .line 94
    .line 95
    iget-object v10, v4, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 96
    .line 97
    iput v9, v10, Landroid/app/Notification;->icon:I

    .line 98
    .line 99
    iget-object v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 100
    .line 101
    iget-object v9, v9, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    iput-object v9, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 108
    .line 109
    iget-boolean v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 110
    .line 111
    if-eqz v9, :cond_3

    .line 112
    .line 113
    sget v9, Lnet/kaki87/soul2/testing/R$string;->reserved:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    sget v9, Lnet/kaki87/soul2/testing/R$string;->paused:I

    .line 117
    .line 118
    :goto_0
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iput-object v9, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 127
    .line 128
    iput-object v3, v4, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 129
    .line 130
    iput v8, v4, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 131
    .line 132
    iput-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->p(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 146
    .line 147
    .line 148
    iput-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_4
    const/4 v9, 0x4

    .line 153
    if-eq v4, v9, :cond_9

    .line 154
    .line 155
    const/4 v9, 0x5

    .line 156
    if-ne v4, v9, :cond_5

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :cond_5
    iget-boolean v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z

    .line 161
    .line 162
    const/4 v9, 0x0

    .line 163
    const/16 v10, 0x64

    .line 164
    .line 165
    const-string v11, ""

    .line 166
    .line 167
    if-eqz v4, :cond_6

    .line 168
    .line 169
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 170
    .line 171
    iget-object v12, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 172
    .line 173
    invoke-direct {v4, v12, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->ic_download:I

    .line 177
    .line 178
    iget-object v13, v4, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 179
    .line 180
    iput v12, v13, Landroid/app/Notification;->icon:I

    .line 181
    .line 182
    iget-object v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 183
    .line 184
    iget-object v12, v12, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v12}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    iput-object v12, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 191
    .line 192
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    iput-object v11, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 197
    .line 198
    invoke-virtual {v4, v10, v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 199
    .line 200
    .line 201
    iput-object v3, v4, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 202
    .line 203
    iput v8, v4, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 204
    .line 205
    iput-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->p(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 219
    .line 220
    .line 221
    iput-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :cond_6
    iget-wide v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 226
    .line 227
    const-wide/16 v14, 0x0

    .line 228
    .line 229
    cmp-long v4, v12, v14

    .line 230
    .line 231
    if-nez v4, :cond_7

    .line 232
    .line 233
    move-wide/from16 v16, v14

    .line 234
    .line 235
    iget-wide v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 236
    .line 237
    cmp-long v4, v14, v16

    .line 238
    .line 239
    if-lez v4, :cond_7

    .line 240
    .line 241
    move v9, v8

    .line 242
    :cond_7
    iput-boolean v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 243
    .line 244
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 245
    .line 246
    iget-object v4, v4, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 247
    .line 248
    if-nez v9, :cond_8

    .line 249
    .line 250
    iget-wide v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 251
    .line 252
    long-to-float v9, v14

    .line 253
    const/high16 v14, 0x42c80000    # 100.0f

    .line 254
    .line 255
    mul-float/2addr v9, v14

    .line 256
    long-to-float v12, v12

    .line 257
    div-float/2addr v9, v12

    .line 258
    goto :goto_1

    .line 259
    :cond_8
    const/4 v9, 0x0

    .line 260
    :goto_1
    new-instance v12, Landroidx/core/app/NotificationCompat$Builder;

    .line 261
    .line 262
    iget-object v13, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 263
    .line 264
    invoke-direct {v12, v13, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->ic_download:I

    .line 268
    .line 269
    iget-object v14, v12, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 270
    .line 271
    iput v13, v14, Landroid/app/Notification;->icon:I

    .line 272
    .line 273
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    iput-object v4, v12, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 278
    .line 279
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    iput-object v4, v12, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 284
    .line 285
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    iget-boolean v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 290
    .line 291
    invoke-virtual {v12, v10, v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 292
    .line 293
    .line 294
    iput-object v3, v12, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 295
    .line 296
    iput v8, v12, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 297
    .line 298
    iput-object v6, v12, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->p(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 312
    .line 313
    .line 314
    iput-object v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_9
    :goto_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainDownSvc;->m(Lcom/mycompany/app/main/MainDownSvc$DownItem;)I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    .line 322
    .line 323
    iget-object v10, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 324
    .line 325
    invoke-direct {v9, v10, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_white_24:I

    .line 329
    .line 330
    iget-object v11, v9, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 331
    .line 332
    iput v10, v11, Landroid/app/Notification;->icon:I

    .line 333
    .line 334
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 335
    .line 336
    iget-object v10, v10, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v10}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    iput-object v10, v9, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 343
    .line 344
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    iput-object v4, v9, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 353
    .line 354
    iput-object v3, v9, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 355
    .line 356
    iput v8, v9, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 357
    .line 358
    iput-object v6, v9, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->q(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 372
    .line 373
    .line 374
    iput-object v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 375
    .line 376
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 377
    .line 378
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_error_gray_20:I

    .line 379
    .line 380
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->B3(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_a

    .line 389
    .line 390
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 391
    .line 392
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 393
    .line 394
    .line 395
    :cond_a
    :goto_3
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 396
    .line 397
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 402
    .line 403
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 404
    .line 405
    .line 406
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 407
    .line 408
    const/16 v6, 0x1a

    .line 409
    .line 410
    if-lt v4, v6, :cond_b

    .line 411
    .line 412
    new-instance v4, Landroid/app/NotificationChannel;

    .line 413
    .line 414
    sget v4, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 415
    .line 416
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    new-instance v6, Landroid/app/NotificationChannel;

    .line 421
    .line 422
    invoke-direct {v6, v7, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 426
    .line 427
    .line 428
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->g(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 429
    .line 430
    .line 431
    iget v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 432
    .line 433
    invoke-virtual {v2, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 434
    .line 435
    .line 436
    :cond_c
    :goto_4
    return-void
.end method

.method public final Z()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainDownSvc;->y:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->q:Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    invoke-interface {v0}, Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final a0(Ljava/util/List;Z)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    :goto_0
    move-object v3, p0

    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->D:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_6

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->D:Ljava/lang/String;

    .line 56
    .line 57
    :cond_6
    move-object v5, v0

    .line 58
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 60
    .line 61
    iget v1, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 62
    .line 63
    iput v1, p0, Lcom/mycompany/app/main/MainDownSvc;->H:I

    .line 64
    .line 65
    iget v2, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 66
    .line 67
    iput v2, p0, Lcom/mycompany/app/main/MainDownSvc;->I:I

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/mycompany/app/main/MainDownSvc;->K:J

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    if-nez v1, :cond_e

    .line 75
    .line 76
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 77
    .line 78
    if-nez v1, :cond_7

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_7
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_8

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_8
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 91
    .line 92
    const v4, 0x7ffffffc

    .line 93
    .line 94
    .line 95
    if-eqz v3, :cond_9

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 98
    .line 99
    .line 100
    :cond_9
    iget v3, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 101
    .line 102
    if-gez v3, :cond_a

    .line 103
    .line 104
    iput v2, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 105
    .line 106
    :cond_a
    iget v3, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 107
    .line 108
    iget v6, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 109
    .line 110
    if-le v3, v6, :cond_b

    .line 111
    .line 112
    iput v6, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 113
    .line 114
    :cond_b
    iget v3, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 115
    .line 116
    if-le v3, v6, :cond_c

    .line 117
    .line 118
    iput v6, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 119
    .line 120
    :cond_c
    new-instance v3, Landroid/content/Intent;

    .line 121
    .line 122
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 123
    .line 124
    const-class v7, Lcom/mycompany/app/main/list/MainListDown;

    .line 125
    .line 126
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .line 128
    .line 129
    const/high16 v6, 0x10000000

    .line 130
    .line 131
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    const/high16 v8, 0xc000000

    .line 141
    .line 142
    invoke-static {v6, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-instance v6, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v7, "net.kaki87.soul2.testing.ACTION_IMAGE_CANCEL"

    .line 149
    .line 150
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    iget-object v7, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    invoke-static {v7, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    new-instance v7, Landroidx/core/app/NotificationCompat$Action;

    .line 171
    .line 172
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 173
    .line 174
    sget v9, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 175
    .line 176
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-direct {v7, v8, v9, v6}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    .line 182
    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    iget v8, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 189
    .line 190
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v8, " / "

    .line 194
    .line 195
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v8, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 199
    .line 200
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v8, " - "

    .line 204
    .line 205
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    sget v8, Lnet/kaki87/soul2/testing/R$string;->down_image:I

    .line 209
    .line 210
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    sget v9, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 223
    .line 224
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v9, " ("

    .line 232
    .line 233
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget v10, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 237
    .line 238
    iget v11, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 239
    .line 240
    sub-int/2addr v10, v11

    .line 241
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v10, ")  "

    .line 245
    .line 246
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    sget v10, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 250
    .line 251
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget v9, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 262
    .line 263
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v9, ")"

    .line 267
    .line 268
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    .line 272
    .line 273
    iget-object v10, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 274
    .line 275
    const-string v11, "Download"

    .line 276
    .line 277
    invoke-direct {v9, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->ic_download:I

    .line 281
    .line 282
    iget-object v12, v9, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 283
    .line 284
    iput v10, v12, Landroid/app/Notification;->icon:I

    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    iput-object v6, v9, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    iput-object v6, v9, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 305
    .line 306
    iget v6, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 307
    .line 308
    iget v8, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 309
    .line 310
    invoke-virtual {v9, v6, v8, v2}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 311
    .line 312
    .line 313
    iput-object v3, v9, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 314
    .line 315
    iput v0, v9, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 316
    .line 317
    const-string v3, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 318
    .line 319
    iput-object v3, v9, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 322
    .line 323
    .line 324
    iput-object v9, p0, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 325
    .line 326
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 331
    .line 332
    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 334
    .line 335
    const/16 v6, 0x1a

    .line 336
    .line 337
    if-lt v0, v6, :cond_d

    .line 338
    .line 339
    new-instance v0, Landroid/app/NotificationChannel;

    .line 340
    .line 341
    sget v0, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 342
    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    new-instance v6, Landroid/app/NotificationChannel;

    .line 348
    .line 349
    const/4 v7, 0x2

    .line 350
    invoke-direct {v6, v11, v0, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 354
    .line 355
    .line 356
    :cond_d
    invoke-virtual {v1, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 360
    .line 361
    .line 362
    move-result-wide v0

    .line 363
    iput-wide v0, p0, Lcom/mycompany/app/main/MainDownSvc;->J:J

    .line 364
    .line 365
    :cond_e
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    const/16 v1, 0xa

    .line 370
    .line 371
    if-le v1, v0, :cond_f

    .line 372
    .line 373
    move v7, v0

    .line 374
    goto :goto_2

    .line 375
    :cond_f
    move v7, v1

    .line 376
    :goto_2
    div-int v1, v0, v7

    .line 377
    .line 378
    rem-int/2addr v0, v7

    .line 379
    if-eqz v0, :cond_10

    .line 380
    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 382
    .line 383
    :cond_10
    move v6, v1

    .line 384
    new-instance v10, Lcom/mycompany/app/main/MainDownSvc$32;

    .line 385
    .line 386
    invoke-direct {v10, p0}, Lcom/mycompany/app/main/MainDownSvc$32;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 387
    .line 388
    .line 389
    move v8, v2

    .line 390
    :goto_3
    if-ge v8, v7, :cond_0

    .line 391
    .line 392
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 393
    .line 394
    if-nez v0, :cond_11

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_11
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$33;

    .line 399
    .line 400
    move-object v3, p0

    .line 401
    move-object v4, p1

    .line 402
    move v9, p2

    .line 403
    invoke-direct/range {v2 .. v10}, Lcom/mycompany/app/main/MainDownSvc$33;-><init>(Lcom/mycompany/app/main/MainDownSvc;Ljava/util/List;Ljava/lang/String;IIIZLcom/mycompany/app/main/MainDownSvc$DownImageListener;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, v2}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 407
    .line 408
    .line 409
    add-int/lit8 v8, v8, 0x1

    .line 410
    .line 411
    goto :goto_3

    .line 412
    :goto_4
    return-void
.end method

.method public final b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->C:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 15
    .line 16
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->H:I

    .line 19
    .line 20
    iput v0, p0, Lcom/mycompany/app/main/MainDownSvc;->I:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->D:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->D:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const v1, 0x7ffffffc

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final c0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v2, :cond_18

    .line 8
    .line 9
    if-eqz v1, :cond_18

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 12
    .line 13
    if-eqz v2, :cond_18

    .line 14
    .line 15
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_0
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    if-ne v2, v4, :cond_1

    .line 25
    .line 26
    iput v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->d:I

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 33
    .line 34
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 35
    .line 36
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 41
    .line 42
    const-wide/16 v8, 0x0

    .line 43
    .line 44
    cmp-long v2, v6, v8

    .line 45
    .line 46
    const/4 v10, 0x1

    .line 47
    const/4 v11, 0x0

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    cmp-long v12, v4, v8

    .line 51
    .line 52
    if-lez v12, :cond_2

    .line 53
    .line 54
    move v12, v10

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v12, v11

    .line 57
    :goto_0
    iget-boolean v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z

    .line 58
    .line 59
    if-nez v13, :cond_4

    .line 60
    .line 61
    iget v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->d:I

    .line 62
    .line 63
    iget v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 64
    .line 65
    if-ne v13, v14, :cond_4

    .line 66
    .line 67
    iget-boolean v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 68
    .line 69
    if-eq v13, v12, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v13, v11

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :goto_1
    move v13, v10

    .line 75
    :goto_2
    iget v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 76
    .line 77
    iput v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->d:I

    .line 78
    .line 79
    iput-boolean v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 80
    .line 81
    iput-boolean v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    const-string v15, " / "

    .line 84
    .line 85
    move-wide/from16 v16, v8

    .line 86
    .line 87
    const-string v8, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 88
    .line 89
    const-string v9, "Download"

    .line 90
    .line 91
    const-string v3, "EXTRA_ID"

    .line 92
    .line 93
    const-class v11, Lcom/mycompany/app/main/list/MainListDown;

    .line 94
    .line 95
    move/from16 v20, v2

    .line 96
    .line 97
    const-string v2, "  "

    .line 98
    .line 99
    if-eq v14, v10, :cond_11

    .line 100
    .line 101
    const/4 v10, 0x7

    .line 102
    if-ne v14, v10, :cond_5

    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_5
    const/4 v6, 0x2

    .line 107
    if-ne v14, v6, :cond_9

    .line 108
    .line 109
    if-nez v13, :cond_6

    .line 110
    .line 111
    goto/16 :goto_a

    .line 112
    .line 113
    :cond_6
    :try_start_1
    iget-object v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 114
    .line 115
    iget-object v6, v6, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 116
    .line 117
    if-nez v12, :cond_7

    .line 118
    .line 119
    iget-wide v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 120
    .line 121
    sub-long v12, v4, v12

    .line 122
    .line 123
    cmp-long v7, v12, v16

    .line 124
    .line 125
    if-lez v7, :cond_8

    .line 126
    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-static {v7, v4, v5}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 139
    .line 140
    invoke-static {v7, v4, v5}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    goto :goto_3

    .line 154
    :cond_7
    iget-wide v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 155
    .line 156
    sub-long v12, v4, v12

    .line 157
    .line 158
    cmp-long v7, v12, v16

    .line 159
    .line 160
    if-lez v7, :cond_8

    .line 161
    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-static {v7, v4, v5}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    :cond_8
    :goto_3
    new-instance v2, Landroid/content/Intent;

    .line 181
    .line 182
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 183
    .line 184
    invoke-direct {v2, v4, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .line 186
    .line 187
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 188
    .line 189
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    const/high16 v3, 0x10000000

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 198
    .line 199
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    const/high16 v5, 0xc000000

    .line 204
    .line 205
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 210
    .line 211
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 212
    .line 213
    invoke-direct {v3, v4, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_file_download_white_24:I

    .line 217
    .line 218
    iget-object v5, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 219
    .line 220
    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 221
    .line 222
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 227
    .line 228
    sget v4, Lnet/kaki87/soul2/testing/R$string;->paused:I

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 239
    .line 240
    const/4 v4, 0x0

    .line 241
    invoke-virtual {v3, v4, v4, v4}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 242
    .line 243
    .line 244
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 245
    .line 246
    const/4 v2, 0x1

    .line 247
    iput v2, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 248
    .line 249
    iput-object v8, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->p(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 263
    .line 264
    .line 265
    iput-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 266
    .line 267
    goto/16 :goto_8

    .line 268
    .line 269
    :cond_9
    const/4 v4, 0x3

    .line 270
    if-ne v14, v4, :cond_e

    .line 271
    .line 272
    if-nez v13, :cond_a

    .line 273
    .line 274
    goto/16 :goto_a

    .line 275
    .line 276
    :cond_a
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 277
    .line 278
    iget-object v4, v4, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 279
    .line 280
    if-lez v20, :cond_b

    .line 281
    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 288
    .line 289
    invoke-static {v5, v6, v7}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    :cond_b
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->P:Z

    .line 303
    .line 304
    if-eqz v2, :cond_c

    .line 305
    .line 306
    new-instance v2, Landroid/content/Intent;

    .line 307
    .line 308
    iget-object v5, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 309
    .line 310
    invoke-direct {v2, v5, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .line 312
    .line 313
    iget-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 314
    .line 315
    invoke-virtual {v2, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    const/high16 v3, 0x10000000

    .line 319
    .line 320
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_c
    new-instance v2, Landroid/content/Intent;

    .line 325
    .line 326
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 327
    .line 328
    const-class v5, Lcom/mycompany/app/main/MainLauncher;

    .line 329
    .line 330
    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .line 332
    .line 333
    const-string v3, "EXTRA_NOTI"

    .line 334
    .line 335
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 341
    .line 342
    iget-object v3, v3, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-nez v5, :cond_d

    .line 353
    .line 354
    const-string v5, "EXTRA_TYPE"

    .line 355
    .line 356
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    :cond_d
    const/high16 v3, 0x20000000

    .line 360
    .line 361
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    .line 363
    .line 364
    :goto_4
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 365
    .line 366
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    const/high16 v6, 0xc000000

    .line 371
    .line 372
    invoke-static {v3, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 377
    .line 378
    iget-object v5, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 379
    .line 380
    invoke-direct {v3, v5, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_done_white_24:I

    .line 384
    .line 385
    iget-object v6, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 386
    .line 387
    iput v5, v6, Landroid/app/Notification;->icon:I

    .line 388
    .line 389
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 394
    .line 395
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 396
    .line 397
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 406
    .line 407
    const/4 v4, 0x0

    .line 408
    invoke-virtual {v3, v4, v4, v4}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 409
    .line 410
    .line 411
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 412
    .line 413
    const/4 v2, 0x1

    .line 414
    iput v2, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 415
    .line 416
    iput-object v8, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 417
    .line 418
    iput-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 419
    .line 420
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 421
    .line 422
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_offline_pin_gray_20:I

    .line 423
    .line 424
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->B3(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-eqz v3, :cond_17

    .line 433
    .line 434
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 435
    .line 436
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_8

    .line 440
    .line 441
    :cond_e
    const/4 v2, 0x4

    .line 442
    if-eq v14, v2, :cond_f

    .line 443
    .line 444
    const/4 v2, 0x5

    .line 445
    if-ne v14, v2, :cond_17

    .line 446
    .line 447
    :cond_f
    if-nez v13, :cond_10

    .line 448
    .line 449
    goto/16 :goto_a

    .line 450
    .line 451
    :cond_10
    invoke-static {v1}, Lcom/mycompany/app/main/MainDownSvc;->m(Lcom/mycompany/app/main/MainDownSvc$DownItem;)I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    new-instance v4, Landroid/content/Intent;

    .line 456
    .line 457
    iget-object v5, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 458
    .line 459
    invoke-direct {v4, v5, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .line 461
    .line 462
    iget-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 463
    .line 464
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 465
    .line 466
    .line 467
    const/high16 v3, 0x10000000

    .line 468
    .line 469
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    .line 471
    .line 472
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 473
    .line 474
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    const/high16 v6, 0xc000000

    .line 479
    .line 480
    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 485
    .line 486
    iget-object v5, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 487
    .line 488
    invoke-direct {v4, v5, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_white_24:I

    .line 492
    .line 493
    iget-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 494
    .line 495
    iput v5, v6, Landroid/app/Notification;->icon:I

    .line 496
    .line 497
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 498
    .line 499
    iget-object v5, v5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 500
    .line 501
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    iput-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 506
    .line 507
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    iput-object v2, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 516
    .line 517
    const/4 v2, 0x0

    .line 518
    invoke-virtual {v4, v2, v2, v2}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 519
    .line 520
    .line 521
    iput-object v3, v4, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 522
    .line 523
    const/4 v2, 0x1

    .line 524
    iput v2, v4, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 525
    .line 526
    iput-object v8, v4, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->q(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 540
    .line 541
    .line 542
    iput-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 543
    .line 544
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 545
    .line 546
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_error_gray_20:I

    .line 547
    .line 548
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->B3(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    if-eqz v3, :cond_17

    .line 557
    .line 558
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 559
    .line 560
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_8

    .line 564
    .line 565
    :cond_11
    :goto_5
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 566
    .line 567
    iget-object v10, v10, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 568
    .line 569
    if-nez v12, :cond_14

    .line 570
    .line 571
    const/high16 v2, 0x42c80000    # 100.0f

    .line 572
    .line 573
    long-to-float v12, v4

    .line 574
    mul-float/2addr v12, v2

    .line 575
    long-to-float v2, v6

    .line 576
    div-float/2addr v12, v2

    .line 577
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 578
    .line 579
    sub-long v6, v4, v6

    .line 580
    .line 581
    cmp-long v2, v6, v16

    .line 582
    .line 583
    if-lez v2, :cond_15

    .line 584
    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 586
    .line 587
    .line 588
    move-result-wide v6

    .line 589
    move-wide/from16 v16, v6

    .line 590
    .line 591
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 592
    .line 593
    sub-long v6, v16, v6

    .line 594
    .line 595
    move-wide/from16 v16, v6

    .line 596
    .line 597
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 598
    .line 599
    move-wide/from16 v18, v6

    .line 600
    .line 601
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 602
    .line 603
    sub-long v18, v18, v6

    .line 604
    .line 605
    move-wide/from16 v21, v6

    .line 606
    .line 607
    mul-long v6, v18, v16

    .line 608
    .line 609
    long-to-float v2, v6

    .line 610
    sub-long v6, v4, v21

    .line 611
    .line 612
    long-to-float v6, v6

    .line 613
    div-float/2addr v2, v6

    .line 614
    float-to-long v6, v2

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    .line 620
    iget-boolean v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z

    .line 621
    .line 622
    if-eqz v14, :cond_13

    .line 623
    .line 624
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->Q:Ljava/lang/String;

    .line 625
    .line 626
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    if-eqz v4, :cond_12

    .line 631
    .line 632
    sget v4, Lnet/kaki87/soul2/testing/R$string;->finishing:I

    .line 633
    .line 634
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    iput-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->Q:Ljava/lang/String;

    .line 639
    .line 640
    :cond_12
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->Q:Ljava/lang/String;

    .line 641
    .line 642
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    goto :goto_6

    .line 646
    :cond_13
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 653
    .line 654
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 655
    .line 656
    .line 657
    :goto_6
    const-string v4, " ("

    .line 658
    .line 659
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    sub-long v6, v6, v16

    .line 663
    .line 664
    invoke-virtual {v0, v2, v6, v7}, Lcom/mycompany/app/main/MainDownSvc;->t(Ljava/lang/StringBuilder;J)V

    .line 665
    .line 666
    .line 667
    const-string v4, ")  "

    .line 668
    .line 669
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v10

    .line 679
    goto :goto_7

    .line 680
    :cond_14
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 681
    .line 682
    sub-long v6, v4, v6

    .line 683
    .line 684
    cmp-long v6, v6, v16

    .line 685
    .line 686
    const/4 v12, 0x0

    .line 687
    if-lez v6, :cond_15

    .line 688
    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .line 693
    .line 694
    invoke-static {v6, v4, v5}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 707
    :cond_15
    :goto_7
    const/16 v2, 0x64

    .line 708
    .line 709
    const-string v4, ""

    .line 710
    .line 711
    if-eqz v13, :cond_16

    .line 712
    .line 713
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    .line 714
    .line 715
    iget-object v6, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 716
    .line 717
    invoke-direct {v5, v6, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 718
    .line 719
    .line 720
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 721
    .line 722
    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 723
    .line 724
    .line 725
    const/high16 v3, 0x10000000

    .line 726
    .line 727
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 728
    .line 729
    .line 730
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 731
    .line 732
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 733
    .line 734
    .line 735
    move-result v6

    .line 736
    const/high16 v7, 0xc000000

    .line 737
    .line 738
    invoke-static {v3, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    .line 743
    .line 744
    iget-object v6, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 745
    .line 746
    invoke-direct {v5, v6, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->ic_download:I

    .line 750
    .line 751
    iget-object v7, v5, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 752
    .line 753
    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 754
    .line 755
    invoke-static {v10}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    iput-object v6, v5, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 760
    .line 761
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    iput-object v4, v5, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 766
    .line 767
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    iget-boolean v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 772
    .line 773
    invoke-virtual {v5, v2, v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 774
    .line 775
    .line 776
    iput-object v3, v5, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 777
    .line 778
    const/4 v2, 0x1

    .line 779
    iput v2, v5, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 780
    .line 781
    iput-object v8, v5, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 782
    .line 783
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->p(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 795
    .line 796
    .line 797
    iput-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 798
    .line 799
    goto :goto_8

    .line 800
    :cond_16
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 801
    .line 802
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    invoke-static {v10}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    iput-object v5, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 810
    .line 811
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 816
    .line 817
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    iget-boolean v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 822
    .line 823
    invoke-virtual {v3, v2, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 824
    .line 825
    .line 826
    :cond_17
    :goto_8
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 827
    .line 828
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    iget v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 833
    .line 834
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->g(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 838
    .line 839
    .line 840
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 841
    .line 842
    invoke-static {v3}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    if-eqz v3, :cond_19

    .line 847
    .line 848
    iget v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 849
    .line 850
    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 851
    .line 852
    .line 853
    return-void

    .line 854
    :cond_18
    :goto_9
    if-eqz v1, :cond_19

    .line 855
    .line 856
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 857
    .line 858
    const/4 v3, 0x5

    .line 859
    if-ne v2, v3, :cond_19

    .line 860
    .line 861
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainDownSvc;->X(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 862
    .line 863
    .line 864
    :catch_0
    :cond_19
    :goto_a
    return-void
.end method

.method public final d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    if-eqz p1, :cond_9

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iput v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->d:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const/4 v1, 0x1

    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x7

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainDownSvc;->x:Z

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->c0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainDownSvc;->x:Z

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->h:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_8

    .line 85
    .line 86
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainDownSvc;->Z()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 100
    .line 101
    if-nez p1, :cond_7

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 112
    .line 113
    const-wide/16 v1, 0x190

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_8
    :try_start_2
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    .line 124
    .line 125
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 126
    .line 127
    const/4 v1, 0x5

    .line 128
    if-ne v0, v1, :cond_a

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownSvc;->X(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 131
    .line 132
    .line 133
    :catch_0
    :cond_a
    :goto_4
    return-void
.end method

.method public final g(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->g:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :catch_0
    :goto_2
    return-void
.end method

.method public final h(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit v0

    .line 16
    goto :goto_2

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 36
    .line 37
    const-wide/16 v1, 0x190

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :goto_3
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZZ)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move/from16 v14, p5

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_12

    .line 12
    .line 13
    if-eqz v0, :cond_12

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    if-nez p6, :cond_8

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v14}, Lcom/mycompany/app/main/MainDownSvc;->y(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_8

    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, "_"

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefPath;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v4, v2, v3, v0}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v2, v14}, Lcom/mycompany/app/main/MainDownSvc;->y(Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    move-object v3, v0

    .line 114
    :goto_0
    if-nez v3, :cond_7

    .line 115
    .line 116
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_6
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$6;

    .line 123
    .line 124
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/MainDownSvc$6;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    move-object v8, v3

    .line 132
    goto :goto_1

    .line 133
    :cond_8
    move-object v8, v0

    .line 134
    :goto_1
    iget-object v0, v8, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    const/4 v0, 0x4

    .line 141
    const/4 v2, 0x0

    .line 142
    const/16 v18, 0x1

    .line 143
    .line 144
    if-ne v5, v0, :cond_9

    .line 145
    .line 146
    move/from16 v0, v18

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_9
    move v0, v2

    .line 150
    :goto_2
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 151
    .line 152
    const/4 v4, 0x2

    .line 153
    if-lez v3, :cond_a

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->r(Z)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 160
    .line 161
    if-lt v0, v3, :cond_a

    .line 162
    .line 163
    move v0, v4

    .line 164
    move/from16 v13, v18

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_a
    move v13, v2

    .line 168
    move v0, v4

    .line 169
    move/from16 v4, v18

    .line 170
    .line 171
    :goto_3
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 172
    .line 173
    iget-wide v9, v8, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 174
    .line 175
    sget-wide v15, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 176
    .line 177
    const/16 v17, 0x1

    .line 178
    .line 179
    const-wide/16 v11, 0x0

    .line 180
    .line 181
    move-object/from16 v6, p1

    .line 182
    .line 183
    move-object/from16 v7, p2

    .line 184
    .line 185
    invoke-static/range {v3 .. v17}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    const-wide/16 v6, 0x0

    .line 190
    .line 191
    cmp-long v9, v2, v6

    .line 192
    .line 193
    if-gtz v9, :cond_b

    .line 194
    .line 195
    goto/16 :goto_6

    .line 196
    .line 197
    :cond_b
    move/from16 v9, p4

    .line 198
    .line 199
    if-ge v9, v0, :cond_c

    .line 200
    .line 201
    move/from16 v9, v18

    .line 202
    .line 203
    :cond_c
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    iput-boolean v14, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 209
    .line 210
    iput-wide v2, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 211
    .line 212
    const-wide/32 v10, 0x7ffffff3

    .line 213
    .line 214
    .line 215
    rem-long/2addr v2, v10

    .line 216
    long-to-int v2, v2

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    .line 219
    iput v2, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 220
    .line 221
    iput v4, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 222
    .line 223
    iput v5, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 224
    .line 225
    move-object/from16 v2, p1

    .line 226
    .line 227
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 228
    .line 229
    move-object/from16 v3, p2

    .line 230
    .line 231
    iput-object v3, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v3, v8, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v3, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 236
    .line 237
    iget-wide v3, v8, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 238
    .line 239
    iput-wide v3, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 240
    .line 241
    iput-wide v6, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 242
    .line 243
    iput-object v8, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 244
    .line 245
    iput v9, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->u:I

    .line 246
    .line 247
    invoke-static {v2}, Lcom/mycompany/app/main/MainDownSvc;->s(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    iput v2, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 252
    .line 253
    iput-boolean v13, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 254
    .line 255
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 256
    .line 257
    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 259
    .line 260
    if-nez v3, :cond_d

    .line 261
    .line 262
    new-instance v3, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    iput-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    goto :goto_5

    .line 272
    :cond_d
    :goto_4
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    if-eqz v13, :cond_f

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 281
    .line 282
    .line 283
    if-nez p6, :cond_12

    .line 284
    .line 285
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 286
    .line 287
    if-nez v0, :cond_e

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_e
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$7;

    .line 291
    .line 292
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/MainDownSvc$7;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_f
    if-nez p6, :cond_11

    .line 300
    .line 301
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 302
    .line 303
    if-nez v2, :cond_10

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_10
    new-instance v3, Lcom/mycompany/app/main/MainDownSvc$8;

    .line 307
    .line 308
    invoke-direct {v3, v1}, Lcom/mycompany/app/main/MainDownSvc$8;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    .line 313
    .line 314
    :cond_11
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->P(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    throw v0

    .line 320
    :cond_12
    :goto_6
    return-void
.end method

.method public final j()V
    .locals 14

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_4

    .line 20
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainDownSvc;->r(Z)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 32
    .line 33
    if-ge v1, v2, :cond_6

    .line 34
    .line 35
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    move v4, v0

    .line 45
    :cond_3
    :goto_0
    if-ge v4, v3, :cond_5

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    check-cast v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 59
    .line 60
    iget v7, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 61
    .line 62
    const/4 v8, 0x2

    .line 63
    if-ne v7, v8, :cond_3

    .line 64
    .line 65
    iget-boolean v7, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 66
    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    iput v2, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 71
    .line 72
    iput-boolean v0, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 73
    .line 74
    iget-wide v7, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 75
    .line 76
    iget-wide v9, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 77
    .line 78
    iget-wide v11, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 79
    .line 80
    const/4 v13, 0x0

    .line 81
    invoke-static/range {v6 .. v13}, Lcom/mycompany/app/db/book/DbBookDown;->n(Landroid/content/Context;JJJZ)V

    .line 82
    .line 83
    .line 84
    iget-wide v2, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 85
    .line 86
    iget v0, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 87
    .line 88
    invoke-virtual {p0, v0, v2, v3}, Lcom/mycompany/app/main/MainDownSvc;->K(IJ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v5}, Lcom/mycompany/app/main/MainDownSvc;->P(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw v0

    .line 101
    :cond_6
    :goto_3
    return-void

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    :goto_4
    :try_start_2
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    throw v0
.end method

.method public final k(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-wide v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 9
    .line 10
    iget-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    cmp-long v0, v0, v4

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "net.kaki87.soul2.testing.ACTION_DOWN_CANCEL"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "EXTRA_ID"

    .line 41
    .line 42
    iget-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string v1, "EXTRA_PATH"

    .line 48
    .line 49
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string v1, "EXTRA_STOP"

    .line 55
    .line 56
    iget-boolean v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/high16 v3, 0xc000000

    .line 75
    .line 76
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 83
    .line 84
    iget-boolean p1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->M:Z

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    sget p1, Lnet/kaki87/soul2/testing/R$string;->stop:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 92
    .line 93
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v1, v2, p1, v0}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 102
    return-object p1
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    return-object p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->k:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/MainDownSvc;->W(Z)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainDownSvc;->l:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainDownSvc;->l:Z

    .line 23
    .line 24
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sput-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 31
    .line 32
    const/16 v2, 0xe

    .line 33
    .line 34
    const-string v3, "mCheckDown"

    .line 35
    .line 36
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$1;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainDownSvc;->O()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainDownSvc;->W(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainDownSvc$2;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/main/MainDownSvc;->Q(ZZ)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/high16 v2, 0xc000000

    .line 12
    .line 13
    const-string v3, "pause"

    .line 14
    .line 15
    const-string v4, "EXTRA_ID"

    .line 16
    .line 17
    const-string v5, "net.kaki87.soul2.testing.ACTION_DOWN_PAUSE"

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->K:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v0, Lnet/kaki87/soul2/testing/R$string;->start:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->resume:I

    .line 29
    .line 30
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-wide v5, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 36
    .line 37
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {p1, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    .line 62
    .line 63
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v1, v2, v0, p1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v5, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 79
    .line 80
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    .line 105
    .line 106
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_black_24:I

    .line 107
    .line 108
    sget v2, Lnet/kaki87/soul2/testing/R$string;->pause:I

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {v0, v1, v2, p1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 119
    return-object p1
.end method

.method public final q(Lcom/mycompany/app/main/MainDownSvc$DownItem;)Landroidx/core/app/NotificationCompat$Action;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v1, "net.kaki87.soul2.testing.ACTION_DOWN_RETRY"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "EXTRA_ID"

    .line 16
    .line 17
    iget-wide v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/high16 v2, 0xc000000

    .line 36
    .line 37
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    .line 42
    .line 43
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 44
    .line 45
    sget v2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v0, v1, v2, p1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public final r(Z)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    move v4, v2

    .line 23
    :cond_1
    :goto_0
    if-ge v4, v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    check-cast v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget v6, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    if-ne v6, v7, :cond_1

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget v5, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    monitor-exit v0

    .line 54
    return v2

    .line 55
    :cond_5
    :goto_1
    monitor-exit v0

    .line 56
    return v2

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public final t(Ljava/lang/StringBuilder;J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, p2, v2

    .line 8
    .line 9
    if-gtz v4, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    const-string v2, "0"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const-wide/16 v4, 0x3e8

    .line 39
    .line 40
    div-long v6, p2, v4

    .line 41
    .line 42
    cmp-long v8, v6, v2

    .line 43
    .line 44
    if-nez v8, :cond_3

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 61
    .line 62
    :cond_2
    const-string v2, "1"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-wide/32 v8, 0xea60

    .line 74
    .line 75
    .line 76
    div-long v10, p2, v8

    .line 77
    .line 78
    cmp-long v12, v10, v2

    .line 79
    .line 80
    if-nez v12, :cond_5

    .line 81
    .line 82
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 97
    .line 98
    :cond_4
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    const-wide/32 v6, 0x36ee80

    .line 108
    .line 109
    .line 110
    div-long v12, p2, v6

    .line 111
    .line 112
    cmp-long v14, v12, v2

    .line 113
    .line 114
    const-string v15, " "

    .line 115
    .line 116
    if-nez v14, :cond_8

    .line 117
    .line 118
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_m:I

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 133
    .line 134
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_7

    .line 141
    .line 142
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 149
    .line 150
    :cond_7
    rem-long v2, p2, v8

    .line 151
    .line 152
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v6, v0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    div-long/2addr v2, v4

    .line 164
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->P:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_8
    const-wide/32 v4, 0x5265c00

    .line 174
    .line 175
    .line 176
    div-long v4, p2, v4

    .line 177
    .line 178
    cmp-long v2, v4, v2

    .line 179
    .line 180
    if-nez v2, :cond_b

    .line 181
    .line 182
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_h:I

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 197
    .line 198
    :cond_9
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_a

    .line 205
    .line 206
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_m:I

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 213
    .line 214
    :cond_a
    rem-long v2, p2, v6

    .line 215
    .line 216
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    div-long/2addr v2, v8

    .line 228
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->O:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_b
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_c

    .line 244
    .line 245
    sget v2, Lnet/kaki87/soul2/testing/R$string;->time_h:I

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 252
    .line 253
    :cond_c
    const-wide/16 v2, 0x3e7

    .line 254
    .line 255
    cmp-long v4, v12, v2

    .line 256
    .line 257
    if-lez v4, :cond_d

    .line 258
    .line 259
    move-wide v12, v2

    .line 260
    :cond_d
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->N:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public final w()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->g:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_4

    .line 23
    .line 24
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v4}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 27
    .line 28
    .line 29
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    if-eqz v4, :cond_5

    .line 31
    .line 32
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    move v6, v0

    .line 37
    :goto_0
    if-ge v6, v5, :cond_5

    .line 38
    .line 39
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    check-cast v7, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 46
    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v8, v7, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    .line 52
    if-nez v8, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-nez v8, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget v7, v7, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 63
    .line 64
    invoke-virtual {v4, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v3

    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception v3

    .line 71
    move-object v4, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-object v4, v1

    .line 74
    :cond_5
    monitor-exit v2

    .line 75
    goto :goto_2

    .line 76
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 78
    :catch_0
    move-object v4, v1

    .line 79
    :catch_1
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->g:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    :try_start_5
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc;->u:Ljava/util/ArrayList;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->u:Ljava/util/ArrayList;

    .line 85
    .line 86
    if-eqz v3, :cond_8

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_8

    .line 93
    .line 94
    if-nez v4, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_3

    .line 103
    :catchall_2
    move-exception v0

    .line 104
    goto :goto_5

    .line 105
    :cond_6
    :goto_3
    if-eqz v4, :cond_8

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    :goto_4
    if-ge v0, v1, :cond_8

    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    check-cast v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 120
    .line 121
    if-nez v5, :cond_7

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_7
    iget v5, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    monitor-exit v2

    .line 131
    goto :goto_6

    .line 132
    :goto_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 133
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 134
    :catch_2
    :goto_6
    return-void
.end method

.method public final x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->U:Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->g:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->t:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v0

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    :catch_0
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->g:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 43
    :try_start_4
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->u:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->u:Ljava/util/ArrayList;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catchall_1
    move-exception v1

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    goto :goto_5

    .line 65
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc;->u:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    goto :goto_5

    .line 72
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 74
    :catch_1
    :goto_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget p1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->G:I

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_6
    return-void
.end method

.method public final y(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    :cond_1
    :goto_0
    if-ge v1, v3, :cond_3

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    check-cast v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v4, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    monitor-exit v0

    .line 51
    return p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/db/book/DbBookDown;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method
