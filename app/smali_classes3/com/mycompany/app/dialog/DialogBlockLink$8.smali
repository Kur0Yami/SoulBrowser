.class Lcom/mycompany/app/dialog/DialogBlockLink$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogBlockLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockLink;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$8;->b:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogBlockLink$8;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogBlockLink;->w0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink$8;->b:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink$8;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$8;->b:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 14
    .line 15
    if-ne p1, v0, :cond_3

    .line 16
    .line 17
    sget v0, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    sput-object p1, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefSecret;->t(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 47
    .line 48
    iput p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->p0:I

    .line 49
    .line 50
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->f0:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/mycompany/app/data/book/DataBookLink;->n(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->q0:Z

    .line 63
    .line 64
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/mycompany/app/data/book/DataBookLink;->o(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->r0:Z

    .line 77
    .line 78
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogBlockLink;->B()Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return p2

    .line 88
    :cond_3
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    :cond_4
    :goto_0
    return p2

    .line 93
    :cond_5
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "EXTRA_PASS"

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string v0, "EXTRA_TYPE"

    .line 106
    .line 107
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 111
    .line 112
    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 114
    .line 115
    .line 116
    return p2
.end method
