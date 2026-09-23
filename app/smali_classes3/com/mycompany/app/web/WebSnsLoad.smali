.class public Lcom/mycompany/app/web/WebSnsLoad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;,
        Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebSnsLoad$WebAppInterface;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public final B:Ljava/lang/Runnable;

.field public C:Ljava/lang/String;

.field public final D:Ljava/lang/Runnable;

.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

.field public d:Landroid/view/ViewGroup;

.field public e:Lcom/mycompany/app/view/MyWebSafe;

.field public f:Z

.field public final g:I

.field public final h:I

.field public i:Ljava/lang/String;

.field public final j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/mycompany/app/web/WebNestView;

.field public final o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Lcom/mycompany/app/web/WebSnsTask;

.field public u:Lcom/mycompany/app/web/WebSnsTwit;

.field public v:Lcom/mycompany/app/web/WebSnsInsta;

.field public w:Z

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;IIILcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$12;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$12;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->B:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$16;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$16;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->D:Ljava/lang/Runnable;

    .line 17
    .line 18
    if-eqz p1, :cond_d

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->b:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p8, p0, Lcom/mycompany/app/web/WebSnsLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 35
    .line 36
    iput p5, p0, Lcom/mycompany/app/web/WebSnsLoad;->g:I

    .line 37
    .line 38
    iput p6, p0, Lcom/mycompany/app/web/WebSnsLoad;->h:I

    .line 39
    .line 40
    iput-object p4, p0, Lcom/mycompany/app/web/WebSnsLoad;->i:Ljava/lang/String;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 44
    .line 45
    const/4 p5, 0x0

    .line 46
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebSnsLoad;->r:Z

    .line 47
    .line 48
    iput p5, p0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 49
    .line 50
    if-nez p6, :cond_b

    .line 51
    .line 52
    const/4 p3, 0x2

    .line 53
    iput p3, p0, Lcom/mycompany/app/web/WebSnsLoad;->j:I

    .line 54
    .line 55
    iget-object p6, p0, Lcom/mycompany/app/web/WebSnsLoad;->u:Lcom/mycompany/app/web/WebSnsTwit;

    .line 56
    .line 57
    if-nez p6, :cond_d

    .line 58
    .line 59
    new-instance p6, Lcom/mycompany/app/web/WebSnsTwit;

    .line 60
    .line 61
    iget-object p7, p0, Lcom/mycompany/app/web/WebSnsLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 62
    .line 63
    new-instance p8, Lcom/mycompany/app/web/WebSnsLoad$9;

    .line 64
    .line 65
    invoke-direct {p8, p0}, Lcom/mycompany/app/web/WebSnsLoad$9;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    if-eqz p7, :cond_a

    .line 72
    .line 73
    iput-object p7, p6, Lcom/mycompany/app/web/WebSnsTwit;->a:Lcom/mycompany/app/main/MainActivity;

    .line 74
    .line 75
    invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p7

    .line 79
    iput-object p7, p6, Lcom/mycompany/app/web/WebSnsTwit;->b:Landroid/content/Context;

    .line 80
    .line 81
    iput-object p8, p6, Lcom/mycompany/app/web/WebSnsTwit;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 82
    .line 83
    iput-object p2, p6, Lcom/mycompany/app/web/WebSnsTwit;->d:Landroid/view/ViewGroup;

    .line 84
    .line 85
    iput-object p4, p6, Lcom/mycompany/app/web/WebSnsTwit;->g:Ljava/lang/String;

    .line 86
    .line 87
    :try_start_0
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 88
    .line 89
    const/4 p4, 0x0

    .line 90
    if-nez p2, :cond_1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    const/4 p7, 0x4

    .line 94
    if-nez p2, :cond_2

    .line 95
    .line 96
    :goto_0
    move-object p2, p4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    sget-object p2, Lcom/mycompany/app/main/MainNative;->x:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-static {p7, p2}, Lcom/mycompany/app/main/MainNative;->a(ILjava/util/List;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    sget-object p2, Lcom/mycompany/app/main/MainNative;->x:Ljava/util/ArrayList;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    move p8, p5

    .line 115
    :goto_1
    if-ge p8, p7, :cond_5

    .line 116
    .line 117
    invoke-static {p8}, Lcom/mycompany/app/main/MainUtil;->getTwitReq(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 p8, p8, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    sput-object p2, Lcom/mycompany/app/main/MainNative;->x:Ljava/util/ArrayList;

    .line 135
    .line 136
    :goto_2
    if-eqz p2, :cond_7

    .line 137
    .line 138
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result p8

    .line 142
    if-eq p8, p7, :cond_6

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    move-object p4, p2

    .line 146
    :cond_7
    :goto_3
    if-nez p4, :cond_8

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Ljava/lang/String;

    .line 154
    .line 155
    iput-object p2, p6, Lcom/mycompany/app/web/WebSnsTwit;->h:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/String;

    .line 162
    .line 163
    iput-object p1, p6, Lcom/mycompany/app/web/WebSnsTwit;->i:Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Ljava/lang/String;

    .line 170
    .line 171
    iput-object p1, p6, Lcom/mycompany/app/web/WebSnsTwit;->j:Ljava/lang/String;

    .line 172
    .line 173
    const/4 p1, 0x3

    .line 174
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Ljava/lang/String;

    .line 179
    .line 180
    iput-object p1, p6, Lcom/mycompany/app/web/WebSnsTwit;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    :catch_0
    :goto_4
    iget-object p1, p6, Lcom/mycompany/app/web/WebSnsTwit;->d:Landroid/view/ViewGroup;

    .line 183
    .line 184
    if-nez p1, :cond_9

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_9
    new-instance p2, Lcom/mycompany/app/web/WebSnsTwit$1;

    .line 188
    .line 189
    invoke-direct {p2, p6}, Lcom/mycompany/app/web/WebSnsTwit$1;-><init>(Lcom/mycompany/app/web/WebSnsTwit;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_5
    iput-object p6, p0, Lcom/mycompany/app/web/WebSnsLoad;->u:Lcom/mycompany/app/web/WebSnsTwit;

    .line 196
    .line 197
    return-void

    .line 198
    :cond_b
    if-ne p6, p1, :cond_c

    .line 199
    .line 200
    iput p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->j:I

    .line 201
    .line 202
    iput-object p3, p0, Lcom/mycompany/app/web/WebSnsLoad;->n:Lcom/mycompany/app/web/WebNestView;

    .line 203
    .line 204
    iput p7, p0, Lcom/mycompany/app/web/WebSnsLoad;->o:I

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_c
    iput p5, p0, Lcom/mycompany/app/web/WebSnsLoad;->j:I

    .line 208
    .line 209
    :goto_6
    new-instance p1, Lcom/mycompany/app/web/WebSnsLoad$1;

    .line 210
    .line 211
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebSnsLoad$1;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    :cond_d
    :goto_7
    return-void
.end method

.method public static a(Lcom/mycompany/app/web/WebSnsLoad;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->w:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->w:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$3;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->w:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->w:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$4;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$4;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static b(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->j:I

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->K2(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->k:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebSnsLoad;->e(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    new-instance v0, Lcom/mycompany/app/view/MyWebSafe;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/mycompany/app/web/WebSnsLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 44
    .line 45
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/mycompany/app/web/WebSnsLoad;->b:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 64
    .line 65
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    const/4 v4, -0x1

    .line 68
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 75
    .line 76
    new-instance v1, Lcom/mycompany/app/web/WebSnsLoad$2;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebSnsLoad$2;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->r:Z

    .line 11
    .line 12
    iput v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/mycompany/app/web/WebSnsLoad;->i:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/web/WebSnsLoad;->k:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static d(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->l:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->j:I

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->I2(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->l:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->l:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->i:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\';return ele.value;}else{return 0;}})();"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/mycompany/app/web/WebSnsLoad$8;

    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebSnsLoad$8;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final e(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->r:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/mycompany/app/web/WebSnsLoad;->g:I

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;->a(ILjava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
