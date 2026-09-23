.class Lcom/mycompany/app/setting/SettingSwipe$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$6;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe$6;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ltz p1, :cond_d

    .line 28
    .line 29
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    if-lt p1, v0, :cond_3

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_3
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_4
    if-eqz v0, :cond_5

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 48
    .line 49
    .line 50
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    :cond_5
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    if-eqz v0, :cond_d

    .line 55
    .line 56
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 57
    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_6
    aget-object v3, v0, p1

    .line 63
    .line 64
    if-nez v3, :cond_7

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_7
    const/4 v0, 0x0

    .line 69
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 73
    .line 74
    aget v2, v2, p1

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    if-eq p1, v4, :cond_9

    .line 78
    .line 79
    const/4 v5, 0x3

    .line 80
    if-ne p1, v5, :cond_8

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "X : "

    .line 86
    .line 87
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget v6, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 91
    .line 92
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    :goto_0
    move v6, v4

    .line 104
    goto :goto_2

    .line 105
    :cond_9
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v6, "S : "

    .line 108
    .line 109
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget v6, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 113
    .line 114
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    goto :goto_0

    .line 126
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 132
    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v9, "P : "

    .line 136
    .line 137
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget v9, Lnet/kaki87/soul2/testing/R$string;->page_move:I

    .line 141
    .line 142
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    const/4 v9, 0x1

    .line 154
    if-nez v2, :cond_a

    .line 155
    .line 156
    move v10, v9

    .line 157
    goto :goto_3

    .line 158
    :cond_a
    move v10, v0

    .line 159
    :goto_3
    invoke-direct {v7, v8, v0, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 166
    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v10, "T : "

    .line 170
    .line 171
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget v10, Lnet/kaki87/soul2/testing/R$string;->tab_move:I

    .line 175
    .line 176
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    if-ne v9, v2, :cond_b

    .line 188
    .line 189
    move v10, v9

    .line 190
    goto :goto_4

    .line 191
    :cond_b
    move v10, v0

    .line 192
    :goto_4
    invoke-direct {v7, v8, v9, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 199
    .line 200
    if-ne v6, v2, :cond_c

    .line 201
    .line 202
    move v0, v9

    .line 203
    :cond_c
    invoke-direct {v7, v5, v6, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 210
    .line 211
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 212
    .line 213
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 214
    .line 215
    new-instance v6, Lcom/mycompany/app/setting/SettingSwipe$9;

    .line 216
    .line 217
    invoke-direct {v6, v1, p1}, Lcom/mycompany/app/setting/SettingSwipe$9;-><init>(Lcom/mycompany/app/setting/SettingSwipe;I)V

    .line 218
    .line 219
    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 221
    .line 222
    .line 223
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 224
    .line 225
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 226
    .line 227
    :cond_d
    :goto_5
    return-void
.end method
