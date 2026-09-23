.class Lcom/mycompany/app/web/WebViewActivity$277;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$277;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$277;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$277;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$277;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 16
    .line 17
    .line 18
    const-string v2, "tel:"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_c

    .line 25
    .line 26
    const-string v2, "mailto:"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_c

    .line 33
    .line 34
    const-string v2, "sms:"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    const-string v2, "intent://search.app.goo.gl"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const-string v2, "googleapp://lens"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->A4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_d

    .line 73
    .line 74
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const-string v2, "cid:frame-"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    const-string v2, "@mhtml.blink"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_3
    const-string v2, "yahoo.co.jp"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v3, 0x0

    .line 102
    const/4 v4, 0x1

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->Z1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    move-object v2, v3

    .line 111
    :goto_0
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    if-ne v5, v4, :cond_5

    .line 115
    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_5

    .line 121
    .line 122
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->Z1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_7

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$281;

    .line 139
    .line 140
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity$281;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->K6(Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    invoke-virtual {v1, v3, v2, v4, v3}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 152
    .line 153
    if-nez v2, :cond_a

    .line 154
    .line 155
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->A4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 160
    .line 161
    if-eqz v2, :cond_8

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_d

    .line 168
    .line 169
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 170
    .line 171
    return-void

    .line 172
    :cond_8
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_9

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$281;

    .line 179
    .line 180
    invoke-direct {v2, v1, v0}, Lcom/mycompany/app/web/WebViewActivity$281;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->K6(Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_9
    invoke-virtual {v1, v3, v0, v4, v3}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_a
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_b

    .line 196
    .line 197
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 198
    .line 199
    :cond_b
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->Z1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->d9(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_c
    :goto_1
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->A4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 212
    .line 213
    if-eqz v2, :cond_d

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_d

    .line 220
    .line 221
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 222
    .line 223
    :cond_d
    :goto_2
    return-void
.end method
