.class Lcom/mycompany/app/image/ImageViewListHori$76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$76;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$76;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->A0()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$76;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

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
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

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
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewListHori;->O0:Lcom/mycompany/app/image/ImageTransView;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/mycompany/app/image/ImageTransView;->o()V

    .line 31
    .line 32
    .line 33
    :cond_2
    sget-boolean p2, Lcom/mycompany/app/pref/PrefAlbum;->E:Z

    .line 34
    .line 35
    if-eqz p2, :cond_5

    .line 36
    .line 37
    sget p2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    if-ne p2, v1, :cond_5

    .line 41
    .line 42
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 43
    .line 44
    if-nez p2, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewListHori;->S0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewListHori;->l0()V

    .line 53
    .line 54
    .line 55
    iput-boolean v0, p1, Lcom/mycompany/app/image/ImageViewListHori;->I0:Z

    .line 56
    .line 57
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 65
    .line 66
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fast_down_guide:I

    .line 67
    .line 68
    const-string v3, "\n"

    .line 69
    .line 70
    invoke-static {v1, v2, p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 74
    .line 75
    sget v2, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 85
    .line 86
    iget-object v2, p1, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v3, Lcom/mycompany/app/image/ImageViewListHori$68;

    .line 93
    .line 94
    invoke-direct {v3, p1}, Lcom/mycompany/app/image/ImageViewListHori$68;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, p2, v0, v3}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p1, Lcom/mycompany/app/image/ImageViewListHori;->S0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 101
    .line 102
    new-instance p2, Lcom/mycompany/app/image/ImageViewListHori$69;

    .line 103
    .line 104
    invoke-direct {p2, p1}, Lcom/mycompany/app/image/ImageViewListHori$69;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_0
    return v0
.end method
