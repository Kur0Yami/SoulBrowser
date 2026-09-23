.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "MediaMetadataCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaMetadata$Writer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:[Ljava/lang/String;

.field public static final i:Lcom/google/android/gms/cast/zzbu;


# instance fields
.field public final c:Ljava/util/List;

.field public final f:Landroid/os/Bundle;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "ISO-8601 date String"

    .line 2
    .line 3
    const-string v5, "Time in milliseconds as long"

    .line 4
    .line 5
    const-string v0, "none"

    .line 6
    .line 7
    const-string v1, "String"

    .line 8
    .line 9
    const-string v2, "int"

    .line 10
    .line 11
    const-string v3, "double"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->h:[Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/cast/zzbv;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/cast/zzbu;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbu;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    const-string v2, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 33
    .line 34
    const-string v3, "creationDateTime"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 40
    .line 41
    const-string v3, "releaseDate"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 47
    .line 48
    const-string v3, "originalAirdate"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 55
    .line 56
    const-string v3, "title"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 62
    .line 63
    const-string v3, "subtitle"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    .line 69
    .line 70
    const-string v3, "artist"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 76
    .line 77
    const-string v3, "albumArtist"

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 83
    .line 84
    const-string v3, "albumName"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 90
    .line 91
    const-string v3, "composer"

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    const-string v3, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 98
    .line 99
    const-string v4, "discNumber"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v3, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 105
    .line 106
    const-string v4, "trackNumber"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v3, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 112
    .line 113
    const-string v4, "season"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v3, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 119
    .line 120
    const-string v4, "episode"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 126
    .line 127
    const-string v4, "seriesTitle"

    .line 128
    .line 129
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    .line 133
    .line 134
    const-string v4, "studio"

    .line 135
    .line 136
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v3, "com.google.android.gms.cast.metadata.WIDTH"

    .line 140
    .line 141
    const-string v4, "width"

    .line 142
    .line 143
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v3, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 147
    .line 148
    const-string v4, "height"

    .line 149
    .line 150
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v3, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 154
    .line 155
    const-string v4, "location"

    .line 156
    .line 157
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x3

    .line 161
    const-string v4, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 162
    .line 163
    const-string v5, "latitude"

    .line 164
    .line 165
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v4, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 169
    .line 170
    const-string v5, "longitude"

    .line 171
    .line 172
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 v3, 0x5

    .line 176
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 177
    .line 178
    const-string v5, "sectionDuration"

    .line 179
    .line 180
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 184
    .line 185
    const-string v5, "sectionStartTimeInMedia"

    .line 186
    .line 187
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 191
    .line 192
    const-string v5, "sectionStartAbsoluteTime"

    .line 193
    .line 194
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 198
    .line 199
    const-string v5, "sectionStartTimeInContainer"

    .line 200
    .line 201
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v3, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 205
    .line 206
    const-string v4, "queueItemId"

    .line 207
    .line 208
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v3, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 212
    .line 213
    const-string v4, "bookTitle"

    .line 214
    .line 215
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 219
    .line 220
    const-string v4, "chapterNumber"

    .line 221
    .line 222
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 226
    .line 227
    const-string v3, "chapterTitle"

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/zzbu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->i:Lcom/google/android/gms/cast/zzbu;

    .line 233
    .line 234
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    iput p3, p0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    return-void
.end method

.method public static C0(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    instance-of v4, v2, Landroid/os/Bundle;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    instance-of v4, v3, Landroid/os/Bundle;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    move-object v4, v2

    .line 49
    check-cast v4, Landroid/os/Bundle;

    .line 50
    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-static {v4, v5}, Lcom/google/android/gms/cast/MediaMetadata;->C0(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    :cond_2
    if-nez v2, :cond_3

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 78
    return p0

    .line 79
    :cond_5
    const/4 p0, 0x1

    .line 80
    return p0
.end method

.method public static X(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->i:Lcom/google/android/gms/cast/zzbu;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbu;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eq v0, p0, :cond_2

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/cast/MediaMetadata;->h:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object p0, v1, p0

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    add-int/lit8 v1, v1, 0x15

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const-string v1, "Value for "

    .line 61
    .line 62
    const-string v2, " must be a "

    .line 63
    .line 64
    invoke-static {v3, v1, p1, v2, p0}, Landroid/support/v4/media/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    :goto_1
    return-void

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p1, "null and empty keys are not allowed"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method


# virtual methods
.method public final A0(Lorg/json/JSONObject;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "metadataType"

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    iput v5, v0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iput v6, v0, Lcom/google/android/gms/cast/MediaMetadata;->g:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :catch_0
    const-string v6, "images"

    .line 27
    .line 28
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    invoke-static {v6, v4}, Lcom/google/android/gms/cast/internal/media/zza;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iget v6, v0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    .line 43
    .line 44
    const-string v7, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 45
    .line 46
    const/4 v8, 0x5

    .line 47
    const/4 v9, 0x4

    .line 48
    const/4 v10, 0x3

    .line 49
    const/4 v11, 0x2

    .line 50
    const/4 v12, 0x1

    .line 51
    const-string v13, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 52
    .line 53
    const-string v14, "com.google.android.gms.cast.metadata.TITLE"

    .line 54
    .line 55
    if-eqz v6, :cond_6

    .line 56
    .line 57
    if-eq v6, v12, :cond_5

    .line 58
    .line 59
    if-eq v6, v11, :cond_4

    .line 60
    .line 61
    if-eq v6, v10, :cond_3

    .line 62
    .line 63
    if-eq v6, v9, :cond_2

    .line 64
    .line 65
    if-eq v6, v8, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v6, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 69
    .line 70
    const-string v7, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 71
    .line 72
    const-string v15, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 73
    .line 74
    filled-new-array {v15, v6, v14, v7, v13}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-string v19, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 83
    .line 84
    const-string v20, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 85
    .line 86
    const-string v13, "com.google.android.gms.cast.metadata.TITLE"

    .line 87
    .line 88
    const-string v14, "com.google.android.gms.cast.metadata.ARTIST"

    .line 89
    .line 90
    const-string v15, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 91
    .line 92
    const-string v16, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 93
    .line 94
    const-string v17, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 95
    .line 96
    const-string v18, "com.google.android.gms.cast.metadata.WIDTH"

    .line 97
    .line 98
    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const-string v19, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 107
    .line 108
    const-string v20, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 109
    .line 110
    const-string v13, "com.google.android.gms.cast.metadata.TITLE"

    .line 111
    .line 112
    const-string v14, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 113
    .line 114
    const-string v15, "com.google.android.gms.cast.metadata.ARTIST"

    .line 115
    .line 116
    const-string v16, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 117
    .line 118
    const-string v17, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 119
    .line 120
    const-string v18, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 121
    .line 122
    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    const-string v6, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 131
    .line 132
    const-string v7, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 133
    .line 134
    const-string v13, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 135
    .line 136
    const-string v15, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 137
    .line 138
    filled-new-array {v14, v13, v15, v6, v7}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    const-string v6, "com.google.android.gms.cast.metadata.STUDIO"

    .line 147
    .line 148
    filled-new-array {v14, v6, v13, v7}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    const-string v6, "com.google.android.gms.cast.metadata.ARTIST"

    .line 157
    .line 158
    filled-new-array {v14, v6, v13, v7}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :goto_0
    const-string v6, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 166
    .line 167
    const-string v7, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 168
    .line 169
    const-string v13, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 170
    .line 171
    const-string v14, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 172
    .line 173
    const-string v15, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 174
    .line 175
    filled-new-array {v13, v14, v15, v6, v7}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v6, Ljava/util/HashSet;

    .line 183
    .line 184
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_12

    .line 196
    .line 197
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Ljava/lang/String;

    .line 202
    .line 203
    if-eqz v7, :cond_7

    .line 204
    .line 205
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-nez v13, :cond_7

    .line 210
    .line 211
    sget-object v13, Lcom/google/android/gms/cast/MediaMetadata;->i:Lcom/google/android/gms/cast/zzbu;

    .line 212
    .line 213
    iget-object v14, v13, Lcom/google/android/gms/cast/zzbu;->b:Ljava/util/HashMap;

    .line 214
    .line 215
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    check-cast v14, Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v14, :cond_f

    .line 222
    .line 223
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 227
    if-eqz v15, :cond_7

    .line 228
    .line 229
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    if-eqz v15, :cond_7

    .line 234
    .line 235
    iget-object v13, v13, Lcom/google/android/gms/cast/zzbu;->c:Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    check-cast v13, Ljava/lang/Integer;

    .line 242
    .line 243
    if-eqz v13, :cond_8

    .line 244
    .line 245
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    goto :goto_2

    .line 250
    :cond_8
    move v13, v5

    .line 251
    :goto_2
    if-eq v13, v12, :cond_e

    .line 252
    .line 253
    if-eq v13, v11, :cond_d

    .line 254
    .line 255
    if-eq v13, v10, :cond_c

    .line 256
    .line 257
    if-eq v13, v9, :cond_b

    .line 258
    .line 259
    if-eq v13, v8, :cond_9

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_9
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v15

    .line 266
    sget-object v7, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    .line 268
    const-wide/16 v17, 0x3e8

    .line 269
    .line 270
    move-object/from16 v19, v6

    .line 271
    .line 272
    mul-long v5, v15, v17

    .line 273
    .line 274
    :try_start_3
    invoke-virtual {v3, v14, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 275
    .line 276
    .line 277
    :catch_1
    :cond_a
    :goto_3
    move-object/from16 v6, v19

    .line 278
    .line 279
    const/4 v5, 0x0

    .line 280
    goto :goto_1

    .line 281
    :catch_2
    move-object/from16 v19, v6

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_b
    move-object/from16 v19, v6

    .line 285
    .line 286
    instance-of v5, v15, Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v5, :cond_a

    .line 289
    .line 290
    check-cast v15, Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v15}, Lcom/google/android/gms/cast/internal/media/zza;->c(Ljava/lang/String;)Ljava/util/Calendar;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    if-eqz v5, :cond_a

    .line 297
    .line 298
    invoke-virtual {v3, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_c
    move-object/from16 v19, v6

    .line 303
    .line 304
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    if-nez v7, :cond_a

    .line 313
    .line 314
    invoke-virtual {v3, v14, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_d
    move-object/from16 v19, v6

    .line 319
    .line 320
    instance-of v5, v15, Ljava/lang/Integer;

    .line 321
    .line 322
    if-eqz v5, :cond_a

    .line 323
    .line 324
    check-cast v15, Ljava/lang/Integer;

    .line 325
    .line 326
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    invoke-virtual {v3, v14, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_e
    move-object/from16 v19, v6

    .line 335
    .line 336
    instance-of v5, v15, Ljava/lang/String;

    .line 337
    .line 338
    if-eqz v5, :cond_a

    .line 339
    .line 340
    check-cast v15, Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v3, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 343
    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_f
    move-object/from16 v19, v6

    .line 347
    .line 348
    :try_start_4
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    instance-of v6, v5, Ljava/lang/String;

    .line 353
    .line 354
    if-eqz v6, :cond_10

    .line 355
    .line 356
    check-cast v5, Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_10
    instance-of v6, v5, Ljava/lang/Integer;

    .line 363
    .line 364
    if-eqz v6, :cond_11

    .line 365
    .line 366
    check-cast v5, Ljava/lang/Integer;

    .line 367
    .line 368
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_11
    instance-of v6, v5, Ljava/lang/Double;

    .line 377
    .line 378
    if-eqz v6, :cond_a

    .line 379
    .line 380
    check-cast v5, Ljava/lang/Double;

    .line 381
    .line 382
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 383
    .line 384
    .line 385
    move-result-wide v5

    .line 386
    invoke-virtual {v3, v7, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :catch_3
    :cond_12
    return-void
.end method

.method public final F(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaMetadata;->X(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->C0(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    :goto_0
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_1
    add-int/2addr v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    return v1
.end method

.method public final k0()Lorg/json/JSONObject;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v2, "metadataType"

    .line 9
    .line 10
    iget v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/media/zza;->b(Ljava/util/List;)Lorg/json/JSONArray;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    :try_start_1
    const-string v3, "images"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    :catch_1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    .line 38
    .line 39
    const-string v4, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 40
    .line 41
    const/4 v5, 0x5

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x3

    .line 44
    const/4 v8, 0x2

    .line 45
    const-string v9, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 46
    .line 47
    const/4 v10, 0x1

    .line 48
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    .line 49
    .line 50
    if-eqz v3, :cond_6

    .line 51
    .line 52
    if-eq v3, v10, :cond_5

    .line 53
    .line 54
    if-eq v3, v8, :cond_4

    .line 55
    .line 56
    if-eq v3, v7, :cond_3

    .line 57
    .line 58
    if-eq v3, v6, :cond_2

    .line 59
    .line 60
    if-eq v3, v5, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 64
    .line 65
    const-string v4, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 66
    .line 67
    const-string v12, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 68
    .line 69
    filled-new-array {v12, v3, v11, v4, v9}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string v17, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 78
    .line 79
    const-string v18, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 80
    .line 81
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    .line 82
    .line 83
    const-string v12, "com.google.android.gms.cast.metadata.ARTIST"

    .line 84
    .line 85
    const-string v13, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 86
    .line 87
    const-string v14, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 88
    .line 89
    const-string v15, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 90
    .line 91
    const-string v16, "com.google.android.gms.cast.metadata.WIDTH"

    .line 92
    .line 93
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-string v17, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 102
    .line 103
    const-string v18, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 104
    .line 105
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    .line 106
    .line 107
    const-string v12, "com.google.android.gms.cast.metadata.ARTIST"

    .line 108
    .line 109
    const-string v13, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 110
    .line 111
    const-string v14, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 112
    .line 113
    const-string v15, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 114
    .line 115
    const-string v16, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 116
    .line 117
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    const-string v3, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 126
    .line 127
    const-string v4, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 128
    .line 129
    const-string v9, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 130
    .line 131
    const-string v12, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 132
    .line 133
    filled-new-array {v11, v9, v12, v3, v4}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    .line 142
    .line 143
    filled-new-array {v11, v3, v9, v4}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    .line 152
    .line 153
    filled-new-array {v11, v3, v9, v4}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :goto_0
    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 161
    .line 162
    const-string v4, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 163
    .line 164
    const-string v9, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 165
    .line 166
    const-string v11, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 167
    .line 168
    const-string v12, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 169
    .line 170
    filled-new-array {v9, v11, v12, v3, v4}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    const/4 v4, 0x0

    .line 182
    move v9, v4

    .line 183
    :cond_7
    :goto_1
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 184
    .line 185
    if-ge v9, v3, :cond_d

    .line 186
    .line 187
    :try_start_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    add-int/lit8 v9, v9, 0x1

    .line 192
    .line 193
    check-cast v12, Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v12, :cond_7

    .line 196
    .line 197
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_7

    .line 202
    .line 203
    sget-object v13, Lcom/google/android/gms/cast/MediaMetadata;->i:Lcom/google/android/gms/cast/zzbu;

    .line 204
    .line 205
    iget-object v14, v13, Lcom/google/android/gms/cast/zzbu;->a:Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    check-cast v14, Ljava/lang/String;

    .line 212
    .line 213
    if-eqz v14, :cond_7

    .line 214
    .line 215
    iget-object v13, v13, Lcom/google/android/gms/cast/zzbu;->c:Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    check-cast v13, Ljava/lang/Integer;

    .line 222
    .line 223
    if-eqz v13, :cond_8

    .line 224
    .line 225
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    goto :goto_2

    .line 230
    :cond_8
    move v13, v4

    .line 231
    :goto_2
    if-eq v13, v10, :cond_c

    .line 232
    .line 233
    if-eq v13, v8, :cond_b

    .line 234
    .line 235
    if-eq v13, v7, :cond_a

    .line 236
    .line 237
    if-eq v13, v6, :cond_c

    .line 238
    .line 239
    if-eq v13, v5, :cond_9

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_9
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v11

    .line 246
    sget-object v13, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 247
    .line 248
    long-to-double v11, v11

    .line 249
    const-wide v15, 0x408f400000000000L    # 1000.0

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    div-double/2addr v11, v15

    .line 255
    invoke-virtual {v1, v14, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_a
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 260
    .line 261
    .line 262
    move-result-wide v11

    .line 263
    invoke-virtual {v1, v14, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_b
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    invoke-virtual {v1, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_c
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v1, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_d
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_11

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Ljava/lang/String;

    .line 302
    .line 303
    const-string v4, "com.google."

    .line 304
    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-nez v4, :cond_e

    .line 310
    .line 311
    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    instance-of v5, v4, Ljava/lang/String;

    .line 316
    .line 317
    if-eqz v5, :cond_f

    .line 318
    .line 319
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_f
    instance-of v5, v4, Ljava/lang/Integer;

    .line 324
    .line 325
    if-eqz v5, :cond_10

    .line 326
    .line 327
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_10
    instance-of v5, v4, Ljava/lang/Double;

    .line 332
    .line 333
    if-eqz v5, :cond_e

    .line 334
    .line 335
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :catch_2
    :cond_11
    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
