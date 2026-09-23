.class Lcom/mycompany/app/dialog/DialogCreateAlbum$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19$1;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$19;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;->f:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->y0(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y1:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y1:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, "/"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->V0:Ljava/lang/String;

    .line 58
    .line 59
    const-string v6, "_"

    .line 60
    .line 61
    invoke-static {v4, v5, v6}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->x0(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/4 v6, 0x1

    .line 76
    move v7, v6

    .line 77
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_5

    .line 82
    .line 83
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 90
    .line 91
    if-nez v9, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-static {v4}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const/4 v11, 0x0

    .line 103
    if-nez v10, :cond_3

    .line 104
    .line 105
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    new-array v13, v6, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v12, v13, v11

    .line 114
    .line 115
    invoke-static {v10, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-static {v8, v11}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-nez v11, :cond_4

    .line 135
    .line 136
    const-string v11, "."

    .line 137
    .line 138
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    new-instance v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 147
    .line 148
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v8, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d0:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v8, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    iput-object v8, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 168
    .line 169
    new-instance v2, Ljava/io/File;

    .line 170
    .line 171
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y1:Ljava/lang/String;

    .line 172
    .line 173
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 177
    .line 178
    .line 179
    :goto_2
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 180
    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_6

    .line 188
    .line 189
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 190
    .line 191
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;->c:Z

    .line 192
    .line 193
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->C(Lcom/mycompany/app/dialog/DialogCreateAlbum;Ljava/util/ArrayList;Z)V

    .line 194
    .line 195
    .line 196
    :cond_6
    return-void
.end method
