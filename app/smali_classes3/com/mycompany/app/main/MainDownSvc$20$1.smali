.class Lcom/mycompany/app/main/MainDownSvc$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$20;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    iget v0, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/mycompany/app/main/MainDownSvc$20;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_10

    .line 28
    .line 29
    array-length v2, v0

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/mycompany/app/main/MainDownSvc$20;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 37
    .line 38
    iget v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    .line 39
    .line 40
    iget v2, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 41
    .line 42
    const/16 v4, 0xf

    .line 43
    .line 44
    if-ne v2, v4, :cond_2

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    :cond_2
    array-length v2, v0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v9, v5

    .line 52
    move v7, v6

    .line 53
    move v8, v7

    .line 54
    :goto_0
    if-ge v7, v2, :cond_6

    .line 55
    .line 56
    aget-object v10, v0, v7

    .line 57
    .line 58
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string v12, "f"

    .line 70
    .line 71
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-nez v12, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-object v12, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 79
    .line 80
    iget-object v12, v12, Lcom/mycompany/app/main/MainDownSvc$20;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 81
    .line 82
    iget v12, v12, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 83
    .line 84
    if-ne v12, v4, :cond_5

    .line 85
    .line 86
    const-string v12, "af"

    .line 87
    .line 88
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-eqz v11, :cond_5

    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    const-wide/16 v13, 0x0

    .line 99
    .line 100
    cmp-long v11, v11, v13

    .line 101
    .line 102
    if-eqz v11, :cond_5

    .line 103
    .line 104
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 109
    .line 110
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    if-ge v8, v3, :cond_7

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 118
    .line 119
    iget-object v2, v2, Lcom/mycompany/app/main/MainDownSvc$20;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 122
    .line 123
    if-nez v2, :cond_8

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_8
    if-ne v3, v1, :cond_a

    .line 127
    .line 128
    aget-object v0, v0, v6

    .line 129
    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    :cond_9
    move v0, v1

    .line 137
    move-object v9, v5

    .line 138
    goto :goto_2

    .line 139
    :cond_a
    move v0, v6

    .line 140
    :goto_2
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 141
    .line 142
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$20;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/mycompany/app/main/MainDownSvc$20;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_b
    :try_start_0
    iget-object v4, v3, Lcom/mycompany/app/main/MainDownSvc;->i:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    iget v5, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 153
    .line 154
    if-eq v5, v1, :cond_c

    .line 155
    .line 156
    monitor-exit v4

    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto :goto_4

    .line 160
    :cond_c
    const/4 v1, 0x7

    .line 161
    iput v1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 162
    .line 163
    iput-boolean v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->Q:Z

    .line 164
    .line 165
    iput-boolean v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->R:Z

    .line 166
    .line 167
    iput-object v9, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->S:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 170
    .line 171
    if-nez v0, :cond_d

    .line 172
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v0, v3, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    monitor-exit v4

    .line 184
    goto :goto_3

    .line 185
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_e

    .line 190
    .line 191
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$20$1;->c:Lcom/mycompany/app/main/MainDownSvc$20;

    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$20;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$20;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 202
    .line 203
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainDownSvc;->d(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_e
    :try_start_2
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_f

    .line 214
    .line 215
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    monitor-exit v4

    .line 221
    return-void

    .line 222
    :cond_f
    monitor-exit v4

    .line 223
    return-void

    .line 224
    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 226
    :catch_0
    :cond_10
    :goto_5
    return-void
.end method
