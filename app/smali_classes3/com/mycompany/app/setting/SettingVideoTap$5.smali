.class Lcom/mycompany/app/setting/SettingVideoTap$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoTap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap$5;->c:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap$5;->c:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

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
    goto/16 :goto_3

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
    if-ltz p1, :cond_c

    .line 28
    .line 29
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    if-lt p1, v0, :cond_3

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_3
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    goto/16 :goto_3

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
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    :cond_5
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    if-eqz v0, :cond_c

    .line 55
    .line 56
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 57
    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_6
    aget-object v3, v0, p1

    .line 63
    .line 64
    if-nez v3, :cond_7

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_7
    const/4 v0, 0x0

    .line 69
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 73
    .line 74
    aget v2, v2, p1

    .line 75
    .line 76
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 82
    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v7, "- : - 10"

    .line 86
    .line 87
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget v7, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 91
    .line 92
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const/4 v7, 0x1

    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    move v8, v7

    .line 107
    goto :goto_0

    .line 108
    :cond_8
    move v8, v0

    .line 109
    :goto_0
    invoke-direct {v5, v6, v0, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v8, "+ : + 10"

    .line 120
    .line 121
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sget v8, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 125
    .line 126
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-ne v7, v2, :cond_9

    .line 138
    .line 139
    move v8, v7

    .line 140
    goto :goto_1

    .line 141
    :cond_9
    move v8, v0

    .line 142
    :goto_1
    invoke-direct {v5, v6, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 149
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v8, "P : "

    .line 153
    .line 154
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget v8, Lnet/kaki87/soul2/testing/R$string;->pause:I

    .line 158
    .line 159
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const/4 v8, 0x2

    .line 171
    if-ne v8, v2, :cond_a

    .line 172
    .line 173
    move v9, v7

    .line 174
    goto :goto_2

    .line 175
    :cond_a
    move v9, v0

    .line 176
    :goto_2
    invoke-direct {v5, v6, v8, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 183
    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v8, "X : "

    .line 187
    .line 188
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sget v8, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 192
    .line 193
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    const/4 v8, 0x3

    .line 205
    if-ne v8, v2, :cond_b

    .line 206
    .line 207
    move v0, v7

    .line 208
    :cond_b
    invoke-direct {v5, v6, v8, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 215
    .line 216
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 217
    .line 218
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 219
    .line 220
    new-instance v6, Lcom/mycompany/app/setting/SettingVideoTap$8;

    .line 221
    .line 222
    invoke-direct {v6, v1, p1}, Lcom/mycompany/app/setting/SettingVideoTap$8;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;I)V

    .line 223
    .line 224
    .line 225
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 226
    .line 227
    .line 228
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 229
    .line 230
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 231
    .line 232
    :cond_c
    :goto_3
    return-void
.end method
