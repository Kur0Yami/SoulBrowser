.class Lcom/mycompany/app/main/image/MainImagePreview$66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$66;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$66;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$66;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "mOcrLang"

    .line 15
    .line 16
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTransOcrCtrl;->g()V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-boolean p2, Lcom/mycompany/app/pref/PrefAlbum;->E:Z

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    sget p2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    if-ne p2, v1, :cond_3

    .line 34
    .line 35
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->a2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->K0()V

    .line 41
    .line 42
    .line 43
    iput-boolean v0, p1, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 44
    .line 45
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fast_down_guide:I

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "\n"

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget v1, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$60;

    .line 82
    .line 83
    invoke-direct {v2, p1}, Lcom/mycompany/app/main/image/MainImagePreview$60;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p1, p2, v0, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p1, Lcom/mycompany/app/main/image/MainImagePreview;->a2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 90
    .line 91
    new-instance p2, Lcom/mycompany/app/main/image/MainImagePreview$61;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Lcom/mycompany/app/main/image/MainImagePreview$61;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    return v0
.end method
