.class Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDcList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->U1:Ljava/util/List;

    .line 25
    .line 26
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogWebView;->V1:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogWebView;->W1:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$2;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$2;-><init>(Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onJsResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const-string v0, "onTransUser"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    sget p1, Lcom/mycompany/app/dialog/DialogWebView;->k2:I

    .line 20
    .line 21
    const-string p1, "1"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->C1:Z

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->E1:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebView;->Q()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p1, "2"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    .line 51
    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView$38;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/mycompany/app/dialog/DialogWebView$38;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebView$40;

    .line 64
    .line 65
    invoke-direct {p2, v1, p1}, Lcom/mycompany/app/dialog/DialogWebView$40;-><init>(Lcom/mycompany/app/dialog/DialogWebView;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const-string v0, "onTransList"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogWebView;->d2:Ljava/lang/String;

    .line 93
    .line 94
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebView$42;

    .line 95
    .line 96
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogWebView$42;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    const-string v0, "onTransClass"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_b

    .line 110
    .line 111
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 112
    .line 113
    if-nez p1, :cond_7

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    const-string p1, "0"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const-string v0, "-"

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebView;->F1:Ljava/lang/String;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_9

    .line 134
    .line 135
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebView;->F1:Ljava/lang/String;

    .line 136
    .line 137
    return-void

    .line 138
    :cond_9
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->F1:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_a

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_a
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogWebView;->e2:Ljava/lang/String;

    .line 148
    .line 149
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebView$43;

    .line 150
    .line 151
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogWebView$43;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    :goto_1
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput v0, v1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v2, 0x3

    .line 10
    iput v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogWebView;->C1:Z

    .line 18
    .line 19
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 20
    .line 21
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, ""

    .line 32
    .line 33
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogWebView;->E1:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebView;->E1:Ljava/lang/String;

    .line 50
    .line 51
    :cond_3
    :goto_1
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$1;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
