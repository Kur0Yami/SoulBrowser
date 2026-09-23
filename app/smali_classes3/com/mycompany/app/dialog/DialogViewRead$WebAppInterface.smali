.class Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewRead;

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
    const-string v0, "onTransList"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_2
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->I2:Ljava/lang/String;

    .line 34
    .line 35
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewRead$96;

    .line 36
    .line 37
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogViewRead$96;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    const-string v0, "onTransClass"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_8

    .line 51
    .line 52
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_4
    const-string p1, "0"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const-string v0, "-"

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewRead;->g2:Ljava/lang/String;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewRead;->g2:Ljava/lang/String;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->g2:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_7

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->J2:Ljava/lang/String;

    .line 90
    .line 91
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewRead$97;

    .line 92
    .line 93
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogViewRead$97;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_8
    const-string v0, "onTtsMark"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_a

    .line 107
    .line 108
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 109
    .line 110
    if-nez p1, :cond_9

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_9
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$63;

    .line 114
    .line 115
    invoke-direct {v0, v1, p2}, Lcom/mycompany/app/dialog/DialogViewRead$63;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_a
    const-string v0, "onPartPlay"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_c

    .line 129
    .line 130
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->L2:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 133
    .line 134
    if-nez p1, :cond_b

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_b
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$108;

    .line 138
    .line 139
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogViewRead$108;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_c
    const-string v0, "onActionTrans"

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_e

    .line 153
    .line 154
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->M2:Ljava/lang/String;

    .line 155
    .line 156
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 157
    .line 158
    if-nez p1, :cond_d

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_d
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$109;

    .line 162
    .line 163
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogViewRead$109;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    :cond_e
    :goto_0
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iput v1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->c2:I

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v3, 0x3

    .line 11
    iput v3, v2, Lcom/mycompany/app/dialog/DialogViewRead;->c2:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne p2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v0

    .line 18
    :goto_0
    iput-boolean v1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 19
    .line 20
    iput-object p1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->e2:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, ""

    .line 33
    .line 34
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p2, v2, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p2, v2, Lcom/mycompany/app/dialog/DialogViewRead;->f2:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->f2:Ljava/lang/String;

    .line 51
    .line 52
    :cond_3
    :goto_1
    iput-boolean v0, v2, Lcom/mycompany/app/dialog/DialogViewRead;->l2:Z

    .line 53
    .line 54
    iget-object p1, v2, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method
