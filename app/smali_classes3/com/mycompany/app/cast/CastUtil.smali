.class public Lcom/mycompany/app/cast/CastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/cast/CastUtil$CastSendListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/gms/cast/framework/CastSession;

.field public c:Landroid/os/Handler;

.field public d:Lcom/mycompany/app/cast/CastUtil$CastSendListener;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:I

.field public m:J

.field public n:J

.field public o:Lcom/google/android/gms/cast/MediaLoadRequestData;

.field public p:[Lcom/google/android/gms/cast/MediaQueueItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastSession;Landroid/os/Handler;Lcom/mycompany/app/cast/CastUtil$CastSendListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/cast/CastUtil;->d:Lcom/mycompany/app/cast/CastUtil$CastSendListener;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 5

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    :try_start_1
    invoke-static {v1, v4}, Lcom/google/android/gms/cast/MediaMetadata;->X(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget p3, Lnet/kaki87/soul2/testing/R$string;->no_title:I

    .line 35
    .line 36
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v1, v4}, Lcom/google/android/gms/cast/MediaMetadata;->X(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    const-string p3, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 51
    .line 52
    if-nez p0, :cond_2

    .line 53
    .line 54
    :try_start_2
    invoke-static {v1, p3}, Lcom/google/android/gms/cast/MediaMetadata;->X(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p0, 0x0

    .line 62
    invoke-static {p1, p0}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-nez p4, :cond_3

    .line 71
    .line 72
    invoke-static {v1, p3}, Lcom/google/android/gms/cast/MediaMetadata;->X(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_4

    .line 83
    .line 84
    new-instance p0, Lcom/google/android/gms/common/images/WebImage;

    .line 85
    .line 86
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .line 97
    .line 98
    :cond_4
    const-wide/16 p2, 0x0

    .line 99
    .line 100
    cmp-long p0, p5, p2

    .line 101
    .line 102
    if-gez p0, :cond_5

    .line 103
    .line 104
    move-wide p5, p2

    .line 105
    :cond_5
    const-string p0, "Invalid stream duration"

    .line 106
    .line 107
    const-wide/16 v2, -0x1

    .line 108
    .line 109
    if-eqz p8, :cond_8

    .line 110
    .line 111
    :try_start_3
    new-instance p4, Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 112
    .line 113
    invoke-direct {p4, p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput v1, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->b:I

    .line 117
    .line 118
    iput-object p7, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->c:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v0, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 121
    .line 122
    cmp-long p1, p5, p2

    .line 123
    .line 124
    if-gez p1, :cond_7

    .line 125
    .line 126
    cmp-long p1, p5, v2

    .line 127
    .line 128
    if-nez p1, :cond_6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_7
    :goto_2
    iput-wide p5, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->e:J

    .line 138
    .line 139
    iput-object p8, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->f:Ljava/util/List;

    .line 140
    .line 141
    invoke-virtual {p4}, Lcom/google/android/gms/cast/MediaInfo$Builder;->a()Lcom/google/android/gms/cast/MediaInfo;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_8
    new-instance p4, Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 147
    .line 148
    invoke-direct {p4, p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iput v1, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->b:I

    .line 152
    .line 153
    iput-object p7, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->c:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v0, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 156
    .line 157
    cmp-long p1, p5, p2

    .line 158
    .line 159
    if-gez p1, :cond_a

    .line 160
    .line 161
    cmp-long p1, p5, v2

    .line 162
    .line 163
    if-nez p1, :cond_9

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_a
    :goto_3
    iput-wide p5, p4, Lcom/google/android/gms/cast/MediaInfo$Builder;->e:J

    .line 173
    .line 174
    invoke-virtual {p4}, Lcom/google/android/gms/cast/MediaInfo$Builder;->a()Lcom/google/android/gms/cast/MediaInfo;

    .line 175
    .line 176
    .line 177
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    return-object p0

    .line 179
    :catch_0
    :cond_b
    :goto_4
    const/4 p0, 0x0

    .line 180
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->d:Lcom/mycompany/app/cast/CastUtil$CastSendListener;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->h:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->i:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->j:Ljava/util/List;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->k:Ljava/util/List;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->o:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->p:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 27
    .line 28
    return-void
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/mycompany/app/cast/CastUtil;->j:Ljava/util/List;

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p2, Lcom/mycompany/app/cast/CastUtil$11;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/mycompany/app/cast/CastUtil$11;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;Ljava/util/List;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/cast/CastUtil;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mycompany/app/cast/CastUtil;->k:Ljava/util/List;

    .line 6
    .line 7
    iput p4, p0, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/mycompany/app/cast/CastUtil;->m:J

    .line 10
    .line 11
    const-wide/16 p1, 0x0

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p2, Lcom/mycompany/app/cast/CastUtil$9;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/mycompany/app/cast/CastUtil$9;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p5, v0, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/cast/CastUtil;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/cast/CastUtil;->h:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 13
    .line 14
    new-instance p2, Lcom/mycompany/app/cast/CastUtil$3;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/mycompany/app/cast/CastUtil$3;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p1

    .line 30
    move-object v2, p2

    .line 31
    move-object v4, p3

    .line 32
    move-object v9, p4

    .line 33
    invoke-virtual/range {v0 .. v9}, Lcom/mycompany/app/cast/CastUtil;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/cast/CastUtil;->f:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mycompany/app/cast/CastUtil;->i:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/mycompany/app/cast/CastUtil;->m:J

    .line 10
    .line 11
    iput-wide p7, p0, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 12
    .line 13
    iput-object p9, p0, Lcom/mycompany/app/cast/CastUtil;->h:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p2, Lcom/mycompany/app/cast/CastUtil$6;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/mycompany/app/cast/CastUtil$6;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/cast/CastUtil$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/cast/CastUtil$2;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/cast/CastUtil$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/cast/CastUtil$1;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
