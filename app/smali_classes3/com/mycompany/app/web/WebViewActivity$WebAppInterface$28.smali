.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onDcDet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$28;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$28;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Dh:I

    .line 6
    .line 7
    iget-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->Eh:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->Fh:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->Gh:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v5, v2, Lcom/mycompany/app/web/WebViewActivity;->Hh:Z

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iput-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->Eh:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->Fh:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->Gh:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->fb:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->L3()V

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    sget v0, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 38
    .line 39
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const/4 v6, 0x1

    .line 44
    const/4 v7, 0x2

    .line 45
    const/4 v8, 0x0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    if-ne v0, v7, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v0, v8

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    move v0, v6

    .line 54
    :goto_1
    iput-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Jn:Z

    .line 55
    .line 56
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->Kn:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->Ln:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->Mn:Ljava/lang/String;

    .line 61
    .line 62
    move v1, v5

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 71
    .line 72
    const-string v3, "\uba54\ubaa8 \uc0ad\uc81c"

    .line 73
    .line 74
    invoke-direct {v1, v8, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 81
    .line 82
    const-string v3, "\uba54\ubaa8 \uc791\uc131"

    .line 83
    .line 84
    invoke-direct {v1, v6, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 91
    .line 92
    const-string v3, "\uba54\ubaa8 \ubaa9\ub85d"

    .line 93
    .line 94
    invoke-direct {v1, v7, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 101
    .line 102
    const/4 v3, 0x3

    .line 103
    const-string v4, "\uc791\uc131\uae00 (\ud604\uc7ac \uac24\ub7ec\ub9ac)"

    .line 104
    .line 105
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 112
    .line 113
    const/4 v3, 0x4

    .line 114
    const-string v4, "\uc791\uc131\uae00 (\uc804\uccb4 \uac24\ub7ec\ub9ac)"

    .line 115
    .line 116
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 125
    .line 126
    const/4 v1, 0x5

    .line 127
    const-string v3, "IP \uc870\ud68c"

    .line 128
    .line 129
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 136
    .line 137
    const/16 v1, 0x8

    .line 138
    .line 139
    const-string v3, "\uad6d\uac00 \ud45c\uc2dc"

    .line 140
    .line 141
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 149
    .line 150
    const/4 v1, 0x6

    .line 151
    const-string v3, "\uac24\ub85c\uadf8 \uc870\ud68c"

    .line 152
    .line 153
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :goto_2
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 160
    .line 161
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 162
    .line 163
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 164
    .line 165
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    new-instance v7, Lcom/mycompany/app/web/WebViewActivity$621;

    .line 170
    .line 171
    invoke-direct {v7, v2}, Lcom/mycompany/app/web/WebViewActivity$621;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 172
    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->fb:Lcom/mycompany/app/view/MyPopupMenu;

    .line 179
    .line 180
    iget v0, v2, Lcom/mycompany/app/web/WebViewActivity;->V9:F

    .line 181
    .line 182
    float-to-int v0, v0

    .line 183
    iget v3, v2, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 184
    .line 185
    float-to-int v3, v3

    .line 186
    iput v0, v1, Lcom/mycompany/app/view/MyPopupMenu;->e:I

    .line 187
    .line 188
    iput v3, v1, Lcom/mycompany/app/view/MyPopupMenu;->f:I

    .line 189
    .line 190
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 191
    .line 192
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 193
    .line 194
    if-nez v0, :cond_6

    .line 195
    .line 196
    :goto_3
    return-void

    .line 197
    :cond_6
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$622;

    .line 198
    .line 199
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$622;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 203
    .line 204
    .line 205
    return-void
.end method
