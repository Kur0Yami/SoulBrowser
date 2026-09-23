.class Lcom/mycompany/app/web/WebSnsLoad$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$11;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$11;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->A:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->A:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    const-string v3, "url"

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->B0(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/web/WebSnsTask;->e(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 45
    const/4 v6, 0x1

    .line 46
    move-object v8, v2

    .line 47
    move v7, v5

    .line 48
    move v9, v6

    .line 49
    :goto_0
    if-ge v7, v4, :cond_6

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    if-nez v10, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    :try_start_2
    const-string v11, "video_versions"

    .line 59
    .line 60
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :try_start_3
    const-string v12, "image_versions2"

    .line 73
    .line 74
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const-string v12, "candidates"

    .line 79
    .line 80
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-object v11, v2

    .line 94
    :catch_1
    move-object v10, v2

    .line 95
    :goto_1
    :try_start_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-eqz v12, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    if-ne v9, v6, :cond_7

    .line 103
    .line 104
    const-string v12, "Insta Story"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_2
    :cond_6
    move-object v2, v8

    .line 108
    goto :goto_4

    .line 109
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v13, "Insta Story "

    .line 115
    .line 116
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    :goto_2
    new-instance v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 127
    .line 128
    const-string v14, "MP4"

    .line 129
    .line 130
    invoke-direct {v13, v9, v12, v14}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iput-object v11, v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v10, v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 136
    .line 137
    if-nez v8, :cond_8

    .line 138
    .line 139
    new-instance v10, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    move-object v8, v10

    .line 145
    :cond_8
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 146
    .line 147
    .line 148
    add-int/lit8 v9, v9, 0x1

    .line 149
    .line 150
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_3
    :goto_4
    if-eqz v2, :cond_9

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebSnsLoad;->e(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_9
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebSnsLoad;->z:Z

    .line 166
    .line 167
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 168
    .line 169
    if-nez v0, :cond_a

    .line 170
    .line 171
    :goto_5
    return-void

    .line 172
    :cond_a
    new-instance v1, Lcom/mycompany/app/web/WebSnsLoad$11$1;

    .line 173
    .line 174
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebSnsLoad$11$1;-><init>(Lcom/mycompany/app/web/WebSnsLoad$11;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    return-void
.end method
