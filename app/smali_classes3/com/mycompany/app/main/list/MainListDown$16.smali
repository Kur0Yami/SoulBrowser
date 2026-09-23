.class Lcom/mycompany/app/main/list/MainListDown$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;Lcom/mycompany/app/main/MainItem$ChildItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$16;->g:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown$16;->c:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/list/MainListDown$16;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$16;->g:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListDown$16;->c:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    iget v4, p0, Lcom/mycompany/app/main/list/MainListDown$16;->f:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-ne v4, v3, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->I3(Ljava/io/File;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    :cond_2
    :goto_0
    move-object v1, v5

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    array-length v4, v3

    .line 68
    if-nez v4, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    const/4 v4, 0x0

    .line 72
    aget-object v3, v3, v4

    .line 73
    .line 74
    if-nez v3, :cond_6

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v3, :cond_7

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_8

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_8
    const-string v7, "vf"

    .line 92
    .line 93
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_9

    .line 98
    .line 99
    add-int/lit8 v6, v6, -0x2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_9
    const-string v7, "v"

    .line 103
    .line 104
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    add-int/lit8 v6, v6, -0x1

    .line 111
    .line 112
    :goto_1
    if-nez v6, :cond_a

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    :goto_2
    if-lez v6, :cond_b

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    add-int/lit8 v6, v6, -0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "/"

    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    new-instance v1, Ljava/io/File;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    if-eqz v1, :cond_e

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    const-wide/16 v6, 0x0

    .line 167
    .line 168
    cmp-long v3, v3, v6

    .line 169
    .line 170
    if-nez v3, :cond_c

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_c
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->R3(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez v1, :cond_d

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_d
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    :cond_e
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_f

    .line 195
    .line 196
    iget-object v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 197
    .line 198
    :cond_f
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 199
    .line 200
    if-nez v0, :cond_10

    .line 201
    .line 202
    return-void

    .line 203
    :cond_10
    new-instance v1, Lcom/mycompany/app/main/list/MainListDown$16$1;

    .line 204
    .line 205
    invoke-direct {v1, p0, v5}, Lcom/mycompany/app/main/list/MainListDown$16$1;-><init>(Lcom/mycompany/app/main/list/MainListDown$16;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 209
    .line 210
    .line 211
    return-void
.end method
