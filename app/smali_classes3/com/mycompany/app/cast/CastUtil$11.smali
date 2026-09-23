.class Lcom/mycompany/app/cast/CastUtil$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/cast/CastUtil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/cast/CastUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$11;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil$11;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/cast/CastUtil;->j:Ljava/util/List;

    .line 8
    .line 9
    iget v4, v1, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 10
    .line 11
    iget-object v8, v1, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v1, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 14
    .line 15
    if-eqz v5, :cond_a

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v14

    .line 25
    if-nez v14, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v5, 0x1

    .line 41
    move v6, v5

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Ljava/lang/String;

    .line 53
    .line 54
    if-le v14, v5, :cond_2

    .line 55
    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v10, " ("

    .line 65
    .line 66
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v10, " / "

    .line 73
    .line 74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v10, ") "

    .line 81
    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    :goto_1
    move v10, v5

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-object v9, v2

    .line 92
    goto :goto_1

    .line 93
    :goto_2
    iget-object v5, v1, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 94
    .line 95
    const-string v12, "image/*"

    .line 96
    .line 97
    const/4 v13, 0x0

    .line 98
    move/from16 v16, v10

    .line 99
    .line 100
    const-wide/16 v10, 0x0

    .line 101
    .line 102
    move/from16 v17, v6

    .line 103
    .line 104
    move-object v6, v7

    .line 105
    invoke-static/range {v5 .. v13}, Lcom/mycompany/app/cast/CastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/gms/cast/MediaInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-nez v5, :cond_3

    .line 110
    .line 111
    move/from16 v5, v16

    .line 112
    .line 113
    move/from16 v6, v17

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    :try_start_0
    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 117
    .line 118
    invoke-direct {v6, v5}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    add-int/lit8 v6, v17, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :catch_0
    move/from16 v6, v17

    .line 132
    .line 133
    :goto_3
    move/from16 v5, v16

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    move/from16 v16, v5

    .line 137
    .line 138
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_5
    new-array v3, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 149
    .line 150
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/4 v6, 0x0

    .line 155
    move v7, v6

    .line 156
    move v8, v7

    .line 157
    :goto_4
    if-ge v8, v5, :cond_6

    .line 158
    .line 159
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    add-int/lit8 v8, v8, 0x1

    .line 164
    .line 165
    check-cast v9, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 166
    .line 167
    aput-object v9, v3, v7

    .line 168
    .line 169
    add-int/lit8 v7, v7, 0x1

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    if-lt v4, v2, :cond_7

    .line 173
    .line 174
    add-int/lit8 v4, v2, -0x1

    .line 175
    .line 176
    :cond_7
    if-gez v4, :cond_8

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_8
    move v6, v4

    .line 180
    :goto_5
    iput-object v3, v1, Lcom/mycompany/app/cast/CastUtil;->p:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 181
    .line 182
    iput v6, v1, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 183
    .line 184
    iget-object v2, v1, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 185
    .line 186
    if-nez v2, :cond_9

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_9
    new-instance v3, Lcom/mycompany/app/cast/CastUtil$12;

    .line 190
    .line 191
    invoke-direct {v3, v1}, Lcom/mycompany/app/cast/CastUtil$12;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    .line 196
    .line 197
    :goto_6
    return-void

    .line 198
    :cond_a
    :goto_7
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 199
    .line 200
    .line 201
    return-void
.end method
