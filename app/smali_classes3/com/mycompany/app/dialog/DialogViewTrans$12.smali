.class Lcom/mycompany/app/dialog/DialogViewTrans$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$12;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$12;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->j0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    :goto_0
    move-object v1, v3

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v2, "\u00a0"

    .line 15
    .line 16
    const-string v4, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    :cond_2
    const/4 v2, 0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static {v2, v4}, Lcom/mycompany/app/web/WebReadTask;->o(ZZ)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v7, "\n"

    .line 53
    .line 54
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const-string v8, "</p>"

    .line 59
    .line 60
    const-string v9, "\'>"

    .line 61
    .line 62
    const-string v10, "<p id=\'"

    .line 63
    .line 64
    if-eqz v7, :cond_5

    .line 65
    .line 66
    array-length v11, v7

    .line 67
    if-le v11, v2, :cond_5

    .line 68
    .line 69
    array-length v1, v7

    .line 70
    move v2, v4

    .line 71
    :goto_2
    if-ge v4, v1, :cond_6

    .line 72
    .line 73
    aget-object v11, v7, v4

    .line 74
    .line 75
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v12, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    new-instance v12, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 94
    .line 95
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iput v2, v12, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 99
    .line 100
    iput-object v11, v12, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v11, v12, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 109
    .line 110
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v11, v12, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    iput v4, v2, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 135
    .line 136
    iput-object v1, v2, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v1, v2, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 145
    .line 146
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v1, v2, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_6
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->D0:Ljava/util/ArrayList;

    .line 161
    .line 162
    const-string v1, "</body></html>"

    .line 163
    .line 164
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e1:Ljava/lang/String;

    .line 172
    .line 173
    const-string v1, "soul_trans_"

    .line 174
    .line 175
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->W0:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 182
    .line 183
    if-nez v0, :cond_7

    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewTrans$12$1;

    .line 187
    .line 188
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$12$1;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans$12;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    return-void
.end method
