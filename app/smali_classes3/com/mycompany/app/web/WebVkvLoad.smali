.class public Lcom/mycompany/app/web/WebVkvLoad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebVkvLoad$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebVkvLoad$WebAppInterface;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

.field public d:Landroid/view/ViewGroup;

.field public e:Lcom/mycompany/app/view/MyWebSafe;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->b:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/mycompany/app/web/WebVkvLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/mycompany/app/web/WebVkvLoad;->d:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-string p1, "https://m.vkvideo.ru"

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p2, "https://m.vk.com"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x14

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->g:Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput-object p3, p0, Lcom/mycompany/app/web/WebVkvLoad;->g:Ljava/lang/String;

    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->d:Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance p2, Lcom/mycompany/app/web/WebVkvLoad$1;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVkvLoad$1;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/mycompany/app/web/WebVkvLoad;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->h:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->h:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebVkvLoad$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVkvLoad$3;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->h:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->h:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebVkvLoad$4;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVkvLoad$4;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_1

    .line 5
    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    const-string v2, "files"

    .line 8
    .line 9
    iget-object v3, p1, Lcom/google/gson/JsonObject;->c:Lcom/google/gson/internal/LinkedTreeMap;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/gson/JsonObject;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object v3, v2, Lcom/google/gson/JsonObject;->c:Lcom/google/gson/internal/LinkedTreeMap;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/google/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    move-object v4, v0

    .line 32
    move v5, v1

    .line 33
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_6

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v7, p0, Lcom/mycompany/app/web/WebVkvLoad;->b:Landroid/content/Context;

    .line 46
    .line 47
    if-nez v7, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string v7, "mp4_"

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v8, 0x4

    .line 79
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    new-instance v9, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 88
    .line 89
    const-string v10, "MP4"

    .line 90
    .line 91
    invoke-direct {v9, v5, v6, v10}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v7, v9, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 95
    .line 96
    iput v8, v9, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->j:I

    .line 97
    .line 98
    if-nez v4, :cond_5

    .line 99
    .line 100
    new-instance v6, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    move-object v4, v6

    .line 106
    :cond_5
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-object v4, v0

    .line 113
    :catch_1
    :cond_6
    if-eqz v4, :cond_b

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebSnsTask$SortSize;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    :try_start_2
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    .line 129
    .line 130
    :catch_2
    iget-object v2, p0, Lcom/mycompany/app/web/WebVkvLoad;->b:Landroid/content/Context;

    .line 131
    .line 132
    if-nez v2, :cond_8

    .line 133
    .line 134
    :goto_1
    return-object v0

    .line 135
    :cond_8
    :try_start_3
    const-string v0, "image"

    .line 136
    .line 137
    iget-object p1, p1, Lcom/google/gson/JsonObject;->c:Lcom/google/gson/internal/LinkedTreeMap;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 144
    .line 145
    if-nez p1, :cond_9

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->q(I)Lcom/google/gson/JsonElement;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 153
    .line 154
    const-string v0, "url"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_a

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :goto_2
    if-ge v1, v0, :cond_b

    .line 180
    .line 181
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    check-cast v2, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 188
    .line 189
    iput-object p1, v2, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_3
    :cond_b
    :goto_3
    return-object v4
.end method

.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVkvLoad;->j:I

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    if-le v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebVkvLoad;->d:Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebVkvLoad$8;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVkvLoad$8;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lcom/mycompany/app/web/WebVkvLoad;->j:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVkvLoad;->i:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/web/WebVkvLoad;->d:Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVkvLoad$9;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVkvLoad$9;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v2, 0xc8

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
