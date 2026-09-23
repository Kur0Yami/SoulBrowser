.class Lcom/mycompany/app/main/image/MainImagePreview$69;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/ocr/OcrDetector$OcrListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$69;->a:Lcom/mycompany/app/main/image/MainImagePreview;

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
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$69;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

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
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

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
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$69;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p2, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x2

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    if-nez p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p2, p3, v1}, Lcom/mycompany/app/main/image/MainImagePreview;->b1(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_3
    if-ne p1, v1, :cond_6

    .line 27
    .line 28
    sget-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->D:Z

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 33
    .line 34
    const/4 p3, 0x5

    .line 35
    if-eq p1, p3, :cond_5

    .line 36
    .line 37
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImagePreview;->Z1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_4
    invoke-virtual {p2}, Lcom/mycompany/app/main/image/MainImagePreview;->L0()V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p2, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 46
    .line 47
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ocr_fail:I

    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, "\n\n"

    .line 64
    .line 65
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_2:I

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p3, "\n"

    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_3:I

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    new-instance p3, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$58;

    .line 98
    .line 99
    invoke-direct {v0, p2}, Lcom/mycompany/app/main/image/MainImagePreview$58;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p3, p2, p1, v1, v0}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 103
    .line 104
    .line 105
    iput-object p3, p2, Lcom/mycompany/app/main/image/MainImagePreview;->Z1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 106
    .line 107
    new-instance p1, Lcom/mycompany/app/main/image/MainImagePreview$59;

    .line 108
    .line 109
    invoke-direct {p1, p2}, Lcom/mycompany/app/main/image/MainImagePreview$59;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 117
    .line 118
    sget p2, Lnet/kaki87/soul2/testing/R$string;->ocr_fail:I

    .line 119
    .line 120
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_6
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 125
    .line 126
    sget p2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 127
    .line 128
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
