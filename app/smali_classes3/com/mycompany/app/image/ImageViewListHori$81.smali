.class Lcom/mycompany/app/image/ImageViewListHori$81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/ocr/OcrDetector$OcrListener;


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$81;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewListHori$81;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, v1, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$81;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x2

    .line 17
    if-ne p1, v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    if-nez p1, :cond_3

    .line 21
    .line 22
    invoke-static {v0, p2, p3, v2}, Lcom/mycompany/app/image/ImageViewListHori;->T(Lcom/mycompany/app/image/ImageViewListHori;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_3
    if-ne p1, v2, :cond_7

    .line 27
    .line 28
    sget-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->D:Z

    .line 29
    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 33
    .line 34
    const/4 p2, 0x5

    .line 35
    if-eq p1, p2, :cond_6

    .line 36
    .line 37
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 38
    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->R0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->m0()V

    .line 48
    .line 49
    .line 50
    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->I0:Z

    .line 51
    .line 52
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 60
    .line 61
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ocr_fail:I

    .line 62
    .line 63
    const-string v1, "\n\n"

    .line 64
    .line 65
    invoke-static {p2, p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 69
    .line 70
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_2:I

    .line 71
    .line 72
    const-string v1, "\n"

    .line 73
    .line 74
    invoke-static {p2, p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 78
    .line 79
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_3:I

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 89
    .line 90
    iget-object p3, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v1, Lcom/mycompany/app/image/ImageViewListHori$66;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewListHori$66;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, p3, p1, v2, v1}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, v0, Lcom/mycompany/app/image/ImageViewListHori;->R0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 105
    .line 106
    new-instance p1, Lcom/mycompany/app/image/ImageViewListHori$67;

    .line 107
    .line 108
    invoke-direct {p1, v0}, Lcom/mycompany/app/image/ImageViewListHori$67;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 116
    .line 117
    sget p2, Lnet/kaki87/soul2/testing/R$string;->ocr_fail:I

    .line 118
    .line 119
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 124
    .line 125
    sget p2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 126
    .line 127
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
