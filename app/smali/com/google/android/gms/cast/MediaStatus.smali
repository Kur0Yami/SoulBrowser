.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "MediaStatusCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaStatus$Writer;,
        Lcom/google/android/gms/cast/MediaStatus$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public final B:Landroid/util/SparseArray;

.field public c:Lcom/google/android/gms/cast/MediaInfo;

.field public f:J

.field public g:I

.field public h:D

.field public i:I

.field public j:I

.field public k:J

.field public l:J

.field public m:D

.field public n:Z

.field public o:[J

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Lorg/json/JSONObject;

.field public t:I

.field public final u:Ljava/util/ArrayList;

.field public v:Z

.field public w:Lcom/google/android/gms/cast/AdBreakStatus;

.field public x:Lcom/google/android/gms/cast/VideoInfo;

.field public y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

.field public z:Lcom/google/android/gms/cast/MediaQueueData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaStatus"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/cast/zzbz;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 4

    move-object/from16 v0, p19

    move-object/from16 v1, p21

    move-object/from16 v2, p26

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaStatus;->f:J

    iput p4, p0, Lcom/google/android/gms/cast/MediaStatus;->g:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaStatus;->h:D

    iput p7, p0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    iput p8, p0, Lcom/google/android/gms/cast/MediaStatus;->j:I

    iput-wide p9, p0, Lcom/google/android/gms/cast/MediaStatus;->k:J

    move-wide p1, p11

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    move-wide/from16 p1, p13

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->m:D

    move/from16 p1, p15

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    move/from16 p1, p17

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    move/from16 p1, p18

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->q:I

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move/from16 p1, p20

    goto :goto_1

    .line 6
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    goto :goto_0

    .line 7
    :goto_1
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->t:I

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/MediaStatus;->k0(Ljava/util/List;)V

    :cond_1
    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 10
    iget-boolean p2, v2, Lcom/google/android/gms/cast/MediaQueueData;->n:Z

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 11
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    return-void
.end method


# virtual methods
.method public final F()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/cast/AdBreakStatus;->h:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 22
    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    if-eqz v2, :cond_6

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/google/android/gms/cast/AdBreakClipInfo;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_6
    :goto_1
    return-object v1
.end method

.method public final G(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 24
    .line 25
    return-object p1
.end method

.method public final X(Lorg/json/JSONObject;I)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "extendedStatus"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    .line 40
    .line 41
    new-array v7, v4, [Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v6, v0, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    :cond_2
    move-object v6, v0

    .line 81
    :goto_2
    const-string v0, "mediaSessionId"

    .line 82
    .line 83
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    iget-wide v7, v1, Lcom/google/android/gms/cast/MediaStatus;->f:J

    .line 88
    .line 89
    cmp-long v0, v2, v7

    .line 90
    .line 91
    const/4 v5, 0x1

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iput-wide v2, v1, Lcom/google/android/gms/cast/MediaStatus;->f:J

    .line 95
    .line 96
    move v0, v5

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    move v0, v4

    .line 99
    :goto_3
    const-string v2, "playerState"

    .line 100
    .line 101
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v8, 0x3

    .line 106
    const/4 v10, 0x2

    .line 107
    if-eqz v3, :cond_e

    .line 108
    .line 109
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v3, "IDLE"

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    move v2, v5

    .line 122
    goto :goto_4

    .line 123
    :cond_4
    const-string v3, "PLAYING"

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    move v2, v10

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    const-string v3, "PAUSED"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    move v2, v8

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    const-string v3, "BUFFERING"

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    const/4 v2, 0x4

    .line 152
    goto :goto_4

    .line 153
    :cond_7
    const-string v3, "LOADING"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    const/4 v2, 0x5

    .line 162
    goto :goto_4

    .line 163
    :cond_8
    move v2, v4

    .line 164
    :goto_4
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 165
    .line 166
    if-eq v2, v3, :cond_9

    .line 167
    .line 168
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 169
    .line 170
    or-int/lit8 v0, v0, 0x2

    .line 171
    .line 172
    :cond_9
    if-ne v2, v5, :cond_e

    .line 173
    .line 174
    const-string v2, "idleReason"

    .line 175
    .line 176
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_e

    .line 181
    .line 182
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-string v3, "CANCELLED"

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_a

    .line 193
    .line 194
    move v2, v10

    .line 195
    goto :goto_5

    .line 196
    :cond_a
    const-string v3, "INTERRUPTED"

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_b

    .line 203
    .line 204
    move v2, v8

    .line 205
    goto :goto_5

    .line 206
    :cond_b
    const-string v3, "FINISHED"

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_c

    .line 213
    .line 214
    move v2, v5

    .line 215
    goto :goto_5

    .line 216
    :cond_c
    const-string v3, "ERROR"

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_d

    .line 223
    .line 224
    const/4 v2, 0x4

    .line 225
    goto :goto_5

    .line 226
    :cond_d
    move v2, v4

    .line 227
    :goto_5
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 228
    .line 229
    if-eq v2, v3, :cond_e

    .line 230
    .line 231
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 232
    .line 233
    or-int/lit8 v0, v0, 0x2

    .line 234
    .line 235
    :cond_e
    const-string v2, "playbackRate"

    .line 236
    .line 237
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_f

    .line 242
    .line 243
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 244
    .line 245
    .line 246
    move-result-wide v2

    .line 247
    iget-wide v11, v1, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 248
    .line 249
    cmpl-double v11, v11, v2

    .line 250
    .line 251
    if-eqz v11, :cond_f

    .line 252
    .line 253
    iput-wide v2, v1, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 254
    .line 255
    or-int/lit8 v0, v0, 0x2

    .line 256
    .line 257
    :cond_f
    const-string v2, "currentTime"

    .line 258
    .line 259
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    if-eqz v3, :cond_11

    .line 269
    .line 270
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    sget-object v13, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 275
    .line 276
    mul-double/2addr v2, v11

    .line 277
    double-to-long v2, v2

    .line 278
    iget-wide v13, v1, Lcom/google/android/gms/cast/MediaStatus;->k:J

    .line 279
    .line 280
    cmp-long v13, v2, v13

    .line 281
    .line 282
    if-eqz v13, :cond_10

    .line 283
    .line 284
    iput-wide v2, v1, Lcom/google/android/gms/cast/MediaStatus;->k:J

    .line 285
    .line 286
    or-int/lit8 v0, v0, 0x2

    .line 287
    .line 288
    :cond_10
    or-int/lit16 v0, v0, 0x80

    .line 289
    .line 290
    :cond_11
    const-string v2, "supportedMediaCommands"

    .line 291
    .line 292
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_12

    .line 297
    .line 298
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    iget-wide v13, v1, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 303
    .line 304
    cmp-long v13, v2, v13

    .line 305
    .line 306
    if-eqz v13, :cond_12

    .line 307
    .line 308
    iput-wide v2, v1, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 309
    .line 310
    or-int/lit8 v0, v0, 0x2

    .line 311
    .line 312
    :cond_12
    const-string v2, "volume"

    .line 313
    .line 314
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_14

    .line 319
    .line 320
    if-nez p2, :cond_14

    .line 321
    .line 322
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const-string v3, "level"

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 329
    .line 330
    .line 331
    move-result-wide v13

    .line 332
    move-wide v15, v11

    .line 333
    iget-wide v11, v1, Lcom/google/android/gms/cast/MediaStatus;->m:D

    .line 334
    .line 335
    cmpl-double v3, v13, v11

    .line 336
    .line 337
    if-eqz v3, :cond_13

    .line 338
    .line 339
    iput-wide v13, v1, Lcom/google/android/gms/cast/MediaStatus;->m:D

    .line 340
    .line 341
    or-int/lit8 v0, v0, 0x2

    .line 342
    .line 343
    :cond_13
    const-string v3, "muted"

    .line 344
    .line 345
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    iget-boolean v3, v1, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    .line 350
    .line 351
    if-eq v2, v3, :cond_15

    .line 352
    .line 353
    iput-boolean v2, v1, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    .line 354
    .line 355
    or-int/lit8 v0, v0, 0x2

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_14
    move-wide v15, v11

    .line 359
    :cond_15
    :goto_6
    const-string v2, "activeTrackIds"

    .line 360
    .line 361
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    const/4 v11, 0x0

    .line 366
    if-eqz v3, :cond_16

    .line 367
    .line 368
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    goto :goto_7

    .line 373
    :cond_16
    move-object v2, v11

    .line 374
    :goto_7
    sget-object v3, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 375
    .line 376
    if-nez v2, :cond_17

    .line 377
    .line 378
    move-object v3, v11

    .line 379
    goto :goto_9

    .line 380
    :cond_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    new-array v3, v3, [J

    .line 385
    .line 386
    move v12, v4

    .line 387
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-ge v12, v13, :cond_18

    .line 392
    .line 393
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getLong(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v13

    .line 397
    aput-wide v13, v3, v12

    .line 398
    .line 399
    add-int/lit8 v12, v12, 0x1

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_18
    :goto_9
    if-eqz v3, :cond_1a

    .line 403
    .line 404
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 405
    .line 406
    if-nez v2, :cond_19

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_19
    array-length v12, v3

    .line 410
    array-length v2, v2

    .line 411
    if-ne v2, v12, :cond_1b

    .line 412
    .line 413
    move v2, v4

    .line 414
    :goto_a
    array-length v12, v3

    .line 415
    if-ge v2, v12, :cond_1c

    .line 416
    .line 417
    iget-object v12, v1, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 418
    .line 419
    aget-wide v13, v12, v2

    .line 420
    .line 421
    aget-wide v17, v3, v2

    .line 422
    .line 423
    cmp-long v12, v13, v17

    .line 424
    .line 425
    if-nez v12, :cond_1b

    .line 426
    .line 427
    add-int/lit8 v2, v2, 0x1

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_1a
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 431
    .line 432
    if-eqz v2, :cond_1c

    .line 433
    .line 434
    :cond_1b
    :goto_b
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 435
    .line 436
    or-int/lit8 v0, v0, 0x2

    .line 437
    .line 438
    :cond_1c
    const-string v2, "customData"

    .line 439
    .line 440
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-eqz v3, :cond_1d

    .line 445
    .line 446
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 451
    .line 452
    iput-object v11, v1, Lcom/google/android/gms/cast/MediaStatus;->r:Ljava/lang/String;

    .line 453
    .line 454
    or-int/lit8 v0, v0, 0x2

    .line 455
    .line 456
    :cond_1d
    const-string v2, "media"

    .line 457
    .line 458
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_20

    .line 463
    .line 464
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    new-instance v3, Lcom/google/android/gms/cast/MediaInfo;

    .line 469
    .line 470
    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 471
    .line 472
    .line 473
    iget-object v12, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 474
    .line 475
    if-eqz v12, :cond_1e

    .line 476
    .line 477
    invoke-virtual {v12, v3}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    if-nez v12, :cond_1f

    .line 482
    .line 483
    :cond_1e
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 484
    .line 485
    or-int/lit8 v0, v0, 0x2

    .line 486
    .line 487
    :cond_1f
    const-string v3, "metadata"

    .line 488
    .line 489
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_20

    .line 494
    .line 495
    or-int/lit8 v0, v0, 0x4

    .line 496
    .line 497
    :cond_20
    const-string v2, "currentItemId"

    .line 498
    .line 499
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_21

    .line 504
    .line 505
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 510
    .line 511
    if-eq v3, v2, :cond_21

    .line 512
    .line 513
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 514
    .line 515
    or-int/lit8 v0, v0, 0x2

    .line 516
    .line 517
    :cond_21
    const-string v2, "preloadedItemId"

    .line 518
    .line 519
    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 524
    .line 525
    if-eq v3, v2, :cond_22

    .line 526
    .line 527
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 528
    .line 529
    or-int/lit8 v0, v0, 0x10

    .line 530
    .line 531
    :cond_22
    const-string v2, "loadingItemId"

    .line 532
    .line 533
    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 538
    .line 539
    if-eq v3, v2, :cond_23

    .line 540
    .line 541
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 542
    .line 543
    or-int/lit8 v0, v0, 0x2

    .line 544
    .line 545
    :cond_23
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 546
    .line 547
    if-nez v2, :cond_24

    .line 548
    .line 549
    const/4 v2, -0x1

    .line 550
    goto :goto_c

    .line 551
    :cond_24
    iget v2, v2, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 552
    .line 553
    :goto_c
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 554
    .line 555
    iget v12, v1, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 556
    .line 557
    iget v13, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 558
    .line 559
    iget-object v14, v1, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 560
    .line 561
    move-wide/from16 p1, v15

    .line 562
    .line 563
    iget-object v15, v1, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 564
    .line 565
    const-string v7, "items"

    .line 566
    .line 567
    const-string v9, "repeatMode"

    .line 568
    .line 569
    if-eq v3, v5, :cond_25

    .line 570
    .line 571
    goto :goto_d

    .line 572
    :cond_25
    if-eq v12, v5, :cond_28

    .line 573
    .line 574
    if-eq v12, v10, :cond_27

    .line 575
    .line 576
    if-eq v12, v8, :cond_28

    .line 577
    .line 578
    :cond_26
    move v2, v4

    .line 579
    move/from16 v19, v5

    .line 580
    .line 581
    goto/16 :goto_17

    .line 582
    .line 583
    :cond_27
    if-ne v2, v10, :cond_26

    .line 584
    .line 585
    goto :goto_d

    .line 586
    :cond_28
    if-eqz v13, :cond_33

    .line 587
    .line 588
    :goto_d
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    if-eqz v2, :cond_2a

    .line 593
    .line 594
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    if-nez v2, :cond_29

    .line 603
    .line 604
    iget v2, v1, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 605
    .line 606
    goto :goto_e

    .line 607
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    :goto_e
    iget v3, v1, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 612
    .line 613
    if-eq v3, v2, :cond_2a

    .line 614
    .line 615
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 616
    .line 617
    move v2, v5

    .line 618
    goto :goto_f

    .line 619
    :cond_2a
    move v2, v4

    .line 620
    :goto_f
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    if-eqz v3, :cond_31

    .line 625
    .line 626
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 631
    .line 632
    .line 633
    move-result v12

    .line 634
    new-instance v13, Landroid/util/SparseArray;

    .line 635
    .line 636
    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 637
    .line 638
    .line 639
    move v10, v4

    .line 640
    :goto_10
    if-ge v10, v12, :cond_2b

    .line 641
    .line 642
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    const-string v11, "itemId"

    .line 647
    .line 648
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-result v8

    .line 652
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    invoke-virtual {v13, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    add-int/lit8 v10, v10, 0x1

    .line 660
    .line 661
    const/4 v8, 0x3

    .line 662
    const/4 v11, 0x0

    .line 663
    goto :goto_10

    .line 664
    :cond_2b
    new-instance v8, Ljava/util/ArrayList;

    .line 665
    .line 666
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .line 668
    .line 669
    move v10, v4

    .line 670
    :goto_11
    if-ge v10, v12, :cond_2f

    .line 671
    .line 672
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v11

    .line 676
    check-cast v11, Ljava/lang/Integer;

    .line 677
    .line 678
    move/from16 v19, v5

    .line 679
    .line 680
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/MediaStatus;->G(I)Lcom/google/android/gms/cast/MediaQueueItem;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    if-eqz v4, :cond_2c

    .line 693
    .line 694
    invoke-virtual {v4, v5}, Lcom/google/android/gms/cast/MediaQueueItem;->F(Lorg/json/JSONObject;)Z

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    or-int/2addr v2, v5

    .line 699
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 703
    .line 704
    .line 705
    move-result v4

    .line 706
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    check-cast v4, Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    if-eq v10, v4, :cond_2e

    .line 717
    .line 718
    :goto_12
    move/from16 v2, v19

    .line 719
    .line 720
    goto :goto_13

    .line 721
    :cond_2c
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    iget v4, v1, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 726
    .line 727
    if-ne v2, v4, :cond_2d

    .line 728
    .line 729
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 730
    .line 731
    if-eqz v2, :cond_2d

    .line 732
    .line 733
    new-instance v4, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 734
    .line 735
    invoke-direct {v4, v2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {v2, v5}, Lcom/google/android/gms/cast/MediaQueueItem;->F(Lorg/json/JSONObject;)Z

    .line 743
    .line 744
    .line 745
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    goto :goto_12

    .line 749
    :cond_2d
    new-instance v2, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 750
    .line 751
    invoke-direct {v2, v5}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    goto :goto_12

    .line 758
    :cond_2e
    :goto_13
    add-int/lit8 v10, v10, 0x1

    .line 759
    .line 760
    move/from16 v5, v19

    .line 761
    .line 762
    const/4 v4, 0x0

    .line 763
    goto :goto_11

    .line 764
    :cond_2f
    move/from16 v19, v5

    .line 765
    .line 766
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    if-eq v3, v12, :cond_30

    .line 771
    .line 772
    const/4 v3, 0x0

    .line 773
    goto :goto_14

    .line 774
    :cond_30
    move/from16 v3, v19

    .line 775
    .line 776
    :goto_14
    xor-int/lit8 v3, v3, 0x1

    .line 777
    .line 778
    or-int/2addr v2, v3

    .line 779
    invoke-virtual {v1, v8}, Lcom/google/android/gms/cast/MediaStatus;->k0(Ljava/util/List;)V

    .line 780
    .line 781
    .line 782
    goto :goto_15

    .line 783
    :cond_31
    move/from16 v19, v5

    .line 784
    .line 785
    :goto_15
    if-eqz v2, :cond_32

    .line 786
    .line 787
    or-int/lit8 v0, v0, 0x8

    .line 788
    .line 789
    :cond_32
    :goto_16
    move v2, v0

    .line 790
    goto :goto_18

    .line 791
    :cond_33
    move/from16 v19, v5

    .line 792
    .line 793
    move v2, v4

    .line 794
    :goto_17
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 795
    .line 796
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 797
    .line 798
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 799
    .line 800
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    if-nez v3, :cond_32

    .line 805
    .line 806
    or-int/lit8 v0, v0, 0x8

    .line 807
    .line 808
    iput v2, v1, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 809
    .line 810
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 814
    .line 815
    .line 816
    goto :goto_16

    .line 817
    :goto_18
    const-string v0, "breakStatus"

    .line 818
    .line 819
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    sget-object v3, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 824
    .line 825
    const-wide/16 v3, -0x1

    .line 826
    .line 827
    if-nez v0, :cond_35

    .line 828
    .line 829
    :cond_34
    :goto_19
    const/4 v0, 0x0

    .line 830
    goto :goto_1a

    .line 831
    :cond_35
    const-string v5, "currentBreakTime"

    .line 832
    .line 833
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 834
    .line 835
    .line 836
    move-result v8

    .line 837
    if-eqz v8, :cond_34

    .line 838
    .line 839
    const-string v8, "currentBreakClipTime"

    .line 840
    .line 841
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 842
    .line 843
    .line 844
    move-result v10

    .line 845
    if-nez v10, :cond_36

    .line 846
    .line 847
    goto :goto_19

    .line 848
    :cond_36
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 849
    .line 850
    .line 851
    move-result-wide v10

    .line 852
    sget-object v5, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 853
    .line 854
    const-wide/16 v12, 0x3e8

    .line 855
    .line 856
    mul-long v22, v10, v12

    .line 857
    .line 858
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 859
    .line 860
    .line 861
    move-result-wide v10

    .line 862
    mul-long v24, v10, v12

    .line 863
    .line 864
    const-string v5, "breakId"

    .line 865
    .line 866
    invoke-static {v0, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v26

    .line 870
    const-string v5, "breakClipId"

    .line 871
    .line 872
    invoke-static {v0, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v27

    .line 876
    const-string v5, "whenSkippable"

    .line 877
    .line 878
    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 879
    .line 880
    .line 881
    move-result-wide v10

    .line 882
    cmp-long v0, v10, v3

    .line 883
    .line 884
    if-eqz v0, :cond_37

    .line 885
    .line 886
    mul-long/2addr v10, v12

    .line 887
    :cond_37
    move-wide/from16 v28, v10

    .line 888
    .line 889
    new-instance v21, Lcom/google/android/gms/cast/AdBreakStatus;

    .line 890
    .line 891
    invoke-direct/range {v21 .. v29}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    .line 893
    .line 894
    move-object/from16 v0, v21

    .line 895
    .line 896
    goto :goto_1a

    .line 897
    :catch_1
    move-exception v0

    .line 898
    sget-object v5, Lcom/google/android/gms/cast/AdBreakStatus;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 899
    .line 900
    const/4 v8, 0x0

    .line 901
    new-array v10, v8, [Ljava/lang/Object;

    .line 902
    .line 903
    iget-object v8, v5, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 904
    .line 905
    const-string v11, "Error while creating an AdBreakClipInfo from JSON"

    .line 906
    .line 907
    invoke-virtual {v5, v11, v10}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v5

    .line 911
    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .line 913
    .line 914
    goto :goto_19

    .line 915
    :goto_1a
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 916
    .line 917
    if-nez v5, :cond_38

    .line 918
    .line 919
    if-nez v0, :cond_39

    .line 920
    .line 921
    :cond_38
    if-eqz v5, :cond_3c

    .line 922
    .line 923
    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    move-result v5

    .line 927
    if-nez v5, :cond_3c

    .line 928
    .line 929
    :cond_39
    if-eqz v0, :cond_3b

    .line 930
    .line 931
    iget-object v5, v0, Lcom/google/android/gms/cast/AdBreakStatus;->g:Ljava/lang/String;

    .line 932
    .line 933
    if-nez v5, :cond_3a

    .line 934
    .line 935
    iget-object v5, v0, Lcom/google/android/gms/cast/AdBreakStatus;->h:Ljava/lang/String;

    .line 936
    .line 937
    if-eqz v5, :cond_3b

    .line 938
    .line 939
    :cond_3a
    move/from16 v5, v19

    .line 940
    .line 941
    goto :goto_1b

    .line 942
    :cond_3b
    const/4 v5, 0x0

    .line 943
    :goto_1b
    iput-boolean v5, v1, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 944
    .line 945
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 946
    .line 947
    or-int/lit8 v2, v2, 0x20

    .line 948
    .line 949
    :cond_3c
    const-string v0, "videoInfo"

    .line 950
    .line 951
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    sget-object v5, Lcom/google/android/gms/cast/VideoInfo;->h:Lcom/google/android/gms/cast/internal/Logger;

    .line 956
    .line 957
    if-nez v0, :cond_3d

    .line 958
    .line 959
    :goto_1c
    const/4 v10, 0x0

    .line 960
    goto/16 :goto_1f

    .line 961
    .line 962
    :cond_3d
    :try_start_2
    const-string v8, "hdrType"

    .line 963
    .line 964
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v8

    .line 968
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 969
    .line 970
    .line 971
    move-result v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 972
    const/16 v11, 0xc92

    .line 973
    .line 974
    if-eq v10, v11, :cond_41

    .line 975
    .line 976
    const v11, 0x192f6

    .line 977
    .line 978
    .line 979
    if-eq v10, v11, :cond_40

    .line 980
    .line 981
    const v11, 0x1bc41

    .line 982
    .line 983
    .line 984
    if-eq v10, v11, :cond_3f

    .line 985
    .line 986
    const v11, 0x5e8b395

    .line 987
    .line 988
    .line 989
    if-eq v10, v11, :cond_3e

    .line 990
    .line 991
    goto :goto_1d

    .line 992
    :cond_3e
    const-string v10, "hdr10"

    .line 993
    .line 994
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v10

    .line 998
    if-eqz v10, :cond_42

    .line 999
    .line 1000
    const/4 v8, 0x2

    .line 1001
    goto :goto_1e

    .line 1002
    :cond_3f
    const-string v10, "sdr"

    .line 1003
    .line 1004
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v10

    .line 1008
    if-eqz v10, :cond_42

    .line 1009
    .line 1010
    move/from16 v8, v19

    .line 1011
    .line 1012
    goto :goto_1e

    .line 1013
    :cond_40
    const-string v10, "hdr"

    .line 1014
    .line 1015
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v10

    .line 1019
    if-eqz v10, :cond_42

    .line 1020
    .line 1021
    const/4 v8, 0x4

    .line 1022
    goto :goto_1e

    .line 1023
    :cond_41
    const-string v10, "dv"

    .line 1024
    .line 1025
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v10

    .line 1029
    if-eqz v10, :cond_42

    .line 1030
    .line 1031
    const/4 v8, 0x3

    .line 1032
    goto :goto_1e

    .line 1033
    :cond_42
    :goto_1d
    :try_start_3
    const-string v10, "Unknown HDR type: %s"

    .line 1034
    .line 1035
    move/from16 v11, v19

    .line 1036
    .line 1037
    new-array v12, v11, [Ljava/lang/Object;

    .line 1038
    .line 1039
    const/16 v20, 0x0

    .line 1040
    .line 1041
    aput-object v8, v12, v20

    .line 1042
    .line 1043
    invoke-virtual {v5, v10, v12}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    .line 1045
    .line 1046
    const/4 v8, 0x0

    .line 1047
    :goto_1e
    new-instance v10, Lcom/google/android/gms/cast/VideoInfo;

    .line 1048
    .line 1049
    const-string v11, "width"

    .line 1050
    .line 1051
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    move-result v11

    .line 1055
    const-string v12, "height"

    .line 1056
    .line 1057
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    move-result v0

    .line 1061
    invoke-direct {v10, v11, v0, v8}, Lcom/google/android/gms/cast/VideoInfo;-><init>(III)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1062
    .line 1063
    .line 1064
    goto :goto_1f

    .line 1065
    :catch_2
    move-exception v0

    .line 1066
    const/4 v8, 0x0

    .line 1067
    new-array v10, v8, [Ljava/lang/Object;

    .line 1068
    .line 1069
    const-string v8, "Error while creating a VideoInfo instance from JSON"

    .line 1070
    .line 1071
    invoke-virtual {v5, v0, v8, v10}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_1c

    .line 1075
    :goto_1f
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    .line 1076
    .line 1077
    if-nez v0, :cond_43

    .line 1078
    .line 1079
    if-nez v10, :cond_44

    .line 1080
    .line 1081
    :cond_43
    if-eqz v0, :cond_45

    .line 1082
    .line 1083
    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    if-nez v0, :cond_45

    .line 1088
    .line 1089
    :cond_44
    iput-object v10, v1, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    .line 1090
    .line 1091
    or-int/lit8 v2, v2, 0x40

    .line 1092
    .line 1093
    :cond_45
    const-string v0, "breakInfo"

    .line 1094
    .line 1095
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v5

    .line 1099
    if-eqz v5, :cond_46

    .line 1100
    .line 1101
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 1102
    .line 1103
    if-eqz v5, :cond_46

    .line 1104
    .line 1105
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/MediaInfo;->F(Lorg/json/JSONObject;)V

    .line 1110
    .line 1111
    .line 1112
    or-int/lit8 v2, v2, 0x2

    .line 1113
    .line 1114
    :cond_46
    const-string v0, "queueData"

    .line 1115
    .line 1116
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v5

    .line 1120
    if-eqz v5, :cond_55

    .line 1121
    .line 1122
    new-instance v5, Lcom/google/android/gms/cast/MediaQueueData$Builder;

    .line 1123
    .line 1124
    invoke-direct {v5}, Lcom/google/android/gms/cast/MediaQueueData$Builder;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    iget-object v5, v5, Lcom/google/android/gms/cast/MediaQueueData$Builder;->a:Lcom/google/android/gms/cast/MediaQueueData;

    .line 1132
    .line 1133
    const/4 v8, 0x0

    .line 1134
    iput-object v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:Ljava/lang/String;

    .line 1135
    .line 1136
    iput-object v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:Ljava/lang/String;

    .line 1137
    .line 1138
    const/4 v10, 0x0

    .line 1139
    iput v10, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:I

    .line 1140
    .line 1141
    iput-object v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:Ljava/lang/String;

    .line 1142
    .line 1143
    iput v10, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:I

    .line 1144
    .line 1145
    iput-object v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->k:Ljava/util/ArrayList;

    .line 1146
    .line 1147
    iput v10, v5, Lcom/google/android/gms/cast/MediaQueueData;->l:I

    .line 1148
    .line 1149
    iput-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->m:J

    .line 1150
    .line 1151
    iput-boolean v10, v5, Lcom/google/android/gms/cast/MediaQueueData;->n:Z

    .line 1152
    .line 1153
    if-nez v0, :cond_47

    .line 1154
    .line 1155
    goto/16 :goto_26

    .line 1156
    .line 1157
    :cond_47
    const-string v3, "id"

    .line 1158
    .line 1159
    invoke-static {v0, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v3

    .line 1163
    iput-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:Ljava/lang/String;

    .line 1164
    .line 1165
    const-string v3, "entity"

    .line 1166
    .line 1167
    invoke-static {v0, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v3

    .line 1171
    iput-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:Ljava/lang/String;

    .line 1172
    .line 1173
    const-string v3, "queueType"

    .line 1174
    .line 1175
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 1180
    .line 1181
    .line 1182
    move-result v4

    .line 1183
    sparse-switch v4, :sswitch_data_0

    .line 1184
    .line 1185
    .line 1186
    goto :goto_21

    .line 1187
    :sswitch_0
    const-string v4, "LIVE_TV"

    .line 1188
    .line 1189
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v3

    .line 1193
    if-eqz v3, :cond_48

    .line 1194
    .line 1195
    const/16 v3, 0x8

    .line 1196
    .line 1197
    :goto_20
    iput v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:I

    .line 1198
    .line 1199
    goto :goto_21

    .line 1200
    :sswitch_1
    const-string v4, "VIDEO_PLAYLIST"

    .line 1201
    .line 1202
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v3

    .line 1206
    if-eqz v3, :cond_48

    .line 1207
    .line 1208
    const/4 v3, 0x7

    .line 1209
    goto :goto_20

    .line 1210
    :sswitch_2
    const-string v4, "MOVIE"

    .line 1211
    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v3

    .line 1216
    if-eqz v3, :cond_48

    .line 1217
    .line 1218
    const/16 v3, 0x9

    .line 1219
    .line 1220
    goto :goto_20

    .line 1221
    :sswitch_3
    const-string v4, "ALBUM"

    .line 1222
    .line 1223
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v3

    .line 1227
    if-eqz v3, :cond_48

    .line 1228
    .line 1229
    const/4 v11, 0x1

    .line 1230
    iput v11, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:I

    .line 1231
    .line 1232
    goto :goto_21

    .line 1233
    :sswitch_4
    const-string v4, "TV_SERIES"

    .line 1234
    .line 1235
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v3

    .line 1239
    if-eqz v3, :cond_48

    .line 1240
    .line 1241
    const/4 v3, 0x6

    .line 1242
    goto :goto_20

    .line 1243
    :sswitch_5
    const-string v4, "AUDIOBOOK"

    .line 1244
    .line 1245
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v3

    .line 1249
    if-eqz v3, :cond_48

    .line 1250
    .line 1251
    const/4 v3, 0x3

    .line 1252
    goto :goto_20

    .line 1253
    :sswitch_6
    const-string v4, "PLAYLIST"

    .line 1254
    .line 1255
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v3

    .line 1259
    if-eqz v3, :cond_48

    .line 1260
    .line 1261
    const/4 v3, 0x2

    .line 1262
    goto :goto_20

    .line 1263
    :sswitch_7
    const-string v4, "RADIO_STATION"

    .line 1264
    .line 1265
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v3

    .line 1269
    if-eqz v3, :cond_48

    .line 1270
    .line 1271
    const/4 v3, 0x4

    .line 1272
    goto :goto_20

    .line 1273
    :sswitch_8
    const-string v4, "PODCAST_SERIES"

    .line 1274
    .line 1275
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v3

    .line 1279
    if-eqz v3, :cond_48

    .line 1280
    .line 1281
    const/4 v3, 0x5

    .line 1282
    goto :goto_20

    .line 1283
    :cond_48
    :goto_21
    const-string v3, "name"

    .line 1284
    .line 1285
    invoke-static {v0, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v3

    .line 1289
    iput-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:Ljava/lang/String;

    .line 1290
    .line 1291
    const-string v3, "containerMetadata"

    .line 1292
    .line 1293
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v4

    .line 1297
    if-eqz v4, :cond_49

    .line 1298
    .line 1299
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v3

    .line 1303
    move-object v8, v3

    .line 1304
    goto :goto_22

    .line 1305
    :cond_49
    const/4 v8, 0x0

    .line 1306
    :goto_22
    if-eqz v8, :cond_50

    .line 1307
    .line 1308
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    .line 1309
    .line 1310
    invoke-direct {v3}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;-><init>()V

    .line 1311
    .line 1312
    .line 1313
    iget-object v3, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1314
    .line 1315
    const/4 v10, 0x0

    .line 1316
    iput v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:I

    .line 1317
    .line 1318
    const/4 v4, 0x0

    .line 1319
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/lang/String;

    .line 1320
    .line 1321
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->g:Ljava/util/ArrayList;

    .line 1322
    .line 1323
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->h:Ljava/util/ArrayList;

    .line 1324
    .line 1325
    const-wide/16 v10, 0x0

    .line 1326
    .line 1327
    iput-wide v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->i:D

    .line 1328
    .line 1329
    const-string v4, "containerType"

    .line 1330
    .line 1331
    const-string v10, ""

    .line 1332
    .line 1333
    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v4

    .line 1337
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 1338
    .line 1339
    .line 1340
    move-result v10

    .line 1341
    const v11, 0x69a7c1

    .line 1342
    .line 1343
    .line 1344
    if-eq v10, v11, :cond_4b

    .line 1345
    .line 1346
    const v11, 0x316473d9

    .line 1347
    .line 1348
    .line 1349
    if-eq v10, v11, :cond_4a

    .line 1350
    .line 1351
    goto :goto_23

    .line 1352
    :cond_4a
    const-string v10, "GENERIC_CONTAINER"

    .line 1353
    .line 1354
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v4

    .line 1358
    if-eqz v4, :cond_4c

    .line 1359
    .line 1360
    const/4 v10, 0x0

    .line 1361
    iput v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:I

    .line 1362
    .line 1363
    goto :goto_23

    .line 1364
    :cond_4b
    const-string v10, "AUDIOBOOK_CONTAINER"

    .line 1365
    .line 1366
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v4

    .line 1370
    if-eqz v4, :cond_4c

    .line 1371
    .line 1372
    const/4 v11, 0x1

    .line 1373
    iput v11, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:I

    .line 1374
    .line 1375
    :cond_4c
    :goto_23
    const-string v4, "title"

    .line 1376
    .line 1377
    invoke-static {v8, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v4

    .line 1381
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/lang/String;

    .line 1382
    .line 1383
    const-string v4, "sections"

    .line 1384
    .line 1385
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v4

    .line 1389
    if-eqz v4, :cond_4e

    .line 1390
    .line 1391
    new-instance v10, Ljava/util/ArrayList;

    .line 1392
    .line 1393
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    iput-object v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->g:Ljava/util/ArrayList;

    .line 1397
    .line 1398
    const/4 v11, 0x0

    .line 1399
    :goto_24
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 1400
    .line 1401
    .line 1402
    move-result v12

    .line 1403
    if-ge v11, v12, :cond_4e

    .line 1404
    .line 1405
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v12

    .line 1409
    if-eqz v12, :cond_4d

    .line 1410
    .line 1411
    new-instance v13, Lcom/google/android/gms/cast/MediaMetadata;

    .line 1412
    .line 1413
    const/4 v14, 0x0

    .line 1414
    invoke-direct {v13, v14}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v13, v12}, Lcom/google/android/gms/cast/MediaMetadata;->A0(Lorg/json/JSONObject;)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    .line 1422
    .line 1423
    :cond_4d
    add-int/lit8 v11, v11, 0x1

    .line 1424
    .line 1425
    goto :goto_24

    .line 1426
    :cond_4e
    const-string v4, "containerImages"

    .line 1427
    .line 1428
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v4

    .line 1432
    if-eqz v4, :cond_4f

    .line 1433
    .line 1434
    new-instance v10, Ljava/util/ArrayList;

    .line 1435
    .line 1436
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .line 1438
    .line 1439
    iput-object v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->h:Ljava/util/ArrayList;

    .line 1440
    .line 1441
    invoke-static {v4, v10}, Lcom/google/android/gms/cast/internal/media/zza;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 1442
    .line 1443
    .line 1444
    :cond_4f
    iget-wide v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->i:D

    .line 1445
    .line 1446
    const-string v4, "containerDuration"

    .line 1447
    .line 1448
    invoke-virtual {v8, v4, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1449
    .line 1450
    .line 1451
    move-result-wide v10

    .line 1452
    iput-wide v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->i:D

    .line 1453
    .line 1454
    new-instance v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1455
    .line 1456
    invoke-direct {v4}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 1457
    .line 1458
    .line 1459
    iget v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:I

    .line 1460
    .line 1461
    iput v8, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:I

    .line 1462
    .line 1463
    iget-object v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/lang/String;

    .line 1464
    .line 1465
    iput-object v8, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/lang/String;

    .line 1466
    .line 1467
    iget-object v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->g:Ljava/util/ArrayList;

    .line 1468
    .line 1469
    iput-object v8, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->g:Ljava/util/ArrayList;

    .line 1470
    .line 1471
    iget-object v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->h:Ljava/util/ArrayList;

    .line 1472
    .line 1473
    iput-object v8, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->h:Ljava/util/ArrayList;

    .line 1474
    .line 1475
    iget-wide v10, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->i:D

    .line 1476
    .line 1477
    iput-wide v10, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->i:D

    .line 1478
    .line 1479
    iput-object v4, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1480
    .line 1481
    :cond_50
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    invoke-static {v3}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v3

    .line 1489
    if-eqz v3, :cond_51

    .line 1490
    .line 1491
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1492
    .line 1493
    .line 1494
    move-result v3

    .line 1495
    iput v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:I

    .line 1496
    .line 1497
    :cond_51
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v3

    .line 1501
    if-eqz v3, :cond_53

    .line 1502
    .line 1503
    new-instance v4, Ljava/util/ArrayList;

    .line 1504
    .line 1505
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .line 1507
    .line 1508
    iput-object v4, v5, Lcom/google/android/gms/cast/MediaQueueData;->k:Ljava/util/ArrayList;

    .line 1509
    .line 1510
    const/4 v7, 0x0

    .line 1511
    :goto_25
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 1512
    .line 1513
    .line 1514
    move-result v8

    .line 1515
    if-ge v7, v8, :cond_53

    .line 1516
    .line 1517
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v8

    .line 1521
    if-eqz v8, :cond_52

    .line 1522
    .line 1523
    :try_start_4
    new-instance v9, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 1524
    .line 1525
    invoke-direct {v9, v8}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1529
    .line 1530
    .line 1531
    :catch_3
    :cond_52
    add-int/lit8 v7, v7, 0x1

    .line 1532
    .line 1533
    goto :goto_25

    .line 1534
    :cond_53
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->l:I

    .line 1535
    .line 1536
    const-string v4, "startIndex"

    .line 1537
    .line 1538
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1539
    .line 1540
    .line 1541
    move-result v3

    .line 1542
    iput v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->l:I

    .line 1543
    .line 1544
    const-string v3, "startTime"

    .line 1545
    .line 1546
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v4

    .line 1550
    if-eqz v4, :cond_54

    .line 1551
    .line 1552
    iget-wide v7, v5, Lcom/google/android/gms/cast/MediaQueueData;->m:J

    .line 1553
    .line 1554
    long-to-double v7, v7

    .line 1555
    invoke-virtual {v0, v3, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1556
    .line 1557
    .line 1558
    move-result-wide v3

    .line 1559
    mul-double v3, v3, p1

    .line 1560
    .line 1561
    double-to-long v3, v3

    .line 1562
    iput-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->m:J

    .line 1563
    .line 1564
    :cond_54
    const-string v3, "shuffle"

    .line 1565
    .line 1566
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    iput-boolean v0, v5, Lcom/google/android/gms/cast/MediaQueueData;->n:Z

    .line 1571
    .line 1572
    :goto_26
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    .line 1573
    .line 1574
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 1575
    .line 1576
    .line 1577
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:Ljava/lang/String;

    .line 1578
    .line 1579
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->c:Ljava/lang/String;

    .line 1580
    .line 1581
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:Ljava/lang/String;

    .line 1582
    .line 1583
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->f:Ljava/lang/String;

    .line 1584
    .line 1585
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:I

    .line 1586
    .line 1587
    iput v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->g:I

    .line 1588
    .line 1589
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:Ljava/lang/String;

    .line 1590
    .line 1591
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->h:Ljava/lang/String;

    .line 1592
    .line 1593
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1594
    .line 1595
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->i:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1596
    .line 1597
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:I

    .line 1598
    .line 1599
    iput v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->j:I

    .line 1600
    .line 1601
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->k:Ljava/util/ArrayList;

    .line 1602
    .line 1603
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->k:Ljava/util/ArrayList;

    .line 1604
    .line 1605
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->l:I

    .line 1606
    .line 1607
    iput v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->l:I

    .line 1608
    .line 1609
    iget-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->m:J

    .line 1610
    .line 1611
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->m:J

    .line 1612
    .line 1613
    iget-boolean v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->n:Z

    .line 1614
    .line 1615
    iput-boolean v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->n:Z

    .line 1616
    .line 1617
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->z:Lcom/google/android/gms/cast/MediaQueueData;

    .line 1618
    .line 1619
    iget-boolean v0, v1, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 1620
    .line 1621
    if-eq v0, v3, :cond_55

    .line 1622
    .line 1623
    iput-boolean v3, v1, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 1624
    .line 1625
    or-int/lit8 v2, v2, 0x8

    .line 1626
    .line 1627
    :cond_55
    const-string v0, "liveSeekableRange"

    .line 1628
    .line 1629
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v3

    .line 1633
    if-eqz v3, :cond_59

    .line 1634
    .line 1635
    const/16 v18, 0x2

    .line 1636
    .line 1637
    or-int/lit8 v2, v2, 0x2

    .line 1638
    .line 1639
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v0

    .line 1643
    sget-object v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1644
    .line 1645
    if-nez v0, :cond_57

    .line 1646
    .line 1647
    :cond_56
    :goto_27
    const/4 v11, 0x0

    .line 1648
    goto :goto_28

    .line 1649
    :cond_57
    const-string v3, "start"

    .line 1650
    .line 1651
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v4

    .line 1655
    if-eqz v4, :cond_56

    .line 1656
    .line 1657
    const-string v4, "end"

    .line 1658
    .line 1659
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v5

    .line 1663
    if-nez v5, :cond_58

    .line 1664
    .line 1665
    goto :goto_27

    .line 1666
    :cond_58
    :try_start_5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1667
    .line 1668
    .line 1669
    move-result-wide v5

    .line 1670
    sget-object v3, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 1671
    .line 1672
    mul-double v5, v5, p1

    .line 1673
    .line 1674
    double-to-long v8, v5

    .line 1675
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1676
    .line 1677
    .line 1678
    move-result-wide v3

    .line 1679
    mul-double v3, v3, p1

    .line 1680
    .line 1681
    double-to-long v10, v3

    .line 1682
    const-string v3, "isMovingWindow"

    .line 1683
    .line 1684
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1685
    .line 1686
    .line 1687
    move-result v12

    .line 1688
    const-string v3, "isLiveDone"

    .line 1689
    .line 1690
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v13

    .line 1694
    new-instance v7, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1695
    .line 1696
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;-><init>(JJZZ)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1697
    .line 1698
    .line 1699
    move-object v11, v7

    .line 1700
    goto :goto_28

    .line 1701
    :catch_4
    sget-object v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 1702
    .line 1703
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v0

    .line 1707
    const-string v4, "Ignoring Malformed MediaLiveSeekableRange: "

    .line 1708
    .line 1709
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v0

    .line 1713
    const/4 v10, 0x0

    .line 1714
    new-array v4, v10, [Ljava/lang/Object;

    .line 1715
    .line 1716
    iget-object v5, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 1717
    .line 1718
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    .line 1724
    .line 1725
    goto :goto_27

    .line 1726
    :goto_28
    iput-object v11, v1, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1727
    .line 1728
    goto :goto_29

    .line 1729
    :cond_59
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1730
    .line 1731
    if-eqz v0, :cond_5a

    .line 1732
    .line 1733
    or-int/lit8 v2, v2, 0x2

    .line 1734
    .line 1735
    :cond_5a
    const/4 v4, 0x0

    .line 1736
    iput-object v4, v1, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1737
    .line 1738
    :goto_29
    return v2

    .line 1739
    :sswitch_data_0
    .sparse-switch
        -0x6b79e7ce -> :sswitch_8
        -0x68d6bb50 -> :sswitch_7
        -0x61538e2e -> :sswitch_6
        -0x4ea9f461 -> :sswitch_5
        -0x40e1912c -> :sswitch_4
        0x3b7864f -> :sswitch_3
        0x4624710 -> :sswitch_2
        0x176e3d36 -> :sswitch_1
        0x35c80eb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    move v1, v0

    .line 22
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    move v3, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move v3, v0

    .line 29
    :goto_1
    if-eq v1, v3, :cond_4

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->f:J

    .line 34
    .line 35
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->f:J

    .line 36
    .line 37
    cmp-long v1, v3, v5

    .line 38
    .line 39
    if-nez v1, :cond_6

    .line 40
    .line 41
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 42
    .line 43
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 44
    .line 45
    if-ne v1, v3, :cond_6

    .line 46
    .line 47
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 48
    .line 49
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 50
    .line 51
    cmpl-double v1, v3, v5

    .line 52
    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 56
    .line 57
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 58
    .line 59
    if-ne v1, v3, :cond_6

    .line 60
    .line 61
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 62
    .line 63
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 64
    .line 65
    if-ne v1, v3, :cond_6

    .line 66
    .line 67
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->k:J

    .line 68
    .line 69
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->k:J

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-nez v1, :cond_6

    .line 74
    .line 75
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->m:D

    .line 76
    .line 77
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->m:D

    .line 78
    .line 79
    cmpl-double v1, v3, v5

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    .line 86
    .line 87
    if-ne v1, v3, :cond_6

    .line 88
    .line 89
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 90
    .line 91
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 92
    .line 93
    if-ne v1, v3, :cond_6

    .line 94
    .line 95
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 96
    .line 97
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 98
    .line 99
    if-ne v1, v3, :cond_6

    .line 100
    .line 101
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 102
    .line 103
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 104
    .line 105
    if-ne v1, v3, :cond_6

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 108
    .line 109
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 110
    .line 111
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 118
    .line 119
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 124
    .line 125
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 136
    .line 137
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 160
    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 170
    .line 171
    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 172
    .line 173
    if-ne v1, v3, :cond_6

    .line 174
    .line 175
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 176
    .line 177
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 178
    .line 179
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    .line 186
    .line 187
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    .line 188
    .line 189
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 196
    .line 197
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 198
    .line 199
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Lcom/google/android/gms/cast/MediaQueueData;

    .line 206
    .line 207
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->z:Lcom/google/android/gms/cast/MediaQueueData;

    .line 208
    .line 209
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 216
    .line 217
    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 218
    .line 219
    if-ne v1, p1, :cond_6

    .line 220
    .line 221
    :goto_2
    return v0

    .line 222
    :cond_6
    :goto_3
    return v2
.end method

.method public final hashCode()I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->f:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, v0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget v6, v0, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-wide v7, v0, Lcom/google/android/gms/cast/MediaStatus;->k:J

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-wide v8, v0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 42
    .line 43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->m:D

    .line 48
    .line 49
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget-boolean v10, v0, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    .line 54
    .line 55
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 60
    .line 61
    invoke-static {v11}, Ljava/util/Arrays;->hashCode([J)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget v12, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 70
    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget v13, v0, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 76
    .line 77
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget-object v14, v0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget v15, v0, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 88
    .line 89
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    move-object/from16 v16, v1

    .line 94
    .line 95
    iget-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object/from16 v17, v1

    .line 102
    .line 103
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 104
    .line 105
    move-object/from16 v18, v1

    .line 106
    .line 107
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    .line 108
    .line 109
    move-object/from16 v19, v1

    .line 110
    .line 111
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 112
    .line 113
    move-object/from16 v20, v1

    .line 114
    .line 115
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->z:Lcom/google/android/gms/cast/MediaQueueData;

    .line 116
    .line 117
    move-object/from16 v21, v1

    .line 118
    .line 119
    const/16 v1, 0x15

    .line 120
    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    .line 123
    const/16 v22, 0x0

    .line 124
    .line 125
    aput-object v16, v1, v22

    .line 126
    .line 127
    const/16 v16, 0x1

    .line 128
    .line 129
    aput-object v2, v1, v16

    .line 130
    .line 131
    const/4 v2, 0x2

    .line 132
    aput-object v3, v1, v2

    .line 133
    .line 134
    const/4 v2, 0x3

    .line 135
    aput-object v4, v1, v2

    .line 136
    .line 137
    const/4 v2, 0x4

    .line 138
    aput-object v5, v1, v2

    .line 139
    .line 140
    const/4 v2, 0x5

    .line 141
    aput-object v6, v1, v2

    .line 142
    .line 143
    const/4 v2, 0x6

    .line 144
    aput-object v7, v1, v2

    .line 145
    .line 146
    const/4 v2, 0x7

    .line 147
    aput-object v8, v1, v2

    .line 148
    .line 149
    const/16 v2, 0x8

    .line 150
    .line 151
    aput-object v9, v1, v2

    .line 152
    .line 153
    const/16 v2, 0x9

    .line 154
    .line 155
    aput-object v10, v1, v2

    .line 156
    .line 157
    const/16 v2, 0xa

    .line 158
    .line 159
    aput-object v11, v1, v2

    .line 160
    .line 161
    const/16 v2, 0xb

    .line 162
    .line 163
    aput-object v12, v1, v2

    .line 164
    .line 165
    const/16 v2, 0xc

    .line 166
    .line 167
    aput-object v13, v1, v2

    .line 168
    .line 169
    const/16 v2, 0xd

    .line 170
    .line 171
    aput-object v14, v1, v2

    .line 172
    .line 173
    const/16 v2, 0xe

    .line 174
    .line 175
    aput-object v15, v1, v2

    .line 176
    .line 177
    const/16 v2, 0xf

    .line 178
    .line 179
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 180
    .line 181
    aput-object v3, v1, v2

    .line 182
    .line 183
    const/16 v2, 0x10

    .line 184
    .line 185
    aput-object v17, v1, v2

    .line 186
    .line 187
    const/16 v2, 0x11

    .line 188
    .line 189
    aput-object v18, v1, v2

    .line 190
    .line 191
    const/16 v2, 0x12

    .line 192
    .line 193
    aput-object v19, v1, v2

    .line 194
    .line 195
    const/16 v2, 0x13

    .line 196
    .line 197
    aput-object v20, v1, v2

    .line 198
    .line 199
    const/16 v2, 0x14

    .line 200
    .line 201
    aput-object v21, v1, v2

    .line 202
    .line 203
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    return v1
.end method

.method public final k0(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget v3, v3, Lcom/google/android/gms/cast/MediaQueueItem;->f:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->f:J

    .line 26
    .line 27
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 38
    .line 39
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x6

    .line 43
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 44
    .line 45
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x7

    .line 49
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 50
    .line 51
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->k:J

    .line 57
    .line 58
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 64
    .line 65
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0xa

    .line 69
    .line 70
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->m:D

    .line 71
    .line 72
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0xb

    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->n:Z

    .line 78
    .line 79
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 80
    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 85
    .line 86
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    .line 87
    .line 88
    .line 89
    const/16 v1, 0xd

    .line 90
    .line 91
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 92
    .line 93
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0xe

    .line 97
    .line 98
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->q:I

    .line 99
    .line 100
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 101
    .line 102
    .line 103
    const/16 v1, 0xf

    .line 104
    .line 105
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    const/16 v1, 0x10

    .line 111
    .line 112
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 113
    .line 114
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 115
    .line 116
    .line 117
    const/16 v1, 0x11

    .line 118
    .line 119
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 122
    .line 123
    .line 124
    const/16 v1, 0x12

    .line 125
    .line 126
    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 127
    .line 128
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x13

    .line 132
    .line 133
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 134
    .line 135
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x14

    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lcom/google/android/gms/cast/VideoInfo;

    .line 141
    .line 142
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x15

    .line 146
    .line 147
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 148
    .line 149
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0x16

    .line 153
    .line 154
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Lcom/google/android/gms/cast/MediaQueueData;

    .line 155
    .line 156
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
