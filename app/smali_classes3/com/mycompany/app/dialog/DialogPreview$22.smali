.class Lcom/mycompany/app/dialog/DialogPreview$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$22;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$22;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->U0:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->U0:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->M()V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v5, "dcinside.com"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    const-string v5, "dcinside.co.kr"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    add-int/lit8 v5, v4, 0x1

    .line 59
    .line 60
    const-string v6, "viewmovie"

    .line 61
    .line 62
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    add-int/lit8 v4, v4, 0xa

    .line 70
    .line 71
    const-string v5, ".php"

    .line 72
    .line 73
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v5, -0x1

    .line 78
    if-ne v4, v5, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    add-int/lit8 v4, v4, -0x4

    .line 86
    .line 87
    const-string v6, "&type=mp4"

    .line 88
    .line 89
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eq v4, v5, :cond_6

    .line 94
    .line 95
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 96
    .line 97
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->f3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->f0:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 108
    .line 109
    if-nez v4, :cond_7

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v4, v1, v3}, Lcom/mycompany/app/main/MainUtil;->v0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_8

    .line 119
    .line 120
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 121
    .line 122
    invoke-virtual {v4, v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 127
    .line 128
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->G0:Landroid/view/GestureDetector;

    .line 132
    .line 133
    if-eqz v1, :cond_9

    .line 134
    .line 135
    :goto_2
    return-void

    .line 136
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 137
    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 141
    .line 142
    .line 143
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 144
    .line 145
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 146
    .line 147
    if-eqz v1, :cond_b

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j()V

    .line 150
    .line 151
    .line 152
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 153
    .line 154
    :cond_b
    new-instance v1, Landroid/view/GestureDetector;

    .line 155
    .line 156
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 157
    .line 158
    new-instance v3, Lcom/mycompany/app/dialog/DialogPreview$35;

    .line 159
    .line 160
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogPreview$35;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->G0:Landroid/view/GestureDetector;

    .line 167
    .line 168
    return-void
.end method
