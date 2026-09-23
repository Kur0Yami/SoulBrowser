.class Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebVie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
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
    goto/16 :goto_0

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
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget p1, Lcom/mycompany/app/dialog/DialogWebVie2;->q1:I

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
    iput p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->Z0:Z

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p1, "2"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$21;

    .line 48
    .line 49
    invoke-direct {p2, v1, p1}, Lcom/mycompany/app/dialog/DialogWebVie2$21;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string v0, "onTransList"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 65
    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->n1:Ljava/lang/String;

    .line 77
    .line 78
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebVie2$23;

    .line 79
    .line 80
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogWebVie2$23;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    const-string v0, "onTransClass"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_a

    .line 94
    .line 95
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 96
    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const-string p1, "0"

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const-string v0, "-"

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->c1:Ljava/lang/String;

    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->c1:Ljava/lang/String;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_8
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->c1:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_9
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->o1:Ljava/lang/String;

    .line 132
    .line 133
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebVie2$24;

    .line 134
    .line 135
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogWebVie2$24;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    :cond_a
    :goto_0
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v2, 0x3

    .line 10
    iput v2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

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
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->Z0:Z

    .line 18
    .line 19
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

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
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

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
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface$1;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
