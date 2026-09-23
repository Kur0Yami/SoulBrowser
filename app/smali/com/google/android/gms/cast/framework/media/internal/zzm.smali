.class final Lcom/google/android/gms/cast/framework/media/internal/zzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final w:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;

.field public final c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public final d:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field public final e:Landroid/content/ComponentName;

.field public final f:Landroid/content/ComponentName;

.field public g:Ljava/util/ArrayList;

.field public h:[I

.field public final i:J

.field public final j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public final k:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public final l:Landroid/content/res/Resources;

.field public m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

.field public n:Lcom/google/android/gms/cast/framework/media/internal/zzl;

.field public o:Landroidx/core/app/NotificationCompat$Action;

.field public p:Landroidx/core/app/NotificationCompat$Action;

.field public q:Landroidx/core/app/NotificationCompat$Action;

.field public r:Landroidx/core/app/NotificationCompat$Action;

.field public s:Landroidx/core/app/NotificationCompat$Action;

.field public t:Landroidx/core/app/NotificationCompat$Action;

.field public u:Landroidx/core/app/NotificationCompat$Action;

.field public v:Landroidx/core/app/NotificationCompat$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaNotificationProxy"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "notification"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b:Landroid/app/NotificationManager;

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 24
    .line 25
    const-string v1, "Must be called from the main thread."

    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/google/android/gms/cast/framework/CastContext;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v2, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/google/android/gms/cast/framework/CastOptions;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->h:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 67
    .line 68
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->F()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->d:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->l:Landroid/content/res/Resources;

    .line 81
    .line 82
    new-instance v4, Landroid/content/ComponentName;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->c:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->e:Landroid/content/ComponentName;

    .line 94
    .line 95
    iget-object v1, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->h:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_0

    .line 102
    .line 103
    new-instance v1, Landroid/content/ComponentName;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object v5, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->h:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->f:Landroid/content/ComponentName;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 118
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->f:Landroid/content/ComponentName;

    .line 119
    .line 120
    :goto_0
    iget-wide v4, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    .line 121
    .line 122
    iput-wide v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->i:J

    .line 123
    .line 124
    iget v1, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->v:I

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-direct {v2, v3, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->k:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 137
    .line 138
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 148
    .line 149
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_1

    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    sget v1, Lcom/google/android/gms/cast/framework/R$string;->media_notification_channel_name:I

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance v1, Landroid/app/NotificationChannel;

    .line 174
    .line 175
    const-string v2, "cast_media_notification"

    .line 176
    .line 177
    const/4 v3, 0x2

    .line 178
    invoke-direct {v1, v2, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 179
    .line 180
    .line 181
    const/4 p1, 0x0

    .line 182
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpm;->i0:Lcom/google/android/gms/internal/cast/zzpm;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->n:Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzl;->b:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-le v4, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-gt v4, v3, :cond_2

    .line 32
    .line 33
    :cond_1
    move-object v1, v2

    .line 34
    :cond_2
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->a:Landroid/content/Context;

    .line 37
    .line 38
    const-string v6, "cast_media_notification"

    .line 39
    .line 40
    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 47
    .line 48
    iget v6, v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->i:I

    .line 49
    .line 50
    iget-object v7, v4, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 51
    .line 52
    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 53
    .line 54
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 55
    .line 56
    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/internal/zzk;->d:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iput-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 63
    .line 64
    iget v6, v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:I

    .line 65
    .line 66
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 67
    .line 68
    iget-object v7, v7, Lcom/google/android/gms/cast/framework/media/internal/zzk;->e:Ljava/lang/String;

    .line 69
    .line 70
    new-array v8, v3, [Ljava/lang/Object;

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    aput-object v7, v8, v9

    .line 74
    .line 75
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->l:Landroid/content/res/Resources;

    .line 76
    .line 77
    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iput-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 86
    .line 87
    const/4 v6, 0x2

    .line 88
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->d(I)V

    .line 89
    .line 90
    .line 91
    iput-boolean v9, v4, Landroidx/core/app/NotificationCompat$Builder;->j:Z

    .line 92
    .line 93
    iput v3, v4, Landroidx/core/app/NotificationCompat$Builder;->r:I

    .line 94
    .line 95
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->f:Landroid/content/ComponentName;

    .line 96
    .line 97
    if-nez v7, :cond_3

    .line 98
    .line 99
    move-object v7, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance v8, Landroid/content/Intent;

    .line 102
    .line 103
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v10, "targetActivity"

    .line 107
    .line 108
    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    new-instance v7, Landroidx/core/app/TaskStackBuilder;

    .line 122
    .line 123
    invoke-direct {v7, v5}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    iget-object v11, v7, Landroidx/core/app/TaskStackBuilder;->f:Landroid/content/Context;

    .line 131
    .line 132
    if-nez v10, :cond_4

    .line 133
    .line 134
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v8, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    :cond_4
    if-eqz v10, :cond_5

    .line 143
    .line 144
    invoke-virtual {v7, v10}, Landroidx/core/app/TaskStackBuilder;->a(Landroid/content/ComponentName;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    iget-object v7, v7, Landroidx/core/app/TaskStackBuilder;->c:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-nez v8, :cond_13

    .line 157
    .line 158
    new-array v8, v9, [Landroid/content/Intent;

    .line 159
    .line 160
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, [Landroid/content/Intent;

    .line 165
    .line 166
    new-instance v8, Landroid/content/Intent;

    .line 167
    .line 168
    aget-object v10, v7, v9

    .line 169
    .line 170
    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 171
    .line 172
    .line 173
    const v10, 0x1000c000

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    aput-object v8, v7, v9

    .line 181
    .line 182
    const/high16 v8, 0xc000000

    .line 183
    .line 184
    invoke-static {v11, v3, v7, v8, v2}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    :goto_0
    if-eqz v7, :cond_6

    .line 189
    .line 190
    iput-object v7, v4, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 191
    .line 192
    :cond_6
    iget-object v7, v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:Lcom/google/android/gms/cast/framework/media/zzg;

    .line 193
    .line 194
    sget-object v8, Lcom/google/android/gms/cast/framework/media/internal/zzm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 195
    .line 196
    if-eqz v7, :cond_c

    .line 197
    .line 198
    new-array v1, v9, [Ljava/lang/Object;

    .line 199
    .line 200
    const-string v10, "actionsProvider != null"

    .line 201
    .line 202
    invoke-virtual {v8, v10, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 206
    .line 207
    :try_start_0
    invoke-interface {v7}, Lcom/google/android/gms/cast/framework/media/zzg;->zzg()[I

    .line 208
    .line 209
    .line 210
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    sget-object v8, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 214
    .line 215
    new-array v6, v6, [Ljava/lang/Object;

    .line 216
    .line 217
    const-string v10, "getCompactViewActionIndices"

    .line 218
    .line 219
    aput-object v10, v6, v9

    .line 220
    .line 221
    const-string v10, "zzg"

    .line 222
    .line 223
    aput-object v10, v6, v3

    .line 224
    .line 225
    iget-object v10, v8, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 226
    .line 227
    const-string v11, "Unable to call %s on %s."

    .line 228
    .line 229
    invoke-virtual {v8, v11, v6}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {v10, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .line 235
    .line 236
    move-object v1, v2

    .line 237
    :goto_1
    if-nez v1, :cond_7

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_7
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    move-object v2, v1

    .line 245
    check-cast v2, [I

    .line 246
    .line 247
    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->h:[I

    .line 248
    .line 249
    invoke-static {v7}, Lcom/google/android/gms/cast/framework/media/internal/zzt;->b(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Ljava/util/ArrayList;

    .line 259
    .line 260
    if-nez v1, :cond_8

    .line 261
    .line 262
    goto/16 :goto_7

    .line 263
    .line 264
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_f

    .line 273
    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 279
    .line 280
    iget-object v6, v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;->c:Ljava/lang/String;

    .line 281
    .line 282
    const-string v7, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 283
    .line 284
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-nez v7, :cond_b

    .line 289
    .line 290
    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 291
    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    if-nez v7, :cond_b

    .line 297
    .line 298
    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 299
    .line 300
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-nez v7, :cond_b

    .line 305
    .line 306
    const-string v7, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 307
    .line 308
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    if-nez v7, :cond_b

    .line 313
    .line 314
    const-string v7, "com.google.android.gms.cast.framework.action.REWIND"

    .line 315
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-nez v7, :cond_b

    .line 321
    .line 322
    const-string v7, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 323
    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-nez v7, :cond_b

    .line 329
    .line 330
    const-string v7, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-eqz v7, :cond_a

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_a
    new-instance v7, Landroid/content/Intent;

    .line 340
    .line 341
    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->e:Landroid/content/ComponentName;

    .line 345
    .line 346
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 347
    .line 348
    .line 349
    const/high16 v6, 0x4000000

    .line 350
    .line 351
    invoke-static {v5, v9, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    new-instance v7, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 356
    .line 357
    iget v8, v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;->f:I

    .line 358
    .line 359
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;->g:Ljava/lang/String;

    .line 360
    .line 361
    invoke-direct {v7, v8, v2, v6}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    goto :goto_5

    .line 369
    :cond_b
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    :goto_5
    if-eqz v2, :cond_9

    .line 374
    .line 375
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_c
    new-array v2, v9, [Ljava/lang/Object;

    .line 382
    .line 383
    const-string v5, "actionsProvider == null"

    .line 384
    .line 385
    invoke-virtual {v8, v5, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    new-instance v2, Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .line 392
    .line 393
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Ljava/util/ArrayList;

    .line 394
    .line 395
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    move v6, v9

    .line 402
    :cond_d
    :goto_6
    if-ge v6, v5, :cond_e

    .line 403
    .line 404
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    add-int/lit8 v6, v6, 0x1

    .line 409
    .line 410
    check-cast v7, Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {p0, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    if-eqz v7, :cond_d

    .line 417
    .line 418
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_e
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->f:[I

    .line 425
    .line 426
    array-length v2, v1

    .line 427
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    check-cast v1, [I

    .line 436
    .line 437
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->h:[I

    .line 438
    .line 439
    :cond_f
    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    :goto_8
    if-ge v9, v2, :cond_10

    .line 446
    .line 447
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    add-int/lit8 v9, v9, 0x1

    .line 452
    .line 453
    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    .line 454
    .line 455
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 456
    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_10
    new-instance v1, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 460
    .line 461
    invoke-direct {v1}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 462
    .line 463
    .line 464
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->h:[I

    .line 465
    .line 466
    if-eqz v2, :cond_11

    .line 467
    .line 468
    iput-object v2, v1, Landroidx/media/app/NotificationCompat$MediaStyle;->b:[I

    .line 469
    .line 470
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 471
    .line 472
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/internal/zzk;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 473
    .line 474
    if-eqz v2, :cond_12

    .line 475
    .line 476
    iput-object v2, v1, Landroidx/media/app/NotificationCompat$MediaStyle;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 477
    .line 478
    :cond_12
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(Landroidx/core/app/NotificationCompat$Style;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const-string v2, "castMediaNotification"

    .line 486
    .line 487
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 492
    .line 493
    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    .line 494
    .line 495
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v0

    .line 499
    :cond_14
    :goto_9
    return-void
.end method

.method public final b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/high16 v8, 0xc000000

    .line 11
    .line 12
    const-string v9, "googlecast-extra_skip_step_ms"

    .line 13
    .line 14
    iget-wide v10, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->i:J

    .line 15
    .line 16
    const/4 v12, 0x0

    .line 17
    const/high16 v13, 0x4000000

    .line 18
    .line 19
    iget-object v14, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->l:Landroid/content/res/Resources;

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    const-wide/16 v16, 0x2710

    .line 23
    .line 24
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->e:Landroid/content/ComponentName;

    .line 27
    .line 28
    const-wide/16 v18, 0x7530

    .line 29
    .line 30
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 31
    .line 32
    sparse-switch v2, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :sswitch_0
    const-string v2, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_14

    .line 44
    .line 45
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->s:Landroidx/core/app/NotificationCompat$Action;

    .line 46
    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    new-instance v1, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v15, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 65
    .line 66
    cmp-long v2, v10, v16

    .line 67
    .line 68
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->o:I

    .line 69
    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->p:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    cmp-long v4, v10, v18

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 81
    .line 82
    :goto_0
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    cmp-long v2, v10, v18

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 95
    .line 96
    :goto_1
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 97
    .line 98
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->s:Landroidx/core/app/NotificationCompat$Action;

    .line 110
    .line 111
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->s:Landroidx/core/app/NotificationCompat$Action;

    .line 112
    .line 113
    return-object v1

    .line 114
    :sswitch_1
    const-string v2, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_14

    .line 121
    .line 122
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 123
    .line 124
    iget v3, v1, Lcom/google/android/gms/cast/framework/media/internal/zzk;->c:I

    .line 125
    .line 126
    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzk;->b:Z

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->p:Landroidx/core/app/NotificationCompat$Action;

    .line 131
    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    const/4 v1, 0x2

    .line 135
    if-ne v3, v1, :cond_5

    .line 136
    .line 137
    iget v1, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->j:I

    .line 138
    .line 139
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:I

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    iget v1, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->k:I

    .line 143
    .line 144
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:I

    .line 145
    .line 146
    :goto_2
    new-instance v6, Landroid/content/Intent;

    .line 147
    .line 148
    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    invoke-static {v4, v15, v6, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    new-instance v4, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 159
    .line 160
    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-direct {v4, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->p:Landroidx/core/app/NotificationCompat$Action;

    .line 172
    .line 173
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->p:Landroidx/core/app/NotificationCompat$Action;

    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->o:Landroidx/core/app/NotificationCompat$Action;

    .line 177
    .line 178
    if-nez v1, :cond_8

    .line 179
    .line 180
    new-instance v1, Landroid/content/Intent;

    .line 181
    .line 182
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    invoke-static {v4, v15, v1, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 193
    .line 194
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->l:I

    .line 195
    .line 196
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:I

    .line 197
    .line 198
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->o:Landroidx/core/app/NotificationCompat$Action;

    .line 210
    .line 211
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->o:Landroidx/core/app/NotificationCompat$Action;

    .line 212
    .line 213
    return-object v1

    .line 214
    :sswitch_2
    const-string v2, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_14

    .line 221
    .line 222
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->u:Landroidx/core/app/NotificationCompat$Action;

    .line 223
    .line 224
    if-nez v1, :cond_9

    .line 225
    .line 226
    new-instance v1, Landroid/content/Intent;

    .line 227
    .line 228
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    invoke-static {v4, v15, v1, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 239
    .line 240
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    .line 241
    .line 242
    iget v5, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 243
    .line 244
    new-array v3, v3, [Ljava/lang/Object;

    .line 245
    .line 246
    const-string v6, ""

    .line 247
    .line 248
    aput-object v6, v3, v15

    .line 249
    .line 250
    invoke-virtual {v14, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-direct {v2, v4, v3, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->u:Landroidx/core/app/NotificationCompat$Action;

    .line 262
    .line 263
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->u:Landroidx/core/app/NotificationCompat$Action;

    .line 264
    .line 265
    return-object v1

    .line 266
    :sswitch_3
    const-string v2, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_14

    .line 273
    .line 274
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->v:Landroidx/core/app/NotificationCompat$Action;

    .line 275
    .line 276
    if-nez v1, :cond_a

    .line 277
    .line 278
    new-instance v1, Landroid/content/Intent;

    .line 279
    .line 280
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    invoke-static {v4, v15, v1, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 291
    .line 292
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    .line 293
    .line 294
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 295
    .line 296
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->v:Landroidx/core/app/NotificationCompat$Action;

    .line 308
    .line 309
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->v:Landroidx/core/app/NotificationCompat$Action;

    .line 310
    .line 311
    return-object v1

    .line 312
    :sswitch_4
    const-string v2, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_14

    .line 319
    .line 320
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 321
    .line 322
    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzk;->g:Z

    .line 323
    .line 324
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->r:Landroidx/core/app/NotificationCompat$Action;

    .line 325
    .line 326
    if-nez v3, :cond_c

    .line 327
    .line 328
    if-eqz v1, :cond_b

    .line 329
    .line 330
    new-instance v1, Landroid/content/Intent;

    .line 331
    .line 332
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    invoke-static {v4, v15, v1, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    :cond_b
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 343
    .line 344
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->n:I

    .line 345
    .line 346
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    .line 347
    .line 348
    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-direct {v1, v2, v3, v12}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->r:Landroidx/core/app/NotificationCompat$Action;

    .line 360
    .line 361
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->r:Landroidx/core/app/NotificationCompat$Action;

    .line 362
    .line 363
    return-object v1

    .line 364
    :sswitch_5
    const-string v2, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    if-eqz v7, :cond_14

    .line 371
    .line 372
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 373
    .line 374
    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzk;->f:Z

    .line 375
    .line 376
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->q:Landroidx/core/app/NotificationCompat$Action;

    .line 377
    .line 378
    if-nez v3, :cond_e

    .line 379
    .line 380
    if-eqz v1, :cond_d

    .line 381
    .line 382
    new-instance v1, Landroid/content/Intent;

    .line 383
    .line 384
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    invoke-static {v4, v15, v1, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 391
    .line 392
    .line 393
    move-result-object v12

    .line 394
    :cond_d
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 395
    .line 396
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->m:I

    .line 397
    .line 398
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    .line 399
    .line 400
    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-direct {v1, v2, v3, v12}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->q:Landroidx/core/app/NotificationCompat$Action;

    .line 412
    .line 413
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->q:Landroidx/core/app/NotificationCompat$Action;

    .line 414
    .line 415
    return-object v1

    .line 416
    :sswitch_6
    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-eqz v7, :cond_14

    .line 423
    .line 424
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->t:Landroidx/core/app/NotificationCompat$Action;

    .line 425
    .line 426
    if-nez v1, :cond_13

    .line 427
    .line 428
    new-instance v1, Landroid/content/Intent;

    .line 429
    .line 430
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 437
    .line 438
    .line 439
    invoke-static {v4, v15, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    sget-object v2, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 444
    .line 445
    cmp-long v2, v10, v16

    .line 446
    .line 447
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->r:I

    .line 448
    .line 449
    if-nez v2, :cond_f

    .line 450
    .line 451
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->s:I

    .line 452
    .line 453
    goto :goto_3

    .line 454
    :cond_f
    cmp-long v4, v10, v18

    .line 455
    .line 456
    if-eqz v4, :cond_10

    .line 457
    .line 458
    goto :goto_3

    .line 459
    :cond_10
    iget v3, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->t:I

    .line 460
    .line 461
    :goto_3
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    .line 462
    .line 463
    if-nez v2, :cond_11

    .line 464
    .line 465
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_11
    cmp-long v2, v10, v18

    .line 469
    .line 470
    if-eqz v2, :cond_12

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_12
    iget v4, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    .line 474
    .line 475
    :goto_4
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 476
    .line 477
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->t:Landroidx/core/app/NotificationCompat$Action;

    .line 489
    .line 490
    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->t:Landroidx/core/app/NotificationCompat$Action;

    .line 491
    .line 492
    return-object v1

    .line 493
    :cond_14
    :goto_5
    new-array v2, v3, [Ljava/lang/Object;

    .line 494
    .line 495
    aput-object v1, v2, v15

    .line 496
    .line 497
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 498
    .line 499
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 500
    .line 501
    const-string v4, "Action: %s is not a pre-defined action."

    .line 502
    .line 503
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    return-object v12

    .line 511
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method
