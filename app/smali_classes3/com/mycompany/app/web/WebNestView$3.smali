.class Lcom/mycompany/app/web/WebNestView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$3;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$3;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->v1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->w1:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->x1:Z

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebNestView;->y1:Z

    .line 10
    .line 11
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebNestView;->z1:Z

    .line 12
    .line 13
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebNestView;->A1:Z

    .line 14
    .line 15
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->B1:Z

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    iput-object v8, v0, Lcom/mycompany/app/web/WebNestView;->v1:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v8, v0, Lcom/mycompany/app/web/WebNestView;->w1:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v9, v0, Lcom/mycompany/app/web/WebNestView;->c:Z

    .line 23
    .line 24
    if-nez v9, :cond_0

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    iget v9, v0, Lcom/mycompany/app/web/WebNestView;->i:I

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    if-eq v9, v10, :cond_1

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_1
    iget-boolean v9, v0, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/web/WebNestView$31;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$31;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    move v2, v10

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->F()Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->n1:Z

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->reload()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    if-eqz v5, :cond_6

    .line 71
    .line 72
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 73
    .line 74
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->i7(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 78
    .line 79
    .line 80
    :cond_6
    move v2, v11

    .line 81
    :goto_1
    if-eqz v6, :cond_9

    .line 82
    .line 83
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 84
    .line 85
    if-eqz v3, :cond_9

    .line 86
    .line 87
    if-eqz v7, :cond_7

    .line 88
    .line 89
    invoke-virtual {v3, v10}, Lcom/mycompany/app/quick/QuickView;->setColor(Z)V

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object v4, v3, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 93
    .line 94
    if-eqz v4, :cond_9

    .line 95
    .line 96
    iget-boolean v4, v4, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 97
    .line 98
    if-eqz v4, :cond_8

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_8
    iget-boolean v4, v3, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Lcom/mycompany/app/quick/QuickView;->v(Z)V

    .line 104
    .line 105
    .line 106
    :cond_9
    :goto_2
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->j:Z

    .line 107
    .line 108
    if-eqz v3, :cond_a

    .line 109
    .line 110
    if-nez v2, :cond_a

    .line 111
    .line 112
    move v2, v10

    .line 113
    goto :goto_3

    .line 114
    :cond_a
    move v2, v11

    .line 115
    :goto_3
    iput-boolean v11, v0, Lcom/mycompany/app/web/WebNestView;->j:Z

    .line 116
    .line 117
    if-eqz v2, :cond_10

    .line 118
    .line 119
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 120
    .line 121
    if-eqz v2, :cond_10

    .line 122
    .line 123
    sget-boolean v2, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 124
    .line 125
    if-nez v2, :cond_b

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_10

    .line 133
    .line 134
    const-string v2, "file:///android_asset/shortcut.html"

    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_c

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_c
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->r1:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_d

    .line 150
    .line 151
    move v10, v11

    .line 152
    goto :goto_4

    .line 153
    :cond_d
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_e

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    :goto_4
    if-eqz v10, :cond_f

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_f
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->D2:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v1, Lcom/mycompany/app/web/WebNestView$32;

    .line 174
    .line 175
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebNestView$32;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    :cond_10
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->y:Lcom/mycompany/app/web/WebNestView$WebBackListener;

    .line 182
    .line 183
    if-eqz v1, :cond_11

    .line 184
    .line 185
    invoke-interface {v1}, Lcom/mycompany/app/web/WebNestView$WebBackListener;->a()V

    .line 186
    .line 187
    .line 188
    iput-object v8, v0, Lcom/mycompany/app/web/WebNestView;->y:Lcom/mycompany/app/web/WebNestView$WebBackListener;

    .line 189
    .line 190
    :cond_11
    :goto_6
    return-void
.end method
