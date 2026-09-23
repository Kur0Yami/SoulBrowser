.class Lcom/mycompany/app/setting/SettingFont$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$1;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$1;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->H1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    new-instance v4, Lcom/mycompany/app/setting/SettingFont$18;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 83
    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;

    .line 90
    .line 91
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->H1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 98
    .line 99
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 100
    .line 101
    const/4 v4, -0x1

    .line 102
    invoke-virtual {v1, v3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$19;

    .line 106
    .line 107
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingFont$19;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingFont;->S0(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingFont;->R0()V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$2;

    .line 122
    .line 123
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$2;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$3;

    .line 132
    .line 133
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$3;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$4;

    .line 142
    .line 143
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$4;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$5;

    .line 152
    .line 153
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$5;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->L1:Lcom/mycompany/app/view/MyRoundItem;

    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$6;

    .line 162
    .line 163
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$6;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 170
    .line 171
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 172
    .line 173
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/setting/SettingFont$7;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingFont$7;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 187
    .line 188
    new-instance v2, Lcom/mycompany/app/setting/SettingFont$8;

    .line 189
    .line 190
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingFont$8;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    new-instance v2, Lcom/mycompany/app/setting/SettingFont$9;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingFont$9;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 207
    .line 208
    if-nez v1, :cond_3

    .line 209
    .line 210
    :goto_2
    return-void

    .line 211
    :cond_3
    new-instance v2, Lcom/mycompany/app/setting/SettingFont$10;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingFont$10;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    return-void
.end method
