.class public Lcom/mycompany/app/cast/CastOptionsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/OptionsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/cast/CastOptionsProvider$ImagePickerImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 22

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 7
    .line 8
    const-string v6, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 9
    .line 10
    const-string v1, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 11
    .line 12
    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    .line 13
    .line 14
    const-string v3, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 15
    .line 16
    const-string v4, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 17
    .line 18
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x5

    .line 27
    const/4 v3, 0x2

    .line 28
    filled-new-array {v3, v2}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-gt v3, v4, :cond_3

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    if-ge v5, v3, :cond_1

    .line 42
    .line 43
    aget v6, v2, v5

    .line 44
    .line 45
    if-ltz v6, :cond_0

    .line 46
    .line 47
    if-ge v6, v4, :cond_0

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    .line 56
    add-int/lit8 v4, v4, -0x1

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "Index "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, " in compatActionIndices out of range: [0, "

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "]"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->b:Ljava/util/AbstractCollection;

    .line 95
    .line 96
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->c:[I

    .line 101
    .line 102
    const-class v1, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object v2, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->a()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    .line 115
    .line 116
    invoke-direct {v2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lcom/mycompany/app/cast/CastOptionsProvider$ImagePickerImpl;

    .line 120
    .line 121
    invoke-direct {v3}, Lcom/google/android/gms/cast/framework/media/ImagePicker;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v3, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->b:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 125
    .line 126
    iput-object v0, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->a:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v0, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->b:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 135
    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    :goto_1
    move-object v6, v0

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/ImagePicker;->a:Lcom/google/android/gms/cast/framework/media/zzd;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :goto_2
    new-instance v3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 145
    .line 146
    iget-object v5, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->a:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v7, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    iget-boolean v9, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->d:Z

    .line 152
    .line 153
    const-string v4, "com.google.android.gms.cast.framework.media.MediaIntentReceiver"

    .line 154
    .line 155
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;ZZ)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    .line 159
    .line 160
    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v1, "6B292972"

    .line 164
    .line 165
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->a:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzhc;->b(Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/internal/cast/zzhc;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget-object v2, Lcom/google/android/gms/cast/framework/CastOptions;->y:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzhc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    move-object v8, v1

    .line 178
    check-cast v8, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 179
    .line 180
    sget-object v1, Lcom/google/android/gms/cast/framework/CastOptions;->w:Lcom/google/android/gms/cast/framework/zzj;

    .line 181
    .line 182
    const-string v2, "use Optional.orNull() instead of Optional.or(null)"

    .line 183
    .line 184
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/zzhd;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v3, Lcom/google/android/gms/cast/framework/CastOptions;->x:Lcom/google/android/gms/cast/framework/zzl;

    .line 188
    .line 189
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/cast/zzhd;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v2, Lcom/google/android/gms/cast/framework/CastOptions;

    .line 193
    .line 194
    move-object/from16 v19, v3

    .line 195
    .line 196
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->a:Ljava/lang/String;

    .line 197
    .line 198
    const/16 v20, 0x0

    .line 199
    .line 200
    const/16 v21, 0x0

    .line 201
    .line 202
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->b:Ljava/util/ArrayList;

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->c:Lcom/google/android/gms/cast/LaunchOptions;

    .line 206
    .line 207
    iget-boolean v7, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->d:Z

    .line 208
    .line 209
    iget-boolean v9, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->e:Z

    .line 210
    .line 211
    iget-wide v10, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->f:D

    .line 212
    .line 213
    const/4 v12, 0x0

    .line 214
    const/4 v13, 0x0

    .line 215
    const/4 v14, 0x0

    .line 216
    iget-object v15, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->g:Ljava/util/ArrayList;

    .line 217
    .line 218
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->h:Z

    .line 219
    .line 220
    const/16 v17, 0x0

    .line 221
    .line 222
    move/from16 v16, v0

    .line 223
    .line 224
    move-object/from16 v18, v1

    .line 225
    .line 226
    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/cast/framework/CastOptions;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZZZLjava/util/List;ZZLcom/google/android/gms/cast/framework/zzj;Lcom/google/android/gms/cast/framework/zzl;ZZ)V

    .line 227
    .line 228
    .line 229
    return-object v2

    .line 230
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 231
    .line 232
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 233
    .line 234
    const-string v1, "Invalid number of compat actions: 2 > "

    .line 235
    .line 236
    const-string v2, "."

    .line 237
    .line 238
    invoke-static {v4, v1, v2}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string v1, "When setting actions to null, you must also set compatActionIndices to null."

    .line 249
    .line 250
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0
.end method
