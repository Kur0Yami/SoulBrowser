.class Lcom/mycompany/app/video/VideoActivity$73;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$73;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$73;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->q1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity$73;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput-boolean v0, v2, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 7
    .line 8
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    const-string p2, "android.intent.action.OPEN_DOCUMENT"

    .line 11
    .line 12
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p2, "android.intent.category.OPENABLE"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p2, "*/*"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/16 p2, 0x41

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x9

    .line 31
    .line 32
    invoke-virtual {v2, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v2, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 36
    .line 37
    if-eqz p1, :cond_b

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_0
    if-ne p2, v0, :cond_1

    .line 45
    .line 46
    iput-boolean v0, v2, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 47
    .line 48
    new-instance p1, Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p2, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 51
    .line 52
    const-class v1, Lcom/mycompany/app/setting/SettingVideoSub;

    .line 53
    .line 54
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v2, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 61
    .line 62
    if-eqz p1, :cond_b

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :cond_1
    const/4 v1, 0x2

    .line 69
    if-ne p2, v1, :cond_2

    .line 70
    .line 71
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSub;->k:Z

    .line 72
    .line 73
    xor-int/2addr p1, v0

    .line 74
    sput-boolean p1, Lcom/mycompany/app/pref/PrefSub;->k:Z

    .line 75
    .line 76
    iget-object p2, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 77
    .line 78
    const/16 v1, 0xa

    .line 79
    .line 80
    const-string v3, "mShowSub"

    .line 81
    .line 82
    invoke-static {v1, p2, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    sget p1, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/mycompany/app/video/VideoActivity;->J1()V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_2
    const/4 v1, 0x3

    .line 92
    const/4 v8, 0x0

    .line 93
    if-ne p2, v1, :cond_3

    .line 94
    .line 95
    invoke-static {v2, v8}, Lcom/mycompany/app/video/VideoActivity;->P0(Lcom/mycompany/app/video/VideoActivity;Z)V

    .line 96
    .line 97
    .line 98
    return v0

    .line 99
    :cond_3
    const/4 v1, 0x4

    .line 100
    if-ne p2, v1, :cond_b

    .line 101
    .line 102
    iget-object p2, v2, Lcom/mycompany/app/video/VideoActivity;->P3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v2}, Lcom/mycompany/app/video/VideoActivity;->l1()V

    .line 108
    .line 109
    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    :goto_0
    return v8

    .line 113
    :cond_5
    iget-object p2, v2, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p2, v8}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 118
    .line 119
    .line 120
    :cond_6
    :try_start_1
    iget-object p2, v2, Lcom/mycompany/app/video/VideoActivity;->K3:Ljava/util/ArrayList;

    .line 121
    .line 122
    if-nez p2, :cond_7

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_2

    .line 130
    :catch_0
    :goto_1
    move p2, v8

    .line 131
    :goto_2
    iget v1, v2, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 132
    .line 133
    if-lt v1, p2, :cond_8

    .line 134
    .line 135
    move v1, v8

    .line 136
    :cond_8
    sget v3, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    move v4, v8

    .line 148
    :goto_3
    if-ge v4, p2, :cond_a

    .line 149
    .line 150
    const-string v6, " "

    .line 151
    .line 152
    invoke-static {v3, v6}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    add-int/lit8 v7, v4, 0x1

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    new-instance v9, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    if-ne v4, v1, :cond_9

    .line 168
    .line 169
    move v10, v0

    .line 170
    goto :goto_4

    .line 171
    :cond_9
    move v10, v8

    .line 172
    :goto_4
    invoke-direct {v9, v6, v4, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move v4, v7

    .line 179
    goto :goto_3

    .line 180
    :cond_a
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 181
    .line 182
    iget-object v3, v2, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 183
    .line 184
    new-instance v7, Lcom/mycompany/app/video/VideoActivity$74;

    .line 185
    .line 186
    invoke-direct {v7, v2, p2}, Lcom/mycompany/app/video/VideoActivity$74;-><init>(Lcom/mycompany/app/video/VideoActivity;I)V

    .line 187
    .line 188
    .line 189
    const/4 v6, 0x1

    .line 190
    move-object v4, p1

    .line 191
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 192
    .line 193
    .line 194
    iput-object v1, v2, Lcom/mycompany/app/video/VideoActivity;->P3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 195
    .line 196
    iput v0, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 197
    .line 198
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 199
    .line 200
    return v8

    .line 201
    :catch_1
    :cond_b
    :goto_5
    return v0
.end method
