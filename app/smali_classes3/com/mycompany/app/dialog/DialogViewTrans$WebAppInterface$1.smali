.class Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogViewTrans;->k1:I

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 13
    .line 14
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->T0:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->P()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->F()V

    .line 25
    .line 26
    .line 27
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->U0:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->U0:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$16;

    .line 52
    .line 53
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogViewTrans$16;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$13;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$13;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 77
    .line 78
    .line 79
    const-string v3, "document.cookie"

    .line 80
    .line 81
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    invoke-static {v1}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_7

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->M3(Landroid/webkit/WebView;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->V0:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_8

    .line 112
    .line 113
    :goto_3
    return-void

    .line 114
    :cond_8
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N7(Landroid/webkit/WebView;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
